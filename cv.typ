#import "typ-templates/resume.template.typ": *

#let email = "daichi.suwa@utexas.edu"
#show: resume.with(
  author: "Daichi Suwa",
  contacts: (
    [+1 (512) 920 -- 8238],
    [#email],
  ),
  // footer: [#align(center)[#emph[References available on request]]]
)

= Education

#edu(
  institution: "University of Texas at Austin",
  date: "May 2026",
  location: "Austin, TX",
  degrees: (
    ("Honors Program", "Dean's Scholar"),
    ("Bachelor of Science", "Physics"),
    ("Focus", "Theoretical Physics, Condensed Matter Theory")
  ),
  gpa: [3.62; Upper Division GPA: 3.65]
)

#edu(
  institution: "Mountain View High School",
  date: "May 2022",
  location: "Mountain View, CA",
)

= Research Interests
Theory of correlated electronic phases and the emergent phenomena in thin-films. Application of computational methods and theoretical tools (e.g. QFT) in condensed matter physics.

= Research Experience
#exp(
  role: "Condensed Matter Theory",
  project: "Allan H. MacDonald's Group",
  date: "July 2024 - present",
  location: "Austin, TX",
  summary: "Theory of Thin-Film materials (Graphene) and Computational Approach",
  details: [
    - Individual study on theoretical/computational physics; constructions of physical models of materials and computational solvers.
    - Implemented the Hartree-Fock self-consistent field solvers from scratch in Julia-lang, and applied on:
      - Tight-binding model of monolayer Graphene
      - Continuum model of Rhombohedral Multilayer Graphene
    - Studied converged states for each isospin-polarization (spin and valley); mapped energetically stable phases under different parameters (carrier density, interlayer bias, etc.)
  ]
)

#exp(
  role: "Magnetic Matter Experiment",
  project: "Freshman Research Initiative",
  date: "Jan 2023 - Nov 2023",
  location: "Austin, TX",
  summary: "Perovskite sample synthesis, e-beam deposition",
  details: [
    - Synthesizing perovskite material (RNiO3) for finding doping rate that will make the sample superconductive.
    - E-beam deposition, a technique used to create thin film crystals on substrates by beaming into a target material in a vacuum chamber where pressure and temperature is controlled.
  ]
//    - Assisted in designing physics course structure and assignments in English, Spanish and German
//    - Designed confidential rocket designs used in NASA Space Race initiatives and the Apollo Program
//    - Developed and executed university DEI initiatives and onboarding programs for transfer professors
//  ]
)
= Works in Progress
#grid(
  columns: (auto, 1fr),
  [
    #strong[Microscopic Theory of Vortex Cores in Graphene Superconductors]\
    Univeristy of Texas at Austin | #emph[Advisor: Prof. Allan H. MacDonald]
    
  ],
  align(right, emph[Expected submission\ Spring 2026])
)
- Investigating the competition between fully gapped chiral ($p+i p$) and nodal ($p_x$, $p_y$) states in p-wave graphene superconductors.
- Analyzing how the lack of simple time-reversal invariance in the band structure lifts the degeneracy between $p+i p$ and $p-i p$ channels, potentially favoring a chiral state despite experimental suggestions of nodes.
- Developing a continuum model to calculate the energetic stability of vortex core structures under effective attractive interactions.

#v(2em)
= Skills
#strong[Languages:] English | Japanese\

#strong[Programming Languages:] #h(0.5em) Rust-lang | Julia-lang | Python | LEAN4 | Typescript/Javascript | C/C++\

#strong[Technologies:]
GPGPU | CUDA.jl | WGPU | OS-dev | WASM | Binary Parser | Tauri | Linux\

#strong[Computational Methods:] 
#grid(
  columns: (1em, 1fr, 1fr),
  [],
  [
    Markov Chain Monte Carlo method \
    Hartree-Fock self-consistent field method
  ],
  [
    FFT Convolution\
    DIIS (Direct Inversion in Iterative Subspace) method
  ]
)
// = Relevant Coursework / Reading Program
// #grid(
//   columns: (1em, 1fr, 1fr),
//   [],
//   [
//     Linear Algebra (Math Major Exclusive) \
//     Quantum Mechanics I & II\
//     Quant Mech III: Intro to QFT / Standard Model\
    
