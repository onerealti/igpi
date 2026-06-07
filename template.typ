#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "@preview/cetz:0.5.2"

// Global Color Palette
#let primary-color = rgb("1f3b68")    // Navy Blue
#let secondary-color = rgb("1f2937")  // Dark Slate
#let accent-color = rgb("2e7d32")     // Forest Green

// Color-coded section style function
#let section(title, content) = {
  let border-color = primary-color
  let bg-color = rgb("f8fafc")
  
  if title == "Aim" or title == "Objectives" {
    border-color = rgb("0284c7") // Sky Blue
    bg-color = rgb("f0f9ff")
  } else if title == "Outcome" {
    border-color = rgb("16a34a") // Forest Green
    bg-color = rgb("f0fdf4")
  } else if title == "Theory" {
    border-color = rgb("475569") // Slate Gray
    bg-color = rgb("f8fafc")
  } else if title == "Activity" or title == "Activity & Findings" {
    border-color = primary-color
    bg-color = rgb("ffffff")
  } else if title == "Deliverables" or title == "Materials Required" or title == "Topics Covered" {
    border-color = rgb("d97706") // Amber
    bg-color = rgb("fffbeb")
  }
  
  block(
    width: 100%,
    stroke: (left: 4pt + border-color, rest: 0.5pt + border-color.lighten(80%)),
    inset: (left: 12pt, right: 10pt, y: 8pt),
    radius: (right: 4pt),
    fill: bg-color,
    breakable: true,
    [
      #text(11pt, weight: "bold", fill: border-color)[#title] \
      #v(0.5em)
      #content
    ]
  )
  v(1em)
}

// Styled Subsections
#let sub-section(title, content) = {
  block(
    width: 100%,
    stroke: (left: 1.5pt + rgb("64748b")),
    inset: (left: 8pt, y: 2pt),
    [
      #text(10.5pt, weight: "bold", fill: rgb("334155"))[#title] \
      #v(0.3em)
      #content
    ]
  )
  v(0.6em)
}
