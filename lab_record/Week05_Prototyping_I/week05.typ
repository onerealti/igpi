#import "../../template.typ": section, sub-section
#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge

= Week 05: Prototyping I – Low Fidelity & Storyboard

#section("Aim")[
  To build a low-fidelity physical prototype, storyboard user scenarios, and chart the system's operational logic flow.
]

#section("Materials Required")[
  - Cardboard, paper, and foam board sheets
  - Scissors and precision cutter
  - Glue sticks and hot glue gun
  - Wooden pins (for axles/pivots)
]

#section("Theory")[
  Low-fidelity prototyping focuses on "building to think." It allows designers to explore physical space, scaling constraints, and functional flows using low-cost materials before committing to digital designs or CAD modeling.
]

#section("Activity")[
  === 1. Low-Fidelity Mockup
  We constructed a 1:1 cardboard mockup of the Direct Servo Pillar:
  - Cardboard box base representing the controller housing.
  - Rolled cardboard core representing the main vertical pillar.
  - Foam board rectangle representing the solar panel.
  - Wooden pins representing servo axes to physically rotate and tilt the model.

  === 2. Storyboard Sequence
  Our storyboard covers five primary operating steps:
  1. *Setup:* User sets the tracker on a flat surface with clear sky views and connects a 5V power source.
  2. *Self-Test:* The Arduino boots, sweeps both servos to 90° (center), and checks sensor signals.
  3. *Tracking:* The Arduino reads the four LDRs. If light differences exceed the threshold, it increments the servos by 1° to follow the light.
  4. *Locking:* Once LDR values equalize, the tracker holds its angle, maximizing panel output.
  5. *Night Reset:* When sensor values drop below 10% for 5 minutes (nighttime), the panel flat-packs and rotates back East.

  === 3. System Flowchart (Fletcher Diagram)
  #v(0.5em)
  #align(center)[
    #diagram(
      spacing: (15mm, 15mm),
      node-stroke: 0.7pt + rgb("1f3b68"),
      node-fill: rgb("f0f4f8"),
      edge-stroke: 0.7pt + rgb("555555"),
      
      node((0,0), [Power On], corner-radius: 4pt),
      edge((0,0), (0,1), "-|>"),
      node((0,1), [Calibration], corner-radius: 4pt),
      edge((0,1), (0,2), "-|>"),
      node((0,2), [Sunlight?], shape: "diamond", inset: 5pt),
      
      edge((0,2), (1.2,2), "-|>", label: [No]),
      node((1.2,2), [Standby Mode], corner-radius: 4pt),
      edge((1.2,2), (1.2,3), "-|>"),
      node((1.2,3), [Sunrise?], shape: "diamond", inset: 5pt),
      edge((1.2,3), (0,1), "-|>", label: [Yes], bend: -35deg),
      edge((1.2,3), (1.2,2), "-|>", label: [No], bend: -45deg),
      
      edge((0,2), (0,3), "-|>", label: [Yes]),
      node((0,3), [Read 4 LDRs], corner-radius: 4pt),
      edge((0,3), (0,4), "-|>"),
      node((0,4), [Diff > Threshold?], shape: "diamond", inset: 3pt),
      
      edge((0,4), (-1.2,4), "-|>", label: [Yes]),
      node((-1.2,4), [Adjust Servos], corner-radius: 4pt),
      edge((-1.2,4), (-1.2,3), "-|>"),
      edge((-1.2,3), (0,3), "-|>", bend: -25deg),
      
      edge((0,4), (0,5), "-|>", label: [No]),
      node((0,5), [Maintain Position], corner-radius: 4pt),
      edge((0,5), (0,3), "-|>", bend: 45deg)
    )
  ]
  #v(0.5em)

  === 4. Initial Design Insights
  - *Light Shading:* Bare LDR sensors were easily confused by ground reflections. We must add cylindrical shrouds.
  - *Jitter:* Fast code loops caused servos to jitter. We need to add a delay and reduce adjustment steps to 1°.
]

#section("Deliverables")[
  - Storyboard steps list.
  - System interaction flowchart (Fletcher diagram).
  - Low-fidelity physical mockup notes.
]

#section("Outcome")[
  Students learn how to translate a abstract concept into a physical mockup and a structured control flowchart, uncovering core design problems early.
]
