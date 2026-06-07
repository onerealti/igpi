#import "../../template.typ": section, sub-section

= Week 06: Prototyping II – CAD Modeling

#section("Aim")[
  To create parametric 3D CAD models of the tracking system components and assemble them digitally to verify fits and clearance angles.
]

#section("Software Used")[
  SolidWorks / Autodesk Fusion 360
]

#section("Topics Covered")[
  - 2D Sketching & Geometrical Constraints
  - 3D Features (Extrude, Revolve, Shell, Cut)
  - Concentric and Coincident Assembly Mating
  - Joint Angular Limits
]

#section("Theory")[
  Parametric 3D CAD modeling enables engineers to design and modify components within a virtual assembly. Defining mates and joint limits ensures components interact correctly and clears geometric interferences before physical fabrication.
]

#section("Activity")[
  === 1. CAD Modeling Strategy
  We used a *bottom-up modeling approach*:
  - *Master Layout Sketch:* Set base clearances, maximum panel sizes, and the center of gravity pivot lines.
  - *Tolerancing:* Added a 0.2mm gap tolerance around servo housings and mounting pins to accommodate plastic shrinkage and 3D printing tolerances.

  === 2. Bill of Materials & Part Design Details
  
  #align(center)[
    #table(
      columns: (1.5fr, 3fr, 1.2fr),
      inset: 6pt,
      align: (left, left, center),
      fill: (x, y) => if y == 0 { rgb("e2e8f0") } else { none },
      [*Part Name*], [*Function*], [*Material*],
      [Base Plate], [Houses Azimuth servo, circuit boards, and battery weight.], [PLA],
      [Main Pillar], [Vertical column; routes cables internally and holds Elevation servo.], [PLA],
      [Panel Holder], [Frame holding the solar panel. Structured with ribs for strength.], [PETG],
      [Sensor Mount], [Cross-divider holding 4 LDRs at 90° intervals to block side reflections.], [PLA],
      [Servo Horn Adaptor], [Connects the metal servo output horn to the plastic pillar socket.], [PLA]
    )
  ]

  === 3. Assembly Constraints (CAD Mates)
  - *Concentric:* Aligned the Azimuth servo shaft with the center of the Main Pillar socket.
  - *Coincident:* Placed the base of the Pillar flush against the Base Plate thrust bearing surface.
  - *Limit Angle:* Constrained the Elevation rotation to between 0° (horizontal) and 90° (vertical) to prevent the panel holder from colliding with the pillar.
  - *Distance:* Maintained a minimum 5mm gap between the panel and the Elevation servo body to avoid wire pinch.
]

#section("Deliverables")[
  - Assembly drawings and clearance constraints.
  - Materials and CAD parts list.
]

#section("Outcome")[
  Students gain CAD modeling experience, learning how to design component tolerances and simulate mechanical movement limits in software.
]
