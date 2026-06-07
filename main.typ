#import "template.typ": primary-color, secondary-color

#set document(title: "Idea Generation and Product Innovation Lab Record", author: "Murtaza Ahmed")

#set page(
  paper: "a4",
  margin: (left: 3.2cm, right: 2.5cm, top: 2.5cm, bottom: 2.5cm),
  header: context {
    let page-num = counter(page).get().first()
    if page-num > 3 {
      let headings = query(selector(heading.where(level: 1)).before(here()))
      let current-title = if headings.len() > 0 {
        headings.last().body
      } else {
        "Idea Generation & Product Innovation"
      }
      grid(
        columns: (1fr, auto),
        align(left)[#text(8.5pt, fill: primary-color, weight: "bold", font: "Arial")[#current-title]],
        align(right)[#text(8.5pt, fill: gray.darken(35%), font: "Arial")[MCET | Department of Mechanical Engineering]]
      )
      v(-4pt)
      line(length: 100%, stroke: 0.75pt + primary-color)
    }
  },
  footer: context {
    let page-num = counter(page).get().first()
    if page-num > 2 {
      align(center)[#text(9pt, fill: primary-color, weight: "bold", font: "Arial")[#page-num]]
    }
  }
)

#set text(
  font: "Georgia",
  size: 10pt,
  fill: rgb("1f2937"),
  spacing: 120%
)

#show heading: set text(font: "Arial")

#set par(
  justify: true,
  leading: 0.7em,
  spacing: 1.2em
)

// Heading Styles
#show heading.where(level: 1): it => {
  set text(size: 14pt, weight: "bold", fill: primary-color)
  block(width: 100%, below: 1.2em, above: 1.5em)[
    #it
    #v(0.3em)
    #line(length: 100%, stroke: 1.5pt + primary-color)
  ]
}

#show heading.where(level: 2): it => {
  set text(size: 11.5pt, weight: "bold", fill: primary-color.lighten(15%))
  block(width: 100%, below: 0.8em, above: 1.2em)[#it]
}

#show heading.where(level: 3): it => {
  set text(size: 10pt, weight: "semibold", fill: secondary-color)
  block(width: 100%, below: 0.6em, above: 1.0em)[#it]
}

// Table defaults (Clean Booktabs Academic Style)
#show table: set table(
  stroke: (x, y) => {
    if y == 0 {
      (top: 1.5pt + black, bottom: 0.75pt + black)
    } else {
      (bottom: 0.5pt + gray.lighten(20%))
    }
  },
  fill: none
)

// Bullet list spacing
#set list(indent: 10pt, marker: ([#text(fill: primary-color)[•]], [#text(fill: primary-color)[‣]]))

// Equation numbering
#set math.equation(numbering: "(1)")

// Outline customization
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

// Code Block Custom Styling
#show raw.where(block: true): it => {
  block(
    width: 100%,
    stroke: 0.5pt + black,
    inset: (x: 10pt, y: 8pt),
    [
      #set text(font: "Consolas", size: 8.5pt)
      #it
    ]
  )
}

// ==========================================
// COVER PAGE
// ==========================================
#place(top + left, dx: -2.2cm, dy: -1.5cm,
  rect(
    width: 19.0cm,
    height: 27.7cm,
    stroke: 1.5pt + primary-color
  )
)
#place(top + left, dx: -2.0cm, dy: -1.3cm,
  rect(
    width: 18.6cm,
    height: 27.3cm,
    stroke: 0.5pt + primary-color
  )
)

#align(center)[
  #v(0.8cm)
  #text(18pt, weight: "bold", fill: primary-color)[MUFFAKHAM COLLEGE OF ENGINEERING AND TECHNOLOGY] \
  #text(10pt, weight: "bold", fill: secondary-color)[(Affiliated to Osmania University & Approved by AICTE)] \
  #text(11pt, weight: "medium", fill: secondary-color)[DEPARTMENT OF MECHANICAL ENGINEERING] \
  
  #v(2.2cm)
  #rect(
    width: 95%,
    stroke: 1.5pt + primary-color,
    inset: 18pt,
    radius: 4pt,
    fill: primary-color.lighten(95%)
  )[
    #align(center)[
      #text(15pt, weight: "bold", fill: primary-color)[IDEA GENERATION AND PRODUCT INNOVATION\ LABORATORY RECORD] \
      #v(0.5em)
      #text(11pt, weight: "bold", fill: secondary-color)[Course Code: PC453ME]
    ]
  ]
  
  #v(1.2cm)
  #text(13pt, weight: "bold", fill: primary-color)[Project: Helio-Track S1] \
  #text(11pt, style: "italic", fill: secondary-color)[Dual-Axis Solar Tracking System]
  
  #v(2.8cm)
  #block(
    width: 85%,
    stroke: 0.75pt + gray.lighten(40%),
    inset: 15pt,
    radius: 6pt,
    fill: rgb("fafafa")
  )[
    #grid(
      columns: (1fr, 1.2fr),
      column-gutter: 15pt,
      row-gutter: 12pt,
      align: left,
      [*Academic Year:*], [2025 - 2026],
      [*Student Name:*], [Murtaza Ahmed],
      [*Roll Number:*], [1607-24-736-017],
      [*Semester:*], [B.E - IV Semester]
    )
  ]
  
  #v(2.6cm)
  #line(length: 40%, stroke: 1.5pt + primary-color)
  #v(0.4cm)
  #text(9pt, style: "italic", fill: gray.darken(30%))[Submitted in partial fulfillment of the requirements for the degree of Bachelor of Engineering in Mechanical Engineering]
]

