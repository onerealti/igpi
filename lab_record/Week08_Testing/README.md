# Week 08: Testing Phase – Usability & Performance Testing

## Aim
To evaluate the tracking precision, power consumption, sensitivity, and structural durability of the dual-axis solar tracking prototype under test conditions, and analyze failure points.

## Topics Covered
*   Usability and Performance Testing
*   Testing Metrics and Procedures
*   Data Logs (Voltage, Current, Angular Error)
*   Failure Modes and Effects Analysis (FMEA)

---

## Activity

### 1. Performance Testing
We subjected the physical prototype to three distinct tests:

#### A. Sensitivity Test
*   **Objective:** Find the minimum light differential needed between LDRs to trigger servo movement.
*   **Method:** Set up a variable LUX halogen lamp at 15° offsets.
*   **Result:** The code successfully detected light differences and triggered at an analog differential value of >15. Under cloudy/overcast conditions, this threshold caused motor "hunting" (jitter). Increasing the threshold to 20 improved stability.

#### B. Precision Test
*   **Objective:** Measure alignment errors between the solar panel's normal vector and the sun's location.
*   **Method:** Measured the shadow cast by a peg mounted perpendicular to the panel face.
*   **Result:** Measured an average offset of $\pm 3.5$ degrees. Shading from passing clouds caused the largest errors (up to 8 degrees) during transition periods.

#### C. Power Consumption Test
*   **Objective:** Verify that the energy consumed by the controller and servos does not exceed the extra energy generated.
*   **Measurements:**
    *   **Standby/Idle (No motor movement):** 45mA @ 5V (0.225W).
    *   **Active (Both servos moving):** 450mA @ 5V (2.25W).
    *   **Net Efficiency Gain:** Tested on a 20W solar panel. The tracker boosted daily generation by 32% (an average gain of 6.4W), while average motor power consumption was under 0.5W. **Net energy gain is positive.**

### 2. Failure Analysis
We compiled a Failure Mode and Effects Analysis (FMEA) table based on testing:

| Failure Mode | Root Cause | Impact | Mitigation Strategy |
| :--- | :--- | :--- | :--- |
| **Servo Jitter (Hunting)** | High sensor sensitivity + electrical noise in LDRs. | High motor gear wear; increases standby power. | Implement software hysteresis and value averaging in code. |
| **Structural Flexing** | The panel mounting plate was too thin (2mm). | The panel vibrated and deflected in 10mph wind. | Increase plate thickness to 4mm and add reinforcing ribs. |
| **Wire Wear / Fatigue** | Cables twisted around the central pillar during panning. | Potential short-circuits or broken connections. | Program software limits (180° max) and add a swivel slot. |
| **Thermal Shutdown** | Elevation servo got hot under continuous weight loads. | Servo driver shut down; tracking stopped. | Add an adjustable mechanical counterweight to balance the panel. |

---

## Deliverables
1.  **Testing Report** with Sensitivity, Precision, and Power logs.
2.  **User Feedback Notes** on system setup.
3.  **Failure Analysis Chart** (detailed above).

## Outcome
Students learn how to execute structured engineering tests, collect quantitative data (amperage, angles), and apply failure analysis (FMEA) to identify weak spots in a design.