//   ],
//   [
//     QFT for Condensed Matter Physics\
    
//   ]
// )
= Awards and Honors

#let award(
  name: "",
  org: "",
  date: "",
  location: "",
  summary: "",
  details: []
) = {
  pad(
    bottom: 10%,
    grid(
      columns: (auto, 1fr),
      align(left)[
        #strong[#name] | #org
        #{
          if summary != "" [
            \ #emph[#summary]
          ]
        }
      ],
      align(right)[
        #emph[#date]
        #{
          if location != "" [
            \ #emph[#location]
          ]
        }
      ]
    )
  )
  details
}
#award(
  name: [Walter E. Millet Endowed Scholarship in Physics],
  org: [University of Texas at Austin],
  date: [Sept 2025]
)
#award(
  name: [Melvin J. Rieger Scholarship Fund in Physics],
  org: [University of Texas at Austin],
  date: [Sept 2024 #linebreak() Sept 2023]
)
#award(
  name: [Qiskit Fall Fest 2022 3rd Prize],
  org: [UT Quantum Collective],
  date: [Oct 2022]
)
#award(
  name: [Dean's Scholars Honors Program],
  org: [University of Texas at Austin],
  date: [June 2022]
)

= Employment
// #strong[Intern, Quantum Applications Research] \
// QunaSys Inc. Tokyo, Japan
#grid(
  columns: (auto, 1fr),
  align(left)[
    #strong[Intern (Incoming), Quantum Computing Applications Research]\
    #emph[QunaSys Inc. Tokyo, Japan (Remote)]\
  ],
  align(right,emph[Jan 2026 - Mar 2026])
)
- Selected for a competitive internship program focused on exploring industrial applications of quantum computing.
- Research on corporate use cases, applying academic knowledge to real-world industry challenges.
- Scheduled to collaborate with client companies to design discussion frameworks and identify areas where quantum algorithms can provide advantage.
     
    

  
= Community Engagement
        

#grid(
  columns: (auto, 1fr),
  [
    #strong[Austin Parkour Community, Member] | Austin, TX
  ],
  [#align(right, emph[Oct 2023 - Present])]
)
#grid(
  columns: (auto, 1fr),
  [
    #strong[Society of Physics Student, Member] | #emph[University of Texas at Austin]
  ],
  [#align(right, emph[Aug 2022 - Present])]
)

= Personal Projects

#exp(
  role: [Fundamental Particle Field Simulation],
  project: "GPU simulation, Lattice-QED",
  date: "May 2025 - present",
  summary: "",
  details: [
    - Simulating the particle fields by using the time-evolution equations extracted from Euler-Lagrange equations of fields.
    - An attempt to extend and apply my understanding from the Intro to Standard Model undergraduate course.
  ]
)
#exp(
  role: [Digital Guitar Effector w/ FFT],
  project: "Embedded system, Rust-lang",
  date: "Jan 2025 - present",
  summary: "Expanding the boundaries of real-time sound modification for guitar",
  details: [
    - Developing a highly customizable digital guitar signal effector, while most electric guitar effectors utilize analog circuits to modify the guitar signals.
    - Aims to expand the boundaries of real-time sound modification e.g. allowing a guitar to output violin sounds.
    - Utilized embedded system technologies: RP2040, Raspberry Pi Pico, Rust-lang, Embassy-rs, ADC, FFT, I2S, etc.
  ]
)
#h(1em)
#exp(
  role: [Rust-lang Hot Module Replacement PoC],
  project: "Low-layer hack",
  date: [Jun 2023  - Mar 2025],
  summary: "Proving the possibility of Hot Module Replacement development in Rust-lang",
  details: [
    - Implemented the fundamental framework that offers Hot Module Replacement (HMR) functionality in compilation-time-expensive language (Rust-lang).
      - Implementation of HMR in compiling language involves high number of low-layer hacks.
    - Implementation of HMR result in drastic decrease of resource/time consumption in modern tech development routine.
  ]
)