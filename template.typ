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

// Design Thinking Phase Badge
#let phase-badge(phase) = {
  let bg = rgb("1f3b68")
  let fg = white
  
  if phase == "Empathize" {
    bg = rgb("e0f2fe")
    fg = rgb("0284c7")
  } else if phase == "Define" {
    bg = rgb("fef3c7")
    fg = rgb("d97706")
  } else if phase == "Ideate" {
    bg = rgb("dcfce7")
    fg = rgb("16a34a")
  } else if phase == "Prototype" {
    bg = rgb("f3e8ff")
    fg = rgb("891b1b")
  } else if phase == "Testing" or phase == "Iteration" or phase == "Validation" {
    bg = rgb("fee2e2")
    fg = rgb("dc2626")
  } else {
    bg = rgb("f1f5f9")
    fg = rgb("475569")
  }
  
  block(
    fill: bg,
    inset: (x: 8pt, y: 4pt),
    radius: 3pt,
    [#text(size: 8.5pt, weight: "bold", fill: fg)[#phase]]
  )
  v(0.3em)
}

// Styled Formula Block Card
#let formula-block(eq, caption: none) = {
  block(
    width: 100%,
    stroke: (left: 2.5pt + rgb("16a34a"), rest: 0.5pt + gray.lighten(60%)),
    inset: (x: 12pt, y: 10pt),
    radius: (right: 4pt),
    fill: rgb("f0fdf4"),
    [
      #align(center)[#eq]
      #if caption != none [
        #v(-0.2em)
        #align(center)[#text(8.5pt, style: "italic", fill: gray.darken(35%))[#caption]]
      ]
    ]
  )
  v(0.8em)
}
