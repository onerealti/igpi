#import "../template.typ": section, sub-section

= Week 08: Testing Phase – Usability & Performance

#section("Aim")[
  To test the prototype's tracking sensitivity, alignment accuracy, power draw, and mechanical failure points.
]

#section("Topics Covered")[
  - Performance metrics and test setups
  - Power consumption analysis
  - Failure Modes and Effects Analysis (FMEA)
]

#section("Theory")[
  Testing validates that a prototype meets design targets. Measuring real-world power draw ensures the system has a positive net gain, while analyzing failure points helps guide design improvements.
]

#section("Activity")[
  === 1. Performance Testing Output
  - *Sensitivity Test:* We used a variable LUX lamp at 15° offsets. The tracking algorithm reacted at an analog sensor difference of >15. Under overcast sky simulations, this low threshold caused the servos to jitter (hunt). Increasing the threshold to 20 improved tracking stability.
  - *Precision Test:* Measured alignment errors using the shadow length of a peg mounted perpendicular to the panel. We recorded an average angular error of $\pm 3.5^o$ (well within our $\pm 5^o$ design target).
  - *Power Consumption:*
    - _Idle (No motor movement):_ 45mA @ 5V (0.225W).
    - _Active (Both servos moving):_ 450mA @ 5V (2.25W).
    - _Net Gain:_ Tested with a 20W panel. Daily generation increased by 32% (an average gain of 6.4W), while average motor draw was under 0.5W. *Net energy gain is positive.*

  === 2. Failure Analysis (FMEA)
  
  #align(center)[
    #table(
      columns: (1.5fr, 1.5fr, 1fr, 2fr),
      inset: 5pt,
      align: (left, left, left, left),
      fill: (x, y) => if y == 0 { rgb("e2e8f0") } else { none },
      [*Failure Mode*], [*Root Cause*], [*Impact*], [*Mitigation Strategy*],
      [Servo Jitter], [Noisy LDR signals + low threshold.], [High gear wear.], [Add software hysteresis & time delays.],
      [Panel Flexing], [Panel holder too thin (2mm).], [Wobbles in wind.], [Increase plate to 4mm with ribs.],
      [Wire Fatigue], [Wires twisted 180° during panning.], [Short circuit risk.], [Add software rotation limits (180°).],
      [Thermal Cutoff], [Continuous panel weight load on Elevation servo.], [System stops.], [Add counterweight to balance panel.]
    )
  ]
]

#section("Deliverables")[
  - Performance test logs (Sensitivity, Precision, and Power).
  - Failure analysis table.
]

#section("Outcome")[
  Students learn how to collect and evaluate performance data, using failure analysis to guide design upgrades.
]
