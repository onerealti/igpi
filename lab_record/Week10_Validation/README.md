# Week 10: Engineering Validation

## Aim
To perform engineering validation on the dual-axis tracker through motor torque calculations, shaft stress analysis, wind loading simulations, and a Design for Manufacturing and Assembly (DFMA) review.

## Topics Covered
*   Static and Dynamic Torque Calculations
*   Compressive Stress Analysis on 3D-printed materials
*   Fluid Drag (Wind Load) estimation
*   DFMA Checklist and Review

## Theory
Engineering validation ensures that a designed product is structurally sound, safe under loads, fits within the physical limits of selected actuators, and is easy to manufacture and assemble without excessive costs or specialized tooling.

---

## Activity

### 1. Torque Calculations (Elevation Axis)
We calculated the required torque to ensure that the MG995 servo provides sufficient drive force.
*   **Assumptions:**
    *   Panel Mass ($m$): $0.8\text{ kg}$ (including frame and sensor divider)
    *   Distance from pivot to Center of Gravity ($r$): $0.05\text{ m}$ ($5\text{ cm}$)
    *   Acceleration ($g$): $9.81\text{ m/s}^2$
    *   Safety Factor ($SF$): $1.5$

*   **Static Torque ($T_s$):**
    $$T_s = m \times g \times r$$
    $$T_s = 0.8\text{ kg} \times 9.81\text{ m/s}^2 \times 0.05\text{ m} = 0.3924\text{ Nm}$$

*   **Converting to kg-cm:**
    $$0.3924\text{ Nm} \approx 4.0\text{ kg-cm}$$

*   **Applying Safety Factor:**
    $$T_{\text{required}} = 4.0\text{ kg-cm} \times 1.5 = 6.0\text{ kg-cm}$$

*   **Validation:** The MG995 servo provides a stall torque of **$10.0\text{ kg-cm}$** at 4.8V and **$12.0\text{ kg-cm}$** at 6V. Since $10.0\text{ kg-cm} > 6.0\text{ kg-cm}$, the actuator is **sufficient** for the load.

### 2. Stress Analysis on Main Shaft (Azimuth Axis)
The vertical shaft of the main pillar carries the entire weight of the upper assembly.
*   **Assumptions:**
    *   Total Mass ($M$): $1.5\text{ kg}$
    *   Shaft Diameter ($d$): $10\text{ mm}$ ($0.01\text{ m}$)
    *   Cross-sectional Area ($A$): $\pi \times (d/2)^2 = 7.85 \times 10^{-5}\text{ m}^2$

*   **Compressive Stress ($\sigma$):**
    $$\sigma = \frac{F}{A} = \frac{M \times g}{A}$$
    $$\sigma = \frac{1.5\text{ kg} \times 9.81\text{ m/s}^2}{7.85 \times 10^{-5}\text{ m}^2} \approx 0.187\text{ MPa}$$

*   **Validation:** The typical yield strength of 3D-printed PLA is **$30\text{ - }50\text{ MPa}$**. The compressive stress ($0.187\text{ MPa}$) is orders of magnitude below the yield point, confirming that the shaft will not buckle or fail under static vertical loading.

### 3. Dynamic Load (Wind Load)
Assuming a $10\text{ m/s}$ (approx. $22\text{ mph}$) wind blowing perpendicular to a flat panel of area $A = 0.05\text{ m}^2$:
*   **Wind Force Formula:**
    $$F_w = \frac{1}{2} \times \rho \times v^2 \times A \times C_d$$
    *   Air density ($\rho$): $1.225\text{ kg/m}^3$
    *   Wind speed ($v$): $10\text{ m/s}$
    *   Drag coefficient ($C_d$): $1.2$ (flat rectangular plate)
    $$F_w = 0.5 \times 1.225 \times 10^2 \times 0.05 \times 1.2 \approx 7.35\text{ N}$$
*   This wind force adds an additional torque of:
    $$T_w = F_w \times r_w = 7.35\text{ N} \times 0.05\text{ m} \approx 0.3675\text{ Nm} \approx 3.75\text{ kg-cm}$$
*   **Combined Worst-Case Torque:**
    $$T_{\text{total}} = T_s + T_w = 4.0\text{ kg-cm} + 3.75\text{ kg-cm} = 7.75\text{ kg-cm}$$
    Since $7.75\text{ kg-cm} < 10.0\text{ kg-cm}$ (MG995 rating), the motor is validated to work under moderate wind conditions.

### 4. DFMA Review Checklist

| DFMA Guideline | System Implementation | Status |
| :--- | :--- | :---: |
| **Minimize part count** | Combined the LDR sensor divider housing and the panel holder. | **Pass** |
| **Standardize hardware** | Used M3 socket-head screws and nuts exclusively for structural connections. | **Pass** |
| **Self-aligning assembly** | Designed keyways and slots for the servo output shafts and horns to prevent misaligned mounting. | **Pass** |
| **Avoid overhangs in prints** | Added $45^\circ$ chamfers to horizontal overhangs to reduce reliance on temporary support material. | **Pass** |

---

## Deliverables
1.  **Validation Report** containing calculations for torque, stress, and wind load.
2.  **Material Strength Comparison** verifying PLA suitability.
3.  **DFMA Checklist** confirming assembly optimization (detailed above).

## Outcome
Students learn to perform engineering calculations (forces, stress, and moments) to prove their designs are safe and verify manufacturability before production.
