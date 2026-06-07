#import "../template.typ": section, sub-section, primary-color, week-title
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#week-title("Week 03", "Ideation Techniques I – Brainstorming & SCAMPER", "Ideate")

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
  1. Gear-driven base for #box([360-degree]) Azimuth rotation.
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
  - *Eliminate:* Limit rotation to #box([180°]) to eliminate slip rings or twisted cables.
  - *Rearrange:* Place heavy Azimuth motor at the base and Elevation motor at the top of the pillar.

  === 3. Project Mind Map (Fletcher Diagram)
  #v(0.5em)
  #align(center)[
    #diagram(
      spacing: (18mm, 15mm),
      node-stroke: 0.5pt + primary-color,
      node-fill: primary-color.lighten(95%),
      edge-stroke: 0.7pt + primary-color,
      
      node((0,0), [Dual-Axis Efficiency], corner-radius: 6pt, stroke: 1.5pt + primary-color),
      
      // Mechanical branch
      edge((0,0), (1,1), "-"),
      node((1,1), [*Mechanical*], corner-radius: 4pt),
      edge((1,1), (2,1.5), "-"),
      node((2,1.5), [Gears & Servos], corner-radius: 3pt),
      edge((1,1), (2,1.0), "-"),
      node((2,1.0), [Thrust Bearings], corner-radius: 3pt),
      edge((1,1), (2,0.5), "-"),
      node((2,0.5), [PLA vs PETG], corner-radius: 3pt),
      
      // Electrical branch
      edge((0,0), (-1,1), "-"),
      node((-1,1), [*Electrical*], corner-radius: 4pt),
      edge((-1,1), (-2,1.5), "-"),
      node((-2,1.5), [Arduino Nano], corner-radius: 3pt),
      edge((-1,1), (-2,1.0), "-"),
      node((-2,1.0), [LDR Sensors], corner-radius: 3pt),
      edge((-1,1), (-2,0.5), "-"),
      node((-2,0.5), [Capacitors], corner-radius: 3pt),
      
      // Environmental branch
      edge((0,0), (1,-1), "-"),
      node((1,-1), [*Environmental*], corner-radius: 4pt),
      edge((1,-1), (2,-1.5), "-"),
      node((2,-1.5), [Wind Drag], corner-radius: 3pt),
      edge((1,-1), (2,-0.8), "-"),
      node((2,-0.8), [Rain & Dust], corner-radius: 3pt),
      
      // UI Branch
      edge((0,0), (-1,-1), "-"),
      node((-1,-1), [*User Interface*], corner-radius: 4pt),
      edge((-1,-1), (-2,-1.5), "-"),
      node((-2,-1.5), [Calibration Buttons], corner-radius: 3pt),
      edge((-1,-1), (-2,-0.8), "-"),
      node((-2,-0.8), [LCD Display], corner-radius: 3pt)
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
