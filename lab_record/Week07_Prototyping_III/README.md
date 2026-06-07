# Week 07: Prototyping III – 3D Printing & Fabrication

## Aim
To fabricate and assemble the physical parts of the dual-axis solar tracking system, verifying print tolerances, mechanism fits, and electronics routing.

## Topics Covered
*   3D Printing (Slicing, Infill, Layer Heights, Temperature Controls)
*   Tolerance Verification and Material Shrinkage
*   Mechanical Assembly Fit (Press-Fits and Bolt Clearance)
*   Microcontroller and Actuator Integration

---

## Activity

### 1. 3D Printing Settings
We sliced the CAD models and printed them on an Ender 3 V2. We adjusted the settings to maximize structural strength for outdoor loads:
*   **Layer Height:** 0.2mm (balanced print time and details).
*   **Infill Density:** 40% (Tri-Hexagonal pattern for structural and torsional rigidity).
*   **Wall Line Count:** 4 (thick walls are essential for holding threaded M3 screws).
*   **Nozzle Temperature:** 210°C for PLA (Base, Pillar) / 240°C for PETG (Panel Holder).
*   **Bed Temperature:** 60°C for PLA / 80°C for PETG (prevents warping).
*   **Supports:** Enabled (Tree supports used for the vertical overhangs of the Pillar).

### 2. Fabrication & Assembly Log

| Date | Task / Component | Observations, Problems, and Solutions |
| :--- | :--- | :--- |
| **Oct 10** | Print Base Plate & Pillar | The pillar base warped slightly due to bed draft. *Fix:* Recalibrated bed leveling and added a brim. |
| **Oct 12** | Print Panel Holder (PETG) | High stringing observed with PETG. *Fix:* Adjusted extruder retraction speed to 45mm/s and distance to 6mm. |
| **Oct 14** | Circuit Assembly | Tested the LDR divider circuits on a breadboard. Light values were reading correctly in serial monitor. |
| **Oct 15** | Mechanical Assembly | The MG995 servo housing was too tight for the pillar bracket. *Fix:* Sanded down the printed cavity walls by 0.1mm. |

### 3. Step-by-Step Assembly Procedure
1.  **Base Integration:** Press-fit the Azimuth motor (MG995) into the bottom of the Base Plate. Secure it using standard self-tapping M3 screws.
2.  **Thrust Bearing:** Place a flat thrust ball bearing over the servo shaft. This bears the weight of the upper pillar, protecting the motor's internal gears.
3.  **Pillar Mounting:** Mount the Main Pillar onto the Azimuth servo horn, aligning the splines, and screw the central horn locking screw in place.
4.  **Elevation Servo:** Fit the Elevation servo into the top bracket of the Pillar. Route its power and signal lines down through the internal cable management column.
5.  **Panel Attachment:** Screw the PETG Panel Holder onto the Elevation servo output horn.
6.  **Sensor Installation:** Clip the LDR cross-divider module onto the top edge of the Panel Holder, pointing forward.
7.  **Electronics Integration:** Route all LDR wires and servo cables into the base control box, connect them to the Arduino, and close the lid.

---

## Deliverables
1.  **3D Printing G-code Files** and setup parameters.
2.  **Fabrication Log Table** documenting print and fit problems.
3.  **Assembled Solar Tracker Prototype** ready for firmware testing.

## Outcome
Students learn the practical realities of additive manufacturing, including material-specific settings (PLA vs. PETG), post-processing (sanding for press-fits), and routing wiring through moving mechanical structures.
