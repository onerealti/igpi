#import "../../template.typ": section, sub-section

= Week 12: Pitching and Final Preparation

#section("Aim")[
  To prepare and polish the slide deck presentation and run mock demonstrations under simulated examiner environments to gather feedback from industry mentors.
]

#section("Topics Covered")[
  - Slide Presentation Deck Design
  - Mock Presentation and Q&A Prep
  - Live Prototype Calibration
  - Feed-forward Refinements
]

#section("Theory")[
  Presenting a technical solution to a panel of experts requires concise slides, a clear explanation of design tradeoffs, and a defense of engineering choices (such as material selection or software logic).
]

#section("Activity")[
  === 1. Slide Presentation Deck Outline
  We developed a 10-slide technical presentation deck:
  1. *Title Slide:* Helio-Track S1 project title, team members, and affiliation.
  2. *The Problem:* Data highlighting efficiency loss in fixed systems and user interview findings.
  3. *Project Requirements:* Target specifications (accuracy, cost, and power limits).
  4. *Concept Selection:* The evaluation matrix showing why we selected the Direct Servo Pillar.
  5. *CAD & Tolerancing:* Exploded assembly model and 3D print clearances.
  6. *Fabrication:* Materials (PLA/PETG) and physical assembly details.
  7. *Testing Results:* Comparative charts of power generation showing a 32% net efficiency boost.
  8. *Iterations & Redesign:* Mechanical pivots and software hysteresis algorithms.
  9. *Engineering Validation:* Motor torque calculations and PLA stress validation.
  10. *Summary & Cost:* Final bill of materials (\$43.50 total cost) and project reflections.

  === 2. Mock Presentation Q&A Defense
  We anticipated examiner questions and drafted engineering answers:
  - *Question:* "Why did you use PETG for the solar panel holder instead of PLA?"
    - *Answer:* "PETG has a higher glass transition temperature ($80^o\text{C}$) than PLA ($60^o\text{C}$). Since solar panels absorb heat and can get very hot, using PETG prevents the structural holder from softening or warping under hot sunlight."
  - *Question:* "How did you verify the thrust bearing works?"
    - *Answer:* "We measured the current draw of the Azimuth servo. Without the thrust bearing, the servo drew 350mA during slow panning due to friction. With the bearing, current draw dropped to 210mA, confirming less load on the servo."

  === 3. Calibration Test
  We calibrated the system using an LED spotlight. Adjusting LDR bias values in the Arduino code ensured the panel tracked the moving light source smoothly without overshooting or hunting.
]

#section("Deliverables")[
  - Slide presentation deck outline.
  - Mock presentation feedback log.
  - Q&A technical defense sheet.
]

#section("Outcome")[
  Students learn how to prepare technical presentations, receive design feedback, and defend engineering decisions under questioning.
]
