#import "../template.typ": section, sub-section, primary-color, week-title

#week-title("Week 02", "Define Phase – POV & Problem Statement", "Define")

#section("Aim")[
  To identify user-centered problems and convert them into clear, actionable opportunity statements.
]

#section("Objectives")[
  - Understand target user needs and primary mechanical/electrical pain points.
  - Formulate Point-of-View (POV) statements for diverse user personas.
  - Reframe problems into opportunities using "How Might We" (HMW) questions.
]

#section("Theory")[
  === Point-of-View (POV) Statements
  A POV statement translates user observations and insights into a design goal. It defines a user, identifies their core need, and explains the underlying insight.
  - *Format:* `[User] needs a way to [User's Need] because [Insight].`

  === "How Might We" (HMW) Reframing
  HMW questions reframe the challenges discovered in POV statements into open invitations for brainstorming.
]

#section("Activity")[
  === 1. Persona POV Statements
  We drafted five POV statements to explore design angles:
  1. *Remote Cabin Owner:* Needs a way to maximize solar output during low-light winter months because their current fixed-mount system fails to keep batteries charged for essential medical equipment.
  2. *Urban Sustainability Advocate:* Needs an aesthetically pleasing and compact tracking system because they have limited balcony space and want to prove that small-scale solar is viable in cities.
  3. *DIY Off-Gridder:* Needs a tracker built from modular, 3D-printable parts because they live far from specialized repair shops and need to easily maintain the mechanism themselves.
  4. *Agricultural IoT Developer:* Needs a low-power solar tracker for remote field sensors because manual battery changes in the field are expensive and time-consuming.
  5. *Education Tech Instructor:* Needs a transparent, visible mechanism because they want students to clearly visualize the relationship between light intensity (LDR values) and motor movement (Azimuth/Elevation).

  === 2. Selected Design Challenge (HMW)
  Focusing on residential off-grid users, we defined our core challenge:
  #block(
    inset: (left: 12pt, top: 4pt, bottom: 4pt),
    stroke: (left: 3.5pt + primary-color),
    [*How might we design a robust, low-cost dual-axis solar tracking system that maximizes energy harvest for off-grid residential users while ensuring the mechanism remains energy-efficient and easy to maintain?*]
  )

  === 3. Targeted Design Goals
  - *Accuracy:* Hold panel within $\pm 5$ degrees of solar perpendicularity.
  - *Reliability:* Support $\ge 1,000$ continuous operation cycles without mechanical fatigue.
  - *Efficiency:* Idle power draw under 5% of panel generation (via sleep state implementation).
]

#section("Deliverables")[
  - Five target POV statements.
  - Selected HMW statement.
  - System design goals.
]

#section("Outcome")[
  Students learn how to narrow down raw user data into structured engineering challenges, using human-centered POVs to define technical metrics.
]
