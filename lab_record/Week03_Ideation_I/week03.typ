#import "../../template.typ": section, sub-section
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

= Week 03: Ideation Techniques I – Brainstorming & SCAMPER

#section("Aim")[
  To generate a wide range of innovative concepts for the solar tracking mechanism using brainstorming and SCAMPER techniques.
]

#section("Topics Covered")[
  - Brainstorming (20 Ideas)
  - SCAMPER Analysis
  - Mind Mapping
]

#section("Theory")[
  === SCAMPER Analysis
  SCAMPER is a creative thinking tool that prompts designers to generate modifications for existing products:
  - *S (Substitute):* Replace components or materials.
  - *C (Combine):* Combine different features or structures.
  - *A (Adapt):* Emulate biological processes or existing machines.
  - *M (Modify/Magnify):* Adjust sizing or sensor sensitivities.
  - *P (Put to another use):* Repurpose system logs or motion data.
  - *E (Eliminate):* Remove unnecessary components to reduce complexity.
  - *R (Reverse/Rearrange):* Alter structural layouts or motor order.
]

#section("Activity")[
  === 1. Brainstorming Output (20 Concepts)
  1. Gear-driven base for 360-degree Azimuth rotation.
  2. Use of hydraulic pistons for heavy-duty elevation adjustment.
  3. LDR sensors housed in a "cross" shaped divider for directional sensitivity.
  4. Automatic "night-return" feature to face East at sunset.
  5. Wind sensor integration to flat-pack the panel during storms.
  6. Bamboo frame for a low-carbon footprint base.
  7. Ball-and-socket joint driven by three linear actuators.
  8. Parabolic solar concentrator attached to the tracker.
  9. Bluetooth monitoring of LDR values via a mobile app.
  10. Using a counterweight to reduce elevation servo torque.
  11. Magnetic encoders for precise position feedback.
  12. Dual-panel mount (butterfly wing style) to balance wind loads.
  13. Suction cup mounts for temporary RV installation.
  14. Modular "click-on" sensor modules for easy swapping.
  15. Integrated cleaning wiper for the LDR sensors.
  16. Using a stepper motor with a worm gear to prevent back-driving.
  17. GPS-based tracking as a backup for overcast days.
  18. Foldable "origami" structure for portability.
  19. Water-cooled panel integration to maximize PV efficiency.
  20. Transparent acrylic enclosure to protect electronics.

  === 2. SCAMPER Implementation
  - *Substitute:* Replace plastic servo gears with metal-geared MG995 servos to increase wind resistance.
  - *Combine:* Combine the LDR mount directly into the panel holder print.
  - *Adapt:* Adapt "sunflower" behavior (flat-packing at night to protect the panel).
  - *Modify:* Deepen the sensor wells to block ambient horizontal light.
  - *Put to another use:* Log sunlight changes to map shading patterns on sites.
  - *Eliminate:* Limit rotation to 180° to eliminate slip rings or twisted cables.
  - *Rearrange:* Place heavy Azimuth motor at the base and Elevation motor at the top of the pillar.

  === 3. Project Mind Map (Fletcher Diagram)
  #v(0.5em)
  #align(center)[
    #diagram(
      spacing: (16mm, 12mm),
      node-stroke: 0.7pt + rgb("2e7d32"),
      node-fill: rgb("e8f5e9"),
      edge-stroke: 0.7pt + rgb("2e7d32"),
      
      node((0,0), [Dual-Axis Efficiency], corner-radius: 6pt, stroke: 1.5pt + rgb("2e7d32")),
      
      // Mechanical branch
      edge((0,0), (1.1,1.1), "-"),
      node((1.1,1.1), [Mechanical], corner-radius: 4pt),
      edge((1.1,1.1), (2.2,1.6), "-"),
      node((2.2,1.6), [Gears & Servos]),
      edge((1.1,1.1), (2.2,1.0), "-"),
      node((2.2,1.0), [Thrust Bearings]),
      edge((1.1,1.1), (2.2,0.4), "-"),
      node((2.2,0.4), [PLA vs PETG]),
      
      // Electrical branch
      edge((0,0), (-1.1,1.1), "-"),
      node((-1.1,1.1), [Electrical], corner-radius: 4pt),
      edge((-1.1,1.1), (-2.2,1.6), "-"),
      node((-2.2,1.6), [Arduino Nano]),
      edge((-1.1,1.1), (-2.2,1.0), "-"),
      node((-2.2,1.0), [LDR Sensors]),
      edge((-1.1,1.1), (-2.2,0.4), "-"),
      node((-2.2,0.4), [Capacitors]),
      
      // Environmental branch
      edge((0,0), (1.1,-1.1), "-"),
      node((1.1,-1.1), [Environmental], corner-radius: 4pt),
      edge((1.1,-1.1), (2.2,-1.6), "-"),
      node((2.2,-1.6), [Wind Drag]),
      edge((1.1,-1.1), (2.2,-0.9), "-"),
      node((2.2,-0.9), [Rain & Dust]),
      
      // UI Branch
      edge((0,0), (-1.1,-1.1), "-"),
      node((-1.1,-1.1), [User Interface], corner-radius: 4pt),
      edge((-1.1,-1.1), (-2.2,-1.6), "-"),
      node((-2.2,-1.6), [Calibration Buttons]),
      edge((-1.1,-1.1), (-2.2,-0.9), "-"),
      node((-2.2,-0.9), [LCD Display])
    )
  ]
  #v(0.5em)
]

#section("Deliverables")[
  - Brainstorming sheet (20 ideas).
  - SCAMPER analysis.
  - System mind map (Fletcher diagram).
]

#section("Outcome")[
  Students build creative thinking skills by generating diverse system ideas and structuring them visually using Fletcher mind maps.
]
