# Week 09: Iteration & Redesign

## Aim
To implement modifications and redesigns in software, electrical, and mechanical domains based on the failure points identified during testing.

## Topics Covered
*   Design Feedback Reflection
*   Mechanical Geometry Reinforcement
*   Electrical Noise Suppression
*   Software Optimization and Hysteresis
*   Iterative Prototype Updates

---

## Activity

### 1. Prototype Iteration & Redesign Implementation

#### A. Software Hysteresis (Code-Level)
*   *Issue:* The tracker suffered from "hunting" behavior, constantly adjusting back and forth in response to small noise fluctuations in LDR readings.
*   *Redesign:* We updated the control code to use a **hysteresis window**:
    *   Instead of moving when `diff > threshold`, the code now triggers movement only when `diff > threshold + margin`.
    *   Added a non-blocking `millis()` timer that polls LDR values and moves the servos only once every 10 seconds. This stops the motors from reacting to brief shadows, like a passing bird.

#### B. Reinforced Pivot Mount (Mechanical)
*   *Issue:* The V1 Elevation mount suffered from plastic stress whitening and deflected under load because it was held up by a single cantilever pin on one side.
*   *Redesign:* Redesigned the top of the pillar to use a **double-shear pivot mount** that supports the panel holder from both sides.
*   *Result:* Reduced vertical deflection by 70%, preventing gear binding in wind.

#### C. Power Decoupling (Electrical)
*   *Issue:* The Arduino reset itself occasionally when both servos started moving at the same time, due to current surges dropping the rail voltage.
*   *Redesign:* Soldered a **1000µF electrolytic capacitor** directly across the 5V and GND power rails near the microcontrollers.
*   *Result:* The capacitor filters out power rail voltage drops, ensuring stable Arduino operation under motor start loads.

#### D. Sensor Shrouding (Optical)
*   *Issue:* Side reflections from the ground and buildings confused the LDR sensors, making them point away from the sun.
*   *Redesign:* Added **10mm cylindrical enclosures (shrouds)** over each of the four LDR sensors.
*   *Result:* Shrouds restrict the LDRs to a narrower field of view, greatly increasing directional sensitivity to the direct sun.

---

## Deliverables
1.  **Revised Source Code snippet** showing the hysteresis threshold logic.
2.  **Updated CAD Part Models** showing the double-shear elevation joint.
3.  **V2 Prototype Assembly** reflecting mechanical, electrical, and optical updates.

## Outcome
Students learn the process of engineering iteration, understanding how to resolve physical and software defects by revising CAD models, updating circuit layouts, and optimizing firmware.
