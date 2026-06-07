#import "../template.typ": section, sub-section, phase-badge

#phase-badge("Prototype")
= Week 07: Prototyping III – 3D Printing & Fabrication

#section("Aim")[
  To fabricate functional parts, assemble the physical tracking mechanism, and integrate the servo motors and Arduino board.
]

#section("Topics Covered")[
  - 3D Printing parameters (Slicing, Infill, Supports)
  - Post-processing printed parts (Sanding, Fitting)
  - Electromechanical assembly
  - Cable routing management
]

#section("Theory")[
  Converting 3D CAD models into physical parts via Fused Deposition Modeling (FDM) 3D printing requires setting parameters like wall thickness and infill to ensure structural strength under mechanical load. Post-printing assembly checks ensure correct fits.
]

#section("Activity")[
  === 1. 3D Printing Slicer Settings
  We printed the parts on an Ender 3 V2 with the following settings:
  - *Layer Height:* 0.2mm (standard resolution).
  - *Infill Density:* 40% (Tri-Hexagonal pattern for mechanical and torsional strength).
  - *Wall Line Count:* 4 (crucial for structural strength and self-tapping screw holes).
  - *Nozzle Temperature:* 210°C (PLA for Base/Pillar) / 240°C (PETG for Panel Holder).
  - *Bed Temperature:* 60°C (PLA) / 80°C (PETG to prevent warping).
  - *Supports:* Tree supports enabled (for the Pillar overhang brackets).

  === 2. Fabrication & Assembly Log
  
  #align(center)[
    #table(
      columns: (1.2fr, 2.3fr, 2.5fr),
      inset: 6pt,
      align: (left, left, left),
      fill: (x, y) => if y == 0 { rgb("e2e8f0") } else { none },
      [*Date*], [*Activity*], [*Observations & Solutions*],
      [Oct 10], [Print Base Plate & Pillar], [The pillar base warped slightly. *Fix:* Re-leveled bed and added a brim.],
      [Oct 12], [Print Panel Holder (PETG)], [PETG showed high stringing. *Fix:* Retraction increased to 6mm at 45mm/s.],
      [Oct 14], [Circuit assembly], [Wired LDRs on breadboard. Serial readings were responsive to light.],
      [Oct 15], [Final Assembly], [Elevation servo slot was too tight. *Fix:* Sanded slot edges by 0.1mm.]
    )
  ]

  === 3. Assembly Steps
  1. *Base Setup:* Mount the Azimuth servo (MG995) in the Base Plate. Secure with M3 screws.
  2. *Thrust Bearing:* Install the thrust ball bearing over the Azimuth servo shaft to carry the weight of the pillar.
  3. *Pillar Assembly:* Push the Main Pillar onto the Azimuth horn and bolt it down.
  4. *Elevation Setup:* Insert the Elevation servo into the top of the Pillar, routing its cables down the internal channel.
  5. *Panel Mount:* Bolt the PETG Panel Holder to the Elevation horn.
  6. *Sensor Mount:* Clip the LDR sensor holder to the top of the panel.
  7. *Wiring:* Connect all sensor and motor wires to the Arduino Nano in the base box.
]

#section("Deliverables")[
  - 3D printing parameters log.
  - Completed fabrication issues log table.
  - Assembled physical prototype.
]

#section("Outcome")[
  Students learn the realities of fabrication, including slicer setup, post-print tolerances, and routing wiring through moving mechanical pivots.
]