// ==========================================
// CERTIFICATE PAGE
// ==========================================
#pagebreak()
#place(top + left, dx: -2.2cm, dy: -1.5cm,
  rect(
    width: 19.0cm,
    height: 27.7cm,
    stroke: 1.5pt + primary-color
  )
)
#place(top + left, dx: -2.0cm, dy: -1.3cm,
  rect(
    width: 18.6cm,
    height: 27.3cm,
    stroke: 0.5pt + primary-color
  )
)

#v(0.5cm)
#align(center)[
  #text(18pt, weight: "bold", fill: primary-color)[DEPARTMENT OF MECHANICAL ENGINEERING] \
  #text(11pt, weight: "bold", fill: secondary-color)[MUFFAKHAM COLLEGE OF ENGINEERING & TECHNOLOGY] \
  #v(1cm)
  #text(15pt, weight: "bold", fill: primary-color)[CERTIFICATE] \
  #v(0.5cm)
  #line(length: 30%, stroke: 1.5pt + primary-color)
]
#v(2.0cm)
#set par(leading: 1.1em, justify: true)
#text(size: 11pt)[
  This is to certify that the laboratory work for the *Idea Generation and Product Innovation Laboratory (PC453ME)* has been successfully completed by *Murtaza Ahmed*, bearing Roll Number *1607-24-736-017* of *B.E – IV Semester of Mechanical Engineering Department*, during the academic year *2025-2026*.
  
  #v(0.8em)
  The student has successfully developed and demonstrated the *Helio-Track S1: Dual-Axis Solar Tracking System* project under the guidance of the faculty members in partial fulfillment of academic requirements.
]

#v(4.5cm)
#grid(
  columns: (1fr, 1fr),
  align(left)[
    #line(length: 65%, stroke: 0.75pt + black)
    #v(0.2em)
    #text(weight: "bold", size: 10pt)[Faculty Signature]
  ],
  align(right)[
    #line(length: 65%, stroke: 0.75pt + black)
    #v(0.2em)
    #text(weight: "bold", size: 10pt)[HOD Signature]
  ]
)

// ==========================================
// TABLE OF CONTENTS (INDEX)
// ==========================================
#pagebreak()
#v(1cm)
#align(center)[
  #text(18pt, weight: "bold", fill: primary-color)[INDEX / TABLE OF CONTENTS]
]
#v(1.5cm)

#outline(title: none, indent: 1.5em, depth: 1)

#pagebreak()

// ==========================================
// DESIGN THINKING INTRODUCTION
// ==========================================
= Introduction to Design Thinking
Design thinking is a human-centered, iterative problem-solving framework. It consists of five core stages: Empathize with users, Define their core problems, Ideate creative solutions, Prototype rough representations, and Test them in the real world. It is a flexible, non-linear approach that embraces continuous learning and refinement.

#v(0.5em)
#align(center)[
  #text(10pt, weight: "bold", fill: primary-color)[
    1. Empathize #sym.arrow.r 2. Define #sym.arrow.r 3. Ideate #sym.arrow.r 4. Prototype #sym.arrow.r 5. Test
  ]
]

#v(1em)

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

// Include week files
#pagebreak(weak: true)
#include "Week01_Intro/week01.typ"
#pagebreak(weak: true)
#include "Week02_Define/week02.typ"
#pagebreak(weak: true)
#include "Week03_Ideation_I/week03.typ"
#pagebreak(weak: true)
#include "Week04_Ideation_II/week04.typ"
#pagebreak(weak: true)
#include "Week05_Prototyping_I/week05.typ"
#pagebreak(weak: true)
#include "Week06_Prototyping_II/week06.typ"
#pagebreak(weak: true)
#include "Week07_Prototyping_III/week07.typ"
#pagebreak(weak: true)
#include "Week08_Testing/week08.typ"
#pagebreak(weak: true)
#include "Week09_Iteration/week09.typ"
#pagebreak(weak: true)
#include "Week10_Validation/week10.typ"
#pagebreak(weak: true)
#include "Week11_Communication/week11.typ"
#pagebreak(weak: true)
#include "Week12_Pitching/week12.typ"
#pagebreak(weak: true)
#include "Week13_Final/week13.typ"

// ==========================================
// REFERENCES
// ==========================================
#pagebreak()
= References & Bibliography


#set list(indent: 15pt)
#text(size: 10pt)[
  1. *IEEE Standard for Solar Tracker Testing (IEEE 1547):* Guidelines on engineering safety, power quality, and mechanical tracking validation parameters.
  2. *Osmania University Laboratory Manual (PC453ME):* Academic guidelines for Idea Generation and Product Innovation Laboratory records.
  3. *Duffie, J. A., & Beckman, W. A. (2013). Solar Engineering of Thermal Processes:* Classic reference on sun-angle equations, solar geometry (Azimuth and Elevation), and solar irradiance calculation.
  4. *Arduino Hardware Documentation:* Specifications for the Arduino Nano board, ATmega328P power metrics, and Servo motor pulse-width modulation (PWM) control interfaces.
  5. *SolidWorks Design Manual:* DFMA practices and tolerance guidelines for FDM 3D printing assemblies and mechanical joints.
  6. *McEvoy, A., Markvart, T., & Castaner, L. (2012). Practical Photovoltaics:* Efficiency calculations and performance characteristics of static vs. tracking solar arrays under varying atmospheric conditions.
]
