# Week 06: Prototyping II – CAD Modeling

## Aim
To design the physical components of the dual-axis solar tracking system and build a digital assembly using 3D CAD modeling software.

## Software Used
*   SolidWorks (alternatively Autodesk Fusion 360)

## Topics Covered
*   2D Parametric Sketching and Constraints
*   Solid Features: Extrude, Revolve, and Cut
*   3D Component Assemblies
*   Joint Limits and Motion Constraints

---

## Activity

### 1. CAD Modeling Strategy
We implemented a **bottom-up assembly approach** to ensure all parts fit together properly and are optimized for 3D printing (maximum footprint: 220x220mm):
1.  **Master Layout Sketch:** Outlined the primary dimensions, axis of rotation, and maximum tilt clearance (0° to 90° elevation) to prevent collisions.
2.  **Component Isolation:** Modeled parts separately to allow for different materials (e.g., PLA for strength, PETG for heat resistance) and simple part replacement.
3.  **Tolerancing:** Maintained a 0.2mm gap tolerance between mating parts (such as the servo sockets and printed inserts) to accommodate 3D printer expansion.

### 2. Bill of Materials / Part Details

| Part Name | Function | CAD Features Used | Material Selected |
| :--- | :--- | :--- | :---: |
| **Base Plate** | Provides structural stability and houses the Azimuth servo and Arduino. | Sketch, Extrude, Shell, Cut-Outs | PLA |
| **Main Pillar** | Vertical column; houses the cable channel and top servo socket. | Revolve, Sweep (channel), Extrude | PLA |
| **Panel Holder** | Frame that holds the solar panel securely. | Sketch, Extrude, Ribs (reinforcing) | PETG |
| **Sensor Mount** | A "cross" shaped divider that houses 4 LDRs at 90° offsets. | Sketch, Extrude, Pattern | PLA |
| **Servo Horn Adapter** | Custom bracket interfacing the metal servo horn with the plastic body. | Sketch, Extrude | PLA |

### 3. Assembly Constraints (Joints)
To model actual motion, we applied the following assembly constraints:
*   **Concentric:** Aligned the Azimuth servo output shaft with the central axis of the Main Pillar socket.
*   **Coincident:** Mated the base of the Pillar flush with the Base Plate thrust bearing.
*   **Limit Angle:** Constrained the Elevation pivot joint to a range of 0° (horizontal) to 90° (vertical) to prevent mechanical interference with the column.
*   **Distance:** Set a minimum 5mm clearance distance between the moving solar panel holder and the stationary servo body.

---

## Deliverables
1.  **3D Part Files** for each mechanical component.
2.  **Assembly Constraints Log** defining the system's degrees of freedom (detailed above).
3.  **Engineering Drawings** indicating critical dimensions (e.g., 0.2mm tolerances).

## Outcome
Students gain practical CAD modeling experience, learning how to design assemblies, apply motion limits, and manage tolerances for subsequent additive manufacturing.
