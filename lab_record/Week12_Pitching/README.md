# Week 12: Pitching and Final Preparation

## Aim
To polish the slide deck presentation, run mock demonstrations under simulated examiner environments, and compile feedback from industry mentors to prepare for the final evaluation.

## Topics Covered
*   Technical Presentation and Slide Deck Design
*   Mock Q&A Defense Strategies
*   Live Prototype Calibration (Flashlight Tests)
*   Incorporating Expert Feedback

---

## Activity

### 1. Slide Presentation Deck Structure
We developed a 10-slide technical presentation deck:
1.  **Slide 1: Title Slide** — Helio-Track S1 project title, team members, and affiliation.
2.  **Slide 2: The Problem** — Data highlighting efficiency loss in fixed systems and user interview findings.
3.  **Slide 3: Project Requirements** — Target specifications (accuracy, cost, and power limits).
4.  **Slide 4: Concept Selection** — The evaluation matrix showing why we selected the Direct Servo Pillar.
5.  **Slide 5: CAD & Tolerancing** — Exploded assembly model and 3D print clearances.
6.  **Slide 6: Fabrication** — Materials (PLA/PETG) and physical assembly details.
7.  **Slide 7: Testing Results** — Comparative charts of power generation showing a 32% net efficiency boost.
8.  **Slide 8: Iterations & Redesign** — Mechanical pivots and software hysteresis algorithms.
9.  **Slide 9: Engineering Validation** — Motor torque calculations and PLA stress validation.
10. **Slide 10: Summary & Cost** — Final bill of materials ($43.50 total cost) and project reflections.

### 2. Mentor Feedback Log
During a mock pitch session with department instructors, we gathered the following recommendations:
*   *Mentor Comment:* "How does the system react if there is a sudden shadow, like a tree branch or a cloud, and then sun returns? Will it spin in circles?"
    *   *Our Response:* We modified the code in Week 09 to restrict movement bounds between 0° and 180° for both axes, preventing infinite spinning and cable tearing.
*   *Mentor Comment:* "Are your LDRs protected from rain? Solar trackers operate outdoors."
    *   *Our Response:* We added a note about a protective transparent acrylic dome enclosure as a future product addition.

### 3. Q&A Preparation & Technical Defense
We prepared answers for anticipated examiner questions during the upcoming viva:
*   *Question:* "Why did you use PETG for the solar panel holder instead of PLA?"
    *   *Answer:* "PETG has a higher glass transition temperature ($80^\circ\text{C}$) than PLA ($60^\circ\text{C}$). Since solar panels absorb heat and can get very hot, using PETG prevents the structural holder from softening or warping under hot sunlight."
*   *Question:* "How did you verify the thrust bearing works?"
    *   *Answer:* "We measured the current draw of the Azimuth servo. Without the thrust bearing, the servo drew 350mA during slow panning due to friction. With the bearing, current draw dropped to 210mA, confirming less load on the servo."

---

## Deliverables
1.  **Slide Deck Outline** (detailed above).
2.  **Mentor Feedback and Correction Log**.
3.  **Q&A Technical Defense Sheet**.

## Outcome
Students learn to receive design feedback, prepare structured presentations, and defend engineering decisions under questioning.
