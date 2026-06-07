# Week 04: Ideation Techniques II – Concept Selection & Sketches

## Aim
To systematically evaluate, compare, and select the optimal mechanical configuration for the dual-axis solar tracking system.

## Topics Covered
*   Idea Evaluation
*   Concept Selection Criteria
*   Feasibility vs. Innovation Matrix
*   Concept Sketching and Refinement

## Theory
Engineering solutions must balance innovation, manufacturability, cost, and usability. A structured concept evaluation matrix helps remove bias by scoring options against weighted design criteria.

---

## Activity

### 1. Concept Selection Matrix
We evaluated three primary mechanical configurations against our core design requirements:
*   **Design 1: Direct Servo (Pillar)** — Servos directly drive the azimuth and elevation axes.
*   **Design 2: Gear-Reduced (U-Frame)** — Uses a gear train to increase torque and stability.
*   **Design 3: Linear Actuators** — Uses motor-driven lead screws to tilt the panel.

| Criteria (Weight 1-5) | Design 1: Direct Servo (Pillar) | Design 2: Gear-Reduced (U-Frame) | Design 3: Linear Actuators |
| :--- | :---: | :---: | :---: |
| **Stability (4)** | 3 | 5 | 4 |
| **Cost (3)** | 5 | 3 | 2 |
| **Ease of Build (3)** | 5 | 2 | 3 |
| **Tracking Range (2)** | 4 | 5 | 2 |
| **Maintenance (2)** | 4 | 3 | 2 |
| **TOTAL SCORE** | **61** | **57** | **43** |

*Note: Score = $\sum (\text{Criteria Weight} \times \text{Design Rating 1-5})$*

### 2. Feasibility vs. Innovation Matrix Plotting
We plotted our ideas to select the optimal design:
*   **High Feasibility / High Innovation (Selected):** Design 1 (Direct Servo Pillar with smart software hysteresis). Highly printable, affordable, and meets tracking demands.
*   **Low Feasibility / High Innovation:** Design 3 (Linear Actuators). Too complex, expensive, and heavy for a 10W-20W scale project.
*   **High Feasibility / Low Innovation:** Standard fixed brackets or simple single-axis mounts.

### 3. Selected Concept: Design 1 – Direct Servo Pillar
*   **Description:** The selected design utilizes a central vertical pillar for Azimuth rotation, with an MG995 high-torque servo mounted at the base. The top of the pillar houses the Elevation servo, which directly pivots the solar panel mounting plate.
*   **Justification:**
    1.  **Simplicity:** Fewer moving parts reduce mechanical wear and failure points.
    2.  **Compactness:** The vertical footprint is ideal for modular assembly and small rooftops.
    3.  **Cost:** Avoids custom metal gearing or expensive linear cylinders, keeping the budget under $50.
    4.  **Performance:** For our target 10W-20W panel, the MG995 high-torque servo (10kg-cm) provides sufficient torque without gear reduction.

### 4. Final Design Refinements
*   **Thrust Bearing:** Added a physical thrust bearing at the pillar base to distribute the axial load, protecting the Azimuth servo from direct vertical weight.
*   **Cable Management:** Integrated an internal routing channel through the main pillar to prevent wire fatigue and twisting during rotation.

---

## Deliverables
1.  **Concept Evaluation Matrix** (scored above).
2.  **Feasibility vs. Innovation Analysis**.
3.  **Selected Concept Outline & Refinement Notes**.

## Outcome
Students learn systematic evaluation methods, using weighted matrices and feasibility plots to make objective engineering decisions.
