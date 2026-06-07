#import "../template.typ": section, sub-section, phase-badge
#import "@preview/cetz:0.5.2"

#phase-badge("Testing")
= Week 08: Testing Phase – Usability & Performance

#section("Aim")[
  To test the prototype's tracking sensitivity, alignment accuracy, power draw, and mechanical failure points.
]

#section("Topics Covered")[
  - Performance metrics and test setups
  - Power consumption analysis
  - Failure Modes and Effects Analysis (FMEA)
  - Graphical Performance Verification
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

  === 2. Power Generation Performance Chart
  The graph below compares the measured power output (Watts) of a static solar panel vs. the *Helio-Track S1* dual-axis tracker over a 12-hour test run (8:00 AM to 6:00 PM):

  #v(0.5em)
  #align(center)[
    #cetz.canvas({
      import cetz.draw: *
      
      // Draw Grid
      let draw-grid-line(y-val) = {
        line((0, y-val), (6, y-val), stroke: (paint: gray.lighten(60%), dash: "dashed"))
      }
      for i in (1, 2, 3, 4) {
        draw-grid-line(i)
      }
      
      // Draw Axes
      line((0, 0), (6, 0), stroke: 1pt + black) // X-axis
      line((0, 0), (0, 4.2), stroke: 1pt + black) // Y-axis
      
      // X-axis Tick Labels (Hours)
      let x-ticks = (
        (0.0, [8 AM]),
        (1.2, [10 AM]),
        (2.4, [12 PM]),
        (3.6, [2 PM]),
        (4.8, [4 PM]),
        (6.0, [6 PM])
      )
      for (x, lbl) in x-ticks {
        line((x, -0.05), (x, 0.05), stroke: 0.8pt + black)
        content((x, -0.3), text(7pt, lbl))
      }
      
      // Y-axis Tick Labels (Power in Watts)
      let y-ticks = (
        (0.0, [0W]),
        (1.0, [5W]),
        (2.0, [10W]),
        (3.0, [15W]),
        (4.0, [20W])
      )
      for (y, lbl) in y-ticks {
        line((-0.05, y), (0.05, y), stroke: 0.8pt + black)
        content((-0.4, y), text(7.5pt, lbl))
      }
      
      // Axes Titles
      content((3.0, -0.65), text(9pt, weight: "bold")[Time of Day])
      content((-0.8, 2.1), text(9pt, weight: "bold")[Power Output (W)], angle: -90deg)
      
      // Curve 1: Fixed Tilt Panel (sine-like curve)
      let fixed-points = (
        (0.0, 0.2), (0.6, 0.7), (1.2, 1.4), (1.8, 2.1), (2.4, 2.6),
        (3.0, 2.3), (3.6, 1.8), (4.2, 1.3), (4.8, 0.8), (5.4, 0.4), (6.0, 0.1)
      )
      // draw line
      for i in range(0, fixed-points.len() - 1) {
        line(fixed-points.at(i), fixed-points.at(i+1), stroke: 1.5pt + gray.darken(20%))
      }
      // Draw points
      for pt in fixed-points {
        circle(pt, radius: 0.04, fill: gray.darken(20%), stroke: none)
      }
      
      // Curve 2: Helio-Track S1 (Dual-Axis Tracking)
      let tracking-points = (
        (0.0, 1.4), (0.6, 2.2), (1.2, 3.0), (1.8, 3.3), (2.4, 3.4),
        (3.0, 3.3), (3.6, 3.2), (4.2, 3.0), (4.8, 2.8), (5.4, 2.1), (6.0, 1.2)
      )
      // draw line
      for i in range(0, tracking-points.len() - 1) {
        line(tracking-points.at(i), tracking-points.at(i+1), stroke: 2pt + rgb("d97706"))
      }
      // Draw points
      for pt in tracking-points {
        circle(pt, radius: 0.05, fill: rgb("d97706"), stroke: none)
      }
      
      // Draw Legend
      rect((3.6, 0.3), (5.9, 1.2), fill: rgb("ffffff").lighten(90%), stroke: 0.5pt + gray)
      // Legend entry 1: Fixed
      line((3.8, 0.9), (4.3, 0.9), stroke: 1.5pt + gray.darken(20%))
      content((4.45, 0.9), text(7pt)[Fixed Panel (Baseline)], anchor: "west")
      // Legend entry 2: Tracking
      line((3.8, 0.6), (4.3, 0.6), stroke: 2pt + rgb("d97706"))
      content((4.45, 0.6), text(7pt)[Helio-Track S1 (Dual-Axis)], anchor: "west")
    })
  ]
  #v(0.5em)

  === 3. Failure Analysis (FMEA)
  
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
  - Power generation performance chart (CeTZ Canvas).
  - Failure analysis table (FMEA).
]

#section("Outcome")[
  Students learn how to collect and evaluate performance data, using failure analysis to guide design upgrades.
]
