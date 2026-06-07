#import "../template.typ": section, sub-section, phase-badge

#phase-badge("Empathize")
= Week 01: Introduction & Identifying the Need

#section("Aim")[
  To introduce the design thinking process, empathize with target users, and perform research on solar panel configurations to identify the engineering need for a dual-axis solar tracking system.
]

#section("Objectives")[
  1. Understand the core principles of human-centered design (HCD).
  2. Analyze the efficiency limitations of fixed solar panel configurations through comparative research.
  3. Empathize with potential users (off-grid cabin owners, mobile dwellers) by conducting interviews to discover their energy challenges.
]

#section("Theory")[
  === Design Thinking - Empathize Stage
  The first stage of the design thinking framework focuses on gaining an empathetic understanding of the user. Engaging directly with individuals helps uncover true needs, motivations, and frustrations, avoiding preconceptions.

  === Solar Tracking configurations
  Solar panels operate at peak efficiency when solar rays strike perpendicular ($90^o$) to the panel's active surface.
  - *Fixed Mounts* are set at a single average angle, losing up to 40% of potential energy as the sun's angle changes daily and seasonally.
  - *Tracking Mounts* actively rotate the panel to trace the sun's path, keeping the incidence angle close to $0^o$ (perpendicular).
]

#section("Activity & Findings")[
  === 1. Comparative Research: Solar Configurations
  We researched efficiency, complexity, and costs to justify building a dual-axis system:
  
  #align(center)[
    #table(
      columns: (1.5fr, 2.5fr, 1.2fr, 1fr, 1fr),
      inset: 6pt,
      align: (left, left, center, center, center),
      fill: (x, y) => if y == 0 { rgb("e2e8f0") } else { none },
      [*Configuration*], [*Description*], [*Efficiency Gain*], [*Complexity*], [*Cost*],
      [Fixed Mount], [Set static tilt based on latitude], [Baseline (0%)], [Low], [Low],
      [Single-Axis], [Tracks daily East-West motion (Azimuth)], [20% - 25%], [Moderate], [Moderate],
      [Dual-Axis], [Tracks daily Azimuth & seasonal Elevation], [35% - 40%], [High], [High]
    )
  ]

  === 2. Target User Needs Assessment
  *Target Audience:* Remote cabin owners, van-lifers, and operators of remote agricultural telemetry sensors.  
  *Core Needs:*
  - *Autonomy:* The tracking system must run fully automatically.
  - *Durability:* Must operate outdoors under wind, thermal stress, and dust.
  - *Net Efficiency:* The tracker's actuators must consume less than 5% of the total energy generated.

  === 3. Interview Insights
  - *Interviewee 1 (Mark, Cabin Owner):* Solar panels are difficult to access in winter. Seasonal adjustment is a major hassle.
  - *Interviewee 2 (Sarah, Tech Enthusiast):* Worried about servo motor wear and power consumption. Needs an automatic sleep mode when dark or too windy.
]

#section("Deliverables")[
  - Comparative solar configurations table.
  - User needs assessment list.
  - Summarized user interview insights.
]

#section("Outcome")[
  Students learn how to define and justify an engineering need by combining comparative technical research with direct qualitative user observations.
]
