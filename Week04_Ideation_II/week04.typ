#import "../template.typ": section, sub-section

= Week 04: Ideation Techniques II – Concept Selection

#section("Aim")[
  To systematically evaluate, compare, and select the optimal mechanical configuration for the dual-axis solar tracking system.
]

#section("Topics Covered")[
  - Idea Evaluation and Selection Criteria
  - Concept Evaluation Matrix
  - Selected Design Concept Justification
]

#section("Theory")[
  Engineering design requires balancing multiple constraints: innovation, manufacturability, cost, and structural usability. Using a weighted concept selection matrix helps teams evaluate concepts objectively based on prioritized criteria.
]

#section("Activity")[
  === 1. Concept Evaluation Matrix
  Three primary mechanical configurations were scored against design requirements:
  - *Design 1: Direct Servo (Pillar)* — Standard servos directly pivot the azimuth and elevation axes.
  - *Design 2: Gear-Reduced (U-Frame)* — Spur gears drive the assembly to increase stability.
  - *Design 3: Linear Actuators* — Motorized lead screw jacks tilt the solar panel.

  #align(center)[
    #table(
      columns: (2fr, 1.2fr, 1.8fr, 1.8fr, 1.8fr),
      inset: 6pt,
      align: (left, center, center, center, center),
      fill: (x, y) => if y == 0 { rgb("e2e8f0") } else if y == 6 { rgb("f1f5f9") } else { none },
      [*Criteria*], [*Weight*], [*Design 1: Direct Servo*], [*Design 2: Gear-Reduced*], [*Design 3: Actuators*],
      [Stability], [4], [3 (12)], [5 (20)], [4 (16)],
      [Cost], [3], [5 (15)], [3 (9)], [2 (6)],
      [Ease of Build], [3], [5 (15)], [2 (6)], [3 (9)],
      [Tracking Range], [2], [4 (8)], [5 (10)], [2 (4)],
      [Maintenance], [2], [4 (8)], [3 (6)], [2 (4)],
      [*TOTAL SCORE*], [14], [*61*], [57], [39]
    )
  ]
  _Note: Weighted scores are shown in parentheses. Total = Sum(Weight $times$ Rating 1-5)._

  === 2. Feasibility vs. Innovation Analysis
  - *High Feasibility / High Innovation (Selected):* Design 1. Direct drive from MG995 servos provides ample torque (10kg-cm) for a 10W-20W panel, keeping the build simple, low-cost (< \$50), and easy to 3D print.
  - *Low Feasibility / High Innovation:* Design 3. Linear actuators are heavy, expensive, and introduce massive complexity for a small-scale prototype.
  - *High Feasibility / Low Innovation:* Simple manual bracket adjustments.

  === 3. Selected Concept Refinements
  - *Thrust Bearing:* Added a flat thrust bearing to the central pillar base to transfer structural weight away from the Azimuth servo shaft.
  - *Cable Channel:* Designed an internal hollow routing path through the pillar to manage wiring and prevent twisting.

  === 4. Bill of Materials (BOM)
  The following table lists the components required to fabricate the selected Direct Servo configuration:
  
  #align(center)[
    #table(
      columns: (1fr, 3fr, 1fr, 1.5fr, 1.5fr),
      inset: 6pt,
      align: (center, left, center, right, right),
      [*S.No.*], [*Component Description*], [*Qty*], [*Unit Cost (INR)*], [*Total Cost (INR)*],
      [1], [Arduino Nano (ATmega328P)], [1], [350.00], [350.00],
      [2], [MG995 High-Torque Servo Motor], [2], [420.00], [840.00],
      [3], [Light Dependent Resistors (LDRs)], [4], [15.00], [60.00],
      [4], [10k Ohm Resistors & Breadboard Wires], [1 set], [120.00], [120.00],
      [5], [PLA/PETG Filament (printed parts, ~400g)], [1 roll], [850.00], [850.00],
      [6], [M3 Socket-Head Screw Set & Nuts], [1 set], [150.00], [150.00],
      [7], [Miniature Ball Thrust Bearing (F8-16M)], [1], [180.00], [180.00],
      [*Total*], [*Estimated Material Cost*], [*11*], [*-*], [*INR 2,550.00*]
    )
  ]
]

#section("Deliverables")[
  - Weighted concept selection matrix.
  - Feasibility vs. innovation analysis.
  - Justification of selected configuration.
  - Detailed Bill of Materials (BOM) and cost estimate.
]

#section("Outcome")[
  Students learn to use decision matrices to systematically choose optimal configurations based on realistic cost, manufacturing, and complexity constraints.
]
