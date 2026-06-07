#import "../template.typ": section, sub-section, primary-color, secondary-color, phase-badge
#import "@preview/cetz:0.5.2"

#phase-badge("Prototype")
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
  - 2D Engineering Assembly Layouts
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

  === 4. 2D Assembly Layout Schematic (CAD View)
  The layout below represents the assembled tracking unit with mechanical connections and components labeled:
  
  #v(0.5em)
  #align(center)[
    #cetz.canvas({
      import cetz.draw: *
      
      // Draw Base Box
      rect((-1.8, 0.0), (1.8, 0.5), fill: rgb("f8fafc"), stroke: 1.2pt + primary-color)
      content((0.0, 0.25), [Base Housing (PLA)])
      
      // Draw Azimuth Servo Box inside Base
      rect((-0.4, 0.5), (0.4, 0.8), fill: rgb("e2e8f0"), stroke: 0.8pt + black)
      content((0.0, 0.65), text(7.5pt)[Azimuth Servo])
      
      // Thrust Bearing line
      line((-0.6, 0.82), (0.6, 0.82), stroke: 1.5pt + gray)
      
      // Draw Pillar
      rect((-0.3, 0.84), (0.3, 2.8), fill: rgb("f1f5f9"), stroke: 1.2pt + primary-color)
      content((0.0, 1.82), text(9pt)[Main Pillar (PLA)], angle: 90deg)
      
      // Draw Elevation Servo Box at top of Pillar
      rect((-0.35, 2.8), (0.35, 3.2), fill: rgb("e2e8f0"), stroke: 0.8pt + black)
      content((0.0, 3.0), text(7.5pt)[Elevation Servo])
      
      // Elevation Pivot Circle
      circle((0.0, 3.2), radius: 0.15, fill: primary-color)
      
      // Draw Panel Mount and Panel (Tilted at 40 degrees)
      group({
        rotate(40deg)
        line((-1.5, 3.2), (1.5, 3.2), stroke: 4pt + primary-color) // solar panel
        content((0.0, 3.4), text(9pt)[Solar Panel & Holder (PETG)])
        
        // Sensor Cross on top of panel
        rect((-0.2, 3.2), (0.2, 3.7), fill: rgb("cbd5e1"), stroke: 0.8pt + black)
        content((0.0, 3.45), text(7pt)[LDR Array])
      })
      
      // Add Callout arrows
      // Callout 1: Solar Panel
      line((1.5, 4.0), (0.8, 3.6), stroke: 0.5pt + gray, mark: (end: ">"))
      content((1.8, 4.1), text(8pt)[Solar Panel (10W)])
      
      // Callout 2: LDR Sensor Shroud
      line((-1.2, 4.2), (-0.2, 3.8), stroke: 0.5pt + gray, mark: (end: ">"))
      content((-1.5, 4.3), text(8pt)[LDR Shroud & Array])
      
      // Callout 3: Main Pillar
      line((-1.4, 2.0), (-0.35, 1.9), stroke: 0.5pt + gray, mark: (end: ">"))
      content((-1.8, 2.0), text(8pt)[Vertical Pillar (PLA)])
      
      // Callout 4: Thrust Bearing
      line((1.4, 1.1), (0.5, 0.83), stroke: 0.5pt + gray, mark: (end: ">"))
      content((1.8, 1.2), text(8pt)[Thrust Bearing])
    })
  ]
  #v(0.5em)
]

#section("Deliverables")[
  - Assembly drawings and clearance constraints.
  - Materials and CAD parts list.
  - 2D CAD Assembly Layout schematic (CeTZ Canvas).
]

#section("Outcome")[
  Students gain CAD modeling experience, learning how to design component tolerances and simulate mechanical movement limits in software.
]
