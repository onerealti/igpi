#import "../template.typ": section, sub-section, week-title

#week-title("Week 11", "Communication & Documentation", "Validation")

#section("Aim")[
  To prepare professional engineering documentation including a technical report, an assembly manual, a presentation poster, and a product pitch summary.
]

#section("Topics Covered")[
  - Technical Report Writing
  - Assembly & User Manual Drafting
  - Project Poster Design
  - Technical Elevator Pitch
]

#section("Theory")[
  Communication is a vital engineering skill. Documenting a design clearly in technical reports and user manuals ensures the product can be manufactured, maintained, and operated by others.
]

#section("Activity")[
  === 1. Technical Report Outline
  - *Abstract:* Summary of objectives, dual-axis tracking method, and the 32% solar efficiency gain.
  - *Introduction:* Background on off-grid energy needs and static panel efficiency losses.
  - *Design Methodology:* CAD assembly, tolerances, 3D printing parameters, and Arduino logic.
  - *Testing Results:* Data charts of light level vs. voltage and power consumption logs.
  - *Sustainability Impact:* Payback analysis comparing the plastic print footprint with the energy harvested.
  - *Conclusion & Future Scope:* Design adjustments for larger panel arrays (e.g. 100W+).

  === 2. User Assembly & Operations Manual
  1. *Assembly:* Align the Main Pillar with the Base Plate socket and secure the bottom joint with the provided M4 screws.
  2. *Wiring:* Plug the 4-pin LDR header connector into the marked "Sensor" port on the base box.
  3. *Power:* Connect a regulated 5V DC (minimum 2A) power source to the USB-B port or power terminal.
  4. *Calibration:* If the panel does not align with the light source, adjust the potentiometers on the sensor board until rotation is smooth.
  5. *Maintenance:* Wipe the LDR lenses with a microfiber cloth every 3 months and verify that the mounting screws are tight.

  === 3. Poster Presentation Layout
  - *Problem Statement:* Energy lost in fixed-tilt configurations.
  - *System Architecture:* Exploded CAD assembly and wiring schematics.
  - *Testing Charts:* Generation curves comparing fixed vs. tracking panels.
  - *Specifications:* List of weight, servo torque safety factor, and total BOM cost.

  === 4. Pitch Script: "The Helio-Track S1"
  - *The Problem:* Fixed panels lose up to 40% of potential solar energy because they only align with the sun at noon. For off-grid users, this means buying extra, expensive panels.
  - *The Solution:* The Helio-Track S1 is a 3D-printable, low-cost (\$50) dual-axis tracking mount that automatically tracks the sun.
  - *The Value:* Boosts daily energy generation by over 30%, uses common, easily sourced components that can be printed and repaired anywhere, and automatically sleeps at night to save power.
  - *Closing:* *"Why settle for 60% of your power when you can have 100%? The Helio-Track S1: Making every ray count."*

  === 5. Arduino Nano Control Sketch (C++ Source)
  The physical prototype uses the following non-blocking control loop written in C++ for the Arduino IDE:
  
  ```cpp
  #include <Servo.h>

  // Servo pin definitions
  const int pinAzimuthServo = 9;
  const int pinElevationServo = 10;

  // LDR sensor pin definitions (A0-A3)
  // TL = Top-Left, TR = Top-Right, BL = Bottom-Left, BR = Bottom-Right
  const int pinLdrTL = A0;
  const int pinLdrTR = A1;
  const int pinLdrBL = A2;
  const int pinLdrBR = A3;

  // Servo objects
  Servo servoAzimuth;
  Servo servoElevation;

  // Current angles
  int angleAzimuth = 90;
  int angleElevation = 45;

  // Safety and tracking parameters
  const int threshold = 20;     // Hysteresis deadband to prevent hunting/jitter
  const int delayTime = 50;      // Loop step delay (ms)
  const int nightLimit = 100;    // Threshold below which it goes to standby

  void setup() {
    servoAzimuth.attach(pinAzimuthServo);
    servoElevation.attach(pinElevationServo);
    
    // Initialize to starting positions
    servoAzimuth.write(angleAzimuth);
    servoElevation.write(angleElevation);
    delay(1000);
  }

  void loop() {
    // Read analog values from LDR quadrants
    int valTL = analogRead(pinLdrTL);
    int valTR = analogRead(pinLdrTR);
    int valBL = analogRead(pinLdrBL);
    int valBR = analogRead(pinLdrBR);
    
    // Calculate average light levels
    int avgTop = (valTL + valTR) / 2;
    int avgBottom = (valBL + valBR) / 2;
    int avgLeft = (valTL + valBL) / 2;
    int avgRight = (valTR + valBR) / 2;
    
    int totalLight = (avgTop + avgBottom) / 2;
    
    // Check if it is nighttime
    if (totalLight < nightLimit) {
      // Return to eastern orientation for sunrise
      if (angleAzimuth != 10) {
        angleAzimuth = 10;
        servoAzimuth.write(angleAzimuth);
      }
      if (angleElevation != 15) {
        angleElevation = 15;
        servoElevation.write(angleElevation);
      }
      delay(5000); // Check less frequently in standby
      return;
    }
    
    // Calculate difference errors
    int errorElevation = avgTop - avgBottom;
    int errorAzimuth = avgLeft - avgRight;
    
    // Adjust Elevation Servo (Vertical axis)
    if (abs(errorElevation) > threshold) {
      if (errorElevation > 0 && angleElevation < 90) {
        angleElevation++;
      } else if (errorElevation < 0 && angleElevation > 15) {
        angleElevation--;
      }
      servoElevation.write(angleElevation);
    }
    
    // Adjust Azimuth Servo (Horizontal axis)
    if (abs(errorAzimuth) > threshold) {
      if (errorAzimuth > 0 && angleAzimuth < 170) {
        angleAzimuth++;
      } else if (errorAzimuth < 0 && angleAzimuth > 10) {
        angleAzimuth--;
      }
      servoAzimuth.write(angleAzimuth);
    }
    
    delay(delayTime);
  }
  ```
]

#section("Deliverables")[
  - Technical design report outline.
  - User assembly and operations manual.
  - Pitch deck script and presentation poster layout.
  - Complete Arduino C++ control sketch source code.
]

#section("Outcome")[
  Students learn how to document engineering projects clearly, translating technical details into clear user manuals and visual presentations.
]
