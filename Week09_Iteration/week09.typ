#import "../template.typ": section, sub-section, week-title

#week-title("Week 09", "Iteration & Redesign", "Iteration")

#section("Aim")[
  To implement mechanical, electrical, and software changes on the tracking prototype to resolve issues found during testing.
]

#section("Topics Covered")[
  - Software hysteresis filters
  - Mechanical double-shear support reinforcement
  - Power rail decoupling
  - Sensor shielding
]

#section("Theory")[
  Design is iterative. Prototypes must be modified based on testing feedback. This cycle of building, testing, and redesigning helps eliminate defects and optimizes the system.
]

#section("Activity")[
  === 1. Redesigned Subsystems (V2 Prototype)

  ==== A. Software Hysteresis Filter
  - *Issue:* Servo hunting/jitter from electrical noise and light changes.
  - *Redesign:* Added a *hysteresis window* to the tracking logic:
    - Servos move only if `diff > threshold + margin`.
    - Added a `millis()` timer so the servos only adjust once every 10 seconds. This stops them from reacting to brief shadows, like a passing bird.

  ==== B. Double-Shear Elevation Mount
  - *Issue:* The single-sided cantilever mount on the V1 panel holder warped and showed stress marks.
  - *Redesign:* Redesigned the top of the pillar to support the panel holder from both sides using a *double-shear pivot mount*.
  - *Result:* Reduced vertical deflection by 70%.

  ==== C. Electrical Noise Decoupling
  - *Issue:* High motor start-up currents caused the Arduino Nano to reset.
  - *Redesign:* Soldered a *1000µF decoupling capacitor* directly across the 5V and GND power rails.
  - *Result:* Voltage remains stable during peak motor currents, ending system resets.

  ==== D. LDR Shrouding
  - *Issue:* Lateral light reflections confused the LDR sensors.
  - *Redesign:* Added *10mm cylindrical enclosures (shrouds)* over each LDR.
  - *Result:* resticts the LDRs to a narrower field of view, increasing directional sensitivity.
]

#section("Deliverables")[
  - Description of mechanical and electrical design changes.
  - Flow details for software updates.
  - Assembled V2 prototype components.
]

#section("Outcome")[
  Students learn how to resolve mechanical, electrical, and software issues systematically through design modifications and updates.
]
