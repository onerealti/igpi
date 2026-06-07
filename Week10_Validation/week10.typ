#import "../template.typ": section, sub-section
#import "@preview/cetz:0.5.2"

= Week 10: Engineering Validation

#section("Aim")[
  To validate the structural safety, motor torque requirements, and manufacturability of the tracking mechanism using analytical calculations and DFMA checklist.
]

#section("Topics Covered")[
  - Actuator torque safety factors
  - Central pillar compressive stress calculations
  - Wind load drag forces
  - DFMA design review
]

#section("Theory")[
  Engineering validation uses calculations to prove a design will not fail in service. Designing for Manufacturing and Assembly (DFMA) aims to simplify parts and standardize fasteners to reduce production costs.
]

#section("Activity")[
  === 1. Mechanical Drawing of Tracker (CeTZ Canvas)
  #v(0.5em)
  #align(center)[
    #cetz.canvas({
      import cetz.draw: *
      
      // Draw base
      rect((-1.5, 0.0), (1.5, 0.4), fill: rgb("e2e8f0"), stroke: 1pt + black)
      content((0.0, 0.2), [Base Box])
      
      // Draw pillar
      rect((-0.2, 0.4), (0.2, 2.5), fill: rgb("cbd5e1"), stroke: 1pt + black)
      content((0.0, 1.45), [Pillar], rotate: 90deg)
      
      // Draw elevation pivot point
      circle((0.0, 2.5), radius: 0.15, fill: rgb("1f3b68"))
      
      // Draw tilted panel holder
      line((-1.0, 1.9), (1.0, 3.1), stroke: 3pt + rgb("1f3b68"))
      content((0.4, 3.0), [Solar Panel], rotate: 30deg)
      
      // Draw normal vector sun rays
      line((0.8, 3.7), (0.3, 2.8), stroke: (paint: orange, dash: "dashed"), mark: (end: ">"))
      line((0.2, 3.4), (-0.3, 2.5), stroke: (paint: orange, dash: "dashed"), mark: (end: ">"))
      line((-0.4, 3.0), (-0.9, 2.1), stroke: (paint: orange, dash: "dashed"), mark: (end: ">"))
      content((0.5, 3.8), [Sun Rays], fill: white)
    })
  ]
  #v(0.5em)

  === 2. Elevation Motor Torque Verification
  - *Assumptions:* Panel mass $m = 0.8 "kg"$, pivot-to-CG distance $r = 0.05 "m"$, gravity $g = 9.81 "m/s"^2$, safety factor $"SF" = 1.5$.
  - *Static Torque:*
    $ T_s = m times g times r = 0.8 times 9.81 times 0.05 = 0.3924 "Nm" approx 4.0 "kg-cm" $
  - *Required Torque:*
    $ T_"required" = T_s times "SF" = 4.0 times 1.5 = 6.0 "kg-cm" $
  - *Validation:* The MG995 servo provides $10.0 "kg-cm"$ stall torque at 4.8V. Since $10.0 > 6.0$, the servo is *sufficient*.

  === 3. Compressive Stress on Central Shaft
  - *Assumptions:* Total assembly mass $M = 1.5 "kg"$, shaft diameter $d = 10 "mm"$ ($r_s = 0.005 "m"$), Area $A = pi times r_s^2 = 7.85 times 10^(-5) "m"^2$.
  - *Stress:*
    $ sigma = F / A = (1.5 times 9.81) / (7.85 times 10^(-5)) approx 0.187 "MPa" $
  - *Validation:* The yield strength of printed PLA is $30 - 50 "MPa"$. Compressive stress ($0.187 "MPa"$) is well within safety limits.

  === 4. Dynamic Wind Drag Force
  - *Assumptions:* Wind speed $v = 10 "m/s"$, area $A = 0.05 "m"^2$, drag coefficient $C_d = 1.2$, air density $rho = 1.225 "kg/m"^3$.
  - *Wind Force:*
    $ F_w = 1/2 times rho times v^2 times A times C_d = 0.5 times 1.225 times 10^2 times 0.05 times 1.2 approx 7.35 "N" $
  - *Wind Torque:*
    $ T_w = F_w times r_w = 7.35 times 0.05 = 0.3675 "Nm" approx 3.75 "kg-cm" $
  - *Worst-case Torque:*
    $ T_"total" = T_s + T_w = 4.0 + 3.75 = 7.75 "kg-cm" < 10.0 "kg-cm" " (Servo Limit)." $

  === 5. DFMA Review Checklist
  - *Part Count Reduction:* Combined LDR sensor divider housing and panel holder. (*Pass*)
  - *Hardware Standardization:* Used M3 socket-head screws and nuts exclusively. (*Pass*)
  - *Self-Aligning Assembly:* Designed keyways for servo horns to prevent misaligned mounting. (*Pass*)
  - *3D Print Optimization:* Used 45° chamfers on overhangs to avoid temporary support waste. (*Pass*)
]

#section("Deliverables")[
  - Torque and stress validation report.
  - Wind load calculations.
  - DFMA design review checklist.
]

#section("Outcome")[
  Students learn how to perform mechanical validation calculations and apply DFMA guidelines to verify a design is safe and cost-effective.
]
