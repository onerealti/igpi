#import "template.typ": primary-color, secondary-color

#set document(title: "Idea Generation and Product Innovation Lab Record", author: "[Your Name]")

#set page(
  paper: "a4",
  margin: (x: 2.5cm, top: 3.0cm, bottom: 2.5cm),
  header: context {
    let page-num = counter(page).get().first()
    if page-num > 2 {
      grid(
        columns: (1fr, 1fr),
        align(left)[#text(8pt, fill: gray.darken(20%), font: "Arial")[Idea Generation & Product Innovation Lab (PC453ME)]],
        align(right)[#text(8pt, fill: gray.darken(20%), font: "Arial")[Mechanical Engineering Dept, MCET]]
      )
      v(-4pt)
      line(length: 100%, stroke: 0.5pt + gray)
    }
  },
  footer: context {
    let page-num = counter(page).get().first()
    if page-num > 1 {
      align(center)[#text(9pt, fill: gray.darken(20%), font: "Arial")[#page-num]]
    }
  }
)

#set text(
  font: "Arial",
  size: 11pt,
  fill: rgb("1f2937"),
  spacing: 120%
)

#set par(
  justify: true,
  leading: 0.7em
)

#show heading: it => {
  set text(fill: primary-color)
  v(1em)
  it
  v(0.5em)
}

// ==========================================
// COVER PAGE
// ==========================================
#align(center)[
  #v(1cm)
  #text(18pt, weight: "bold", fill: primary-color)[MUFFAKHAM COLLEGE OF ENGINEERING AND TECHNOLOGY] \
  #text(12pt, weight: "medium", fill: secondary-color)[(Affiliated to Osmania University)] \
  #text(12pt, weight: "medium", fill: secondary-color)[MECHANICAL ENGINEERING DEPARTMENT] \
  
  #v(2.0cm)
  #text(16pt, weight: "bold", fill: primary-color)[IDEA GENERATION AND PRODUCT INNOVATION LAB RECORD] \
  #text(12pt, weight: "bold", fill: secondary-color)[Course Code: PC453ME] \
  
  #v(2.5cm)
  #grid(
    columns: (auto, auto),
    column-gutter: 20pt,
    row-gutter: 15pt,
    align: left,
    [#text(weight: "bold")[Academic Year:]], [2025 - 2026],
    [#text(weight: "bold")[Student Name:]], [[Your Name]],
    [#text(weight: "bold")[Roll Number:]], [[Your Roll Number]],
    [#text(weight: "bold")[Semester:]], [B.E - IV Semester]
  )
  
  #v(3cm)
  #line(length: 40%, stroke: 1pt + primary-color)
  #v(0.5cm)
  #text(10pt, style: "italic", fill: gray.darken(30%))[Submitted in partial fulfillment of the requirements for B.E Mechanical Engineering]
]

// ==========================================
// CERTIFICATE PAGE
// ==========================================
#pagebreak()
#v(2cm)
#align(center)[
  #text(16pt, weight: "bold", fill: primary-color)[CERTIFICATE]
]
#v(1.5cm)
#text(size: 12pt)[
  This is to certify that the laboratory work for the *Idea Generation and Product Innovation Laboratory (PC453ME)* has been successfully completed by *[Your Name]*, bearing Roll Number *[Your Roll Number]* of *B.E – IV Semester of Mechanical Engineering Department*, during the academic year *2025-2026*.
]

#v(4cm)
#grid(
  columns: (1fr, 1fr),
  align(left)[
    #line(length: 60%, stroke: 0.5pt + black)
    #v(0.2em)
    #text(weight: "bold")[Faculty Signature]
  ],
  align(right)[
    #line(length: 60%, stroke: 0.5pt + black)
    #v(0.2em)
    #text(weight: "bold")[HOD Signature]
  ]
)

// ==========================================
// TABLE OF CONTENTS (INDEX)
// ==========================================
#pagebreak()
#v(1cm)
#align(center)[
  #text(16pt, weight: "bold", fill: primary-color)[INDEX / TABLE OF CONTENTS]
]
#v(1cm)

#outline(title: none, indent: 1.5em)

#pagebreak()

// ==========================================
// DESIGN THINKING INTRODUCTION
// ==========================================
= Introduction to Design Thinking
Design thinking is a human-centered, iterative problem-solving framework. It consists of five core stages: Empathize with users, Define their core problems, Ideate creative solutions, Prototype rough representations, and Test them in the real world. It is a flexible, non-linear approach that embraces continuous learning and refinement.

#v(0.5em)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  align: center,
  block(fill: rgb("e0f2fe"), inset: 8pt, radius: 4pt, width: 100%)[#text(9pt, weight: "bold", fill: rgb("0369a1"))[1. Empathize]],
  block(fill: rgb("fef3c7"), inset: 8pt, radius: 4pt, width: 100%)[#text(9pt, weight: "bold", fill: rgb("b45309"))[2. Define]],
  block(fill: rgb("dcfce7"), inset: 8pt, radius: 4pt, width: 100%)[#text(9pt, weight: "bold", fill: rgb("15803d"))[3. Ideate]],
  block(fill: rgb("f3e8ff"), inset: 8pt, radius: 4pt, width: 100%)[#text(9pt, weight: "bold", fill: rgb("6b21a8"))[4. Prototype]],
  block(fill: rgb("fee2e2"), inset: 8pt, radius: 4pt, width: 100%)[#text(9pt, weight: "bold", fill: rgb("991b1b"))[5. Test]]
)

#v(1em)

#block(fill: rgb("f8fafc"), stroke: 0.5pt + gray, inset: 10pt, radius: 4pt)[
  *1. Empathize:* Understand the people one is designing for by setting aside assumptions.
  - _Goal:_ Discover genuine human needs, frustrations, and motivations.
  - _Actions:_ Conduct user interviews, observe behaviors in their natural environment.
  
  *2. Define:* Synthesize research to establish a core problem statement.
  - _Goal:_ Frame the problem in a human-centric way, keeping user needs at the center.
  - _Actions:_ Create user personas, craft "How Might We" (HMW) statements.
  
  *3. Ideate:* Challenge assumptions and explore wide possibilities.
  - _Goal:_ Generate diverse, creative solutions before narrowing down.
  - _Actions:_ Run brainstorming sessions, mind mapping, and SCAMPER.
  
  *4. Prototype:* Turn best ideas into tangible, low-cost representations.
  - _Goal:_ Build to think. Prototypes expose flaws early.
  - _Actions:_ Create cardboard models, storyboards, CAD models, and assemblies.
  
  *5. Test:* Put prototypes in front of real users to evaluate.
  - _Goal:_ Validate solutions, gather actionable feedback, and iterate.
  - _Actions:_ Conduct usability tests, performance tests, and failure mode analysis.
]

// Include week files
#include "lab_record/Week01_Intro/week01.typ"
#include "lab_record/Week02_Define/week02.typ"
#include "lab_record/Week03_Ideation_I/week03.typ"
#include "lab_record/Week04_Ideation_II/week04.typ"
#include "lab_record/Week05_Prototyping_I/week05.typ"
#include "lab_record/Week06_Prototyping_II/week06.typ"
#include "lab_record/Week07_Prototyping_III/week07.typ"
#include "lab_record/Week08_Testing/week08.typ"
#include "lab_record/Week09_Iteration/week09.typ"
#include "lab_record/Week10_Validation/week10.typ"
#include "lab_record/Week11_Communication/week11.typ"
#include "lab_record/Week12_Pitching/week12.typ"
#include "lab_record/Week13_Final/week13.typ"
