const docButtons = document.querySelectorAll('[data-doc]');
const docFrame = document.getElementById('docFrame');
const docNavLinks = document.querySelectorAll('[data-doc-link]');
const docSources = {
    resume: 'https://docs.google.com/viewer?url=https://momijiichigo.github.io/rhetoric-class-project-portfolio/resume.pdf&embedded=true',
    cv: 'https://docs.google.com/viewer?url=https://momijiichigo.github.io/rhetoric-class-project-portfolio/CV.pdf&embedded=true',
    cover: 'https://docs.google.com/viewer?url=https://momijiichigo.github.io/rhetoric-class-project-portfolio/cover_letter.pdf&embedded=true',
    sop: 'https://docs.google.com/viewer?url=https://momijiichigo.github.io/rhetoric-class-project-portfolio/sop.pdf&embedded=true',
    research: 'https://docs.google.com/viewer?url=https://momijiichigo.github.io/rhetoric-class-project-portfolio/CV.pdf&embedded=true',
    references: 'https://docs.google.com/viewer?url=https://momijiichigo.github.io/rhetoric-class-project-portfolio/references.pdf&embedded=true',
};

docButtons.forEach((button) => {
    button.addEventListener('click', () => {
        docButtons.forEach((btn) => btn.classList.remove('active'));
        button.classList.add('active');
        const key = button.dataset.doc;
        docFrame.src = docSources[key];
    });
});

docNavLinks.forEach((link) => {
    link.addEventListener('click', (event) => {
        event.preventDefault();
        const targetDoc = link.dataset.docLink;
        if (targetDoc === 'research' || targetDoc === 'references') {
            document.getElementById('experience').scrollIntoView({ behavior: 'smooth' });
            return;
        }
        const targetButton = document.querySelector(`[data-doc="${targetDoc}"]`);
        if (targetButton) {
            targetButton.click();
        }
        document.getElementById('documents').scrollIntoView({ behavior: 'smooth' });
    });
});

const chartCanvas = document.getElementById('methodsChart');
const bars = [
    { label: 'Hartree-Fock SCF', value: 92, color: '#66f7f1' },
    { label: 'DIIS Acceleration', value: 86, color: '#f4ac45' },
    { label: 'MCMC Sampling', value: 78, color: '#7c6bff' },
    { label: 'FFT Pipelines', value: 84, color: '#8efdaa' },
];

function drawChart() {
    if (!chartCanvas || !chartCanvas.getContext) return;
    const rect = chartCanvas.getBoundingClientRect();
    const dpr = window.devicePixelRatio || 1;
    chartCanvas.width = rect.width * dpr;
    chartCanvas.height = 220 * dpr;
    const ctx = chartCanvas.getContext('2d');
    ctx.scale(dpr, dpr);
    const width = rect.width;
    const padding = 30;
    const barHeight = 24;
    const gap = 18;
    ctx.clearRect(0, 0, width, 220);
    ctx.font = '14px "Space Grotesk"';
    ctx.fillStyle = 'rgba(255,255,255,0.6)';

    bars.forEach((bar, index) => {
        const y = padding + index * (barHeight + gap);
        ctx.fillStyle = 'rgba(255,255,255,0.1)';
        ctx.fillRect(padding, y, width - padding * 2, barHeight);
        ctx.fillStyle = bar.color;
        ctx.fillRect(padding, y, (bar.value / 100) * (width - padding * 2), barHeight);
        ctx.fillStyle = '#f4f7fb';
        ctx.fillText(`${bar.label} — ${bar.value}%`, padding, y - 6);
    });
}

drawChart();
window.addEventListener('resize', drawChart);

document.getElementById('year').textContent = new Date().getFullYear();
