# Week 01: Introduction & Identifying the Need

## Aim
To introduce the design thinking process, empathize with target users, and perform research on solar panel configurations to identify the engineering need for a dual-axis solar tracking system.

## Objectives
1. Understand the core principles of human-centered design.
2. Analyze the efficiency limitations of fixed solar panel systems through comparative research.
3. Empathize with potential users (off-grid cabin owners, van-lifers) by conducting interviews to discover their energy challenges.

## Theory
### Design Thinking - Empathize Stage
The first stage of design thinking focuses on gaining an empathetic understanding of the problem you are trying to solve. By observing, engaging, and empathizing with people, designers can uncover user needs, frustrations, and motives rather than making assumptions.

### Solar Tracking Systems
Solar panels convert light energy into electricity most efficiently when the light rays hit the panel at a perpendicular angle (90 degrees).
*   **Fixed Mounts** maintain a single static angle, losing efficiency as the sun moves across the sky.
*   **Tracking Mounts** rotate the panel to track the sun, reducing the angle of incidence and maximizing energy harvest throughout the day.

---

## Activity

### 1. Research: Solar Efficiency Comparison
We conducted a comparison of the three primary mounting configurations to justify the development of a dual-axis tracking system:

| Configuration | Description | Typical Efficiency Gain | Complexity | Cost |
| :--- | :--- | :---: | :---: | :---: |
| **Fixed Mount** | Panel is set at a fixed angle based on local latitude. | Baseline (0%) | Low | Low |
| **Single-Axis Tracker** | Tracks the sun's East-to-West movement (Azimuth). | 20% - 25% | Moderate | Moderate |
| **Dual-Axis Tracker** | Tracks both Azimuth (East-West) and Elevation (Altitude). | 35% - 40% | High | High |

**Key Findings:**
*   Dual-axis trackers provide the highest efficiency gains, especially in higher latitudes where the sun's elevation changes significantly between summer and winter.
*   For off-grid users, these gains directly reduce the required battery capacity and panel surface area.

### 2. User Needs Assessment
*   **Target Audience:** Residential homeowners in remote areas, agricultural sensor operators, and off-grid enthusiasts (van-lifers, cabin owners).
*   **Primary Requirements:**
    1.  **Autonomy:** System must track the sun automatically without manual adjustment.
    2.  **Durability:** Must withstand outdoor elements (wind, dust, thermal variance).
    3.  **Net Positive Efficiency:** The tracker's motors must consume less than 5% of the total energy generated.
    4.  **Maintainability:** Built with standard, low-cost components (e.g., Arduino, SG90/MG995 servos) for easy replacement.

### 3. Interview Notes Summary
*   **Interviewee 1: Mark, Off-grid Cabin Owner (Oregon, USA)**
    *   *Observation:* "During winter, my fixed panels barely catch 4 hours of direct light. I spend a lot of time clearing snow and wishing I could angle them better without climbing the roof."
    *   *Insight:* Seasonal adjustments and physical accessibility are major pain points.
*   **Interviewee 2: Sarah, Sustainable Tech Enthusiast**
    *   *Observation:* "I love the idea of tracking, but I'm worried about the motors burning out. It needs to be smart enough to stop when it's too windy or dark."
    *   *Insight:* Electronic/mechanical protection systems (sleep modes, wind flat-packing) are critical for reliability.

---

## Deliverables
1.  **Solar Efficiency Comparison Table** (detailed above).
2.  **Target User Needs List** defining autonomy, durability, power, and repair constraints.
3.  **User Interview Log** containing raw observations and core insights.

## Outcome
Students learn to identify engineering needs through human-centered empathy, moving from qualitative user complaints to a clear, research-backed justification for a dual-axis solar tracking project.
