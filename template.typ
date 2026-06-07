#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "@preview/cetz:0.5.2"

// Global Overhauled Color Palette
#let primary-color = rgb("1e3a8a")    // Deep Royal Blue
#let secondary-color = rgb("334155")  // Slate Gray
#let accent-color = rgb("15803d")     // Forest Green

// Clean Textbook-Style Section Header
#let section(title, content) = {
  heading(level: 2, outlined: false)[#title]
  content
  v(1.5em)
}

// Styled Subsections
#let sub-section(title, content) = {
  block(
    width: 100%,
    below: 1.0em,
    above: 1.2em,
    breakable: true,
    [
      #text(10pt, weight: "bold", fill: secondary-color, font: "Arial")[#title]
      #v(0.2em)
      #content
    ]
  )
}

// Design Thinking Phase Subtitle
#let phase-badge(phase) = {
  text(9.5pt, style: "italic", fill: primary-color.lighten(30%))[Design Thinking Phase: #phase]
}

// Styled Formula Block (Centered textbook equations with descriptors)
#let formula-block(eq, caption: none) = {
  align(center)[
    #block(width: 90%)[
      #eq
      #if caption != none [
        #v(0.3em)
        #text(8.5pt, style: "italic", fill: gray.darken(35%))[#caption]
      ]
    ]
  ]
  v(1.0em)
}

// Styled Week Title Header Card (Traditional academic week header)
#let week-title(week-num, title, phase) = {
  v(1.0cm)
  block(width: 100%)[
    #show heading.where(level: 1): it => {
      text(15pt, weight: "bold", fill: primary-color, font: "Arial")[#it.body]
    }
    #text(9pt, weight: "bold", fill: gray.darken(30%), tracking: 1.5pt, font: "Arial")[#upper(week-num)] \
    #v(0.2em)
    #heading(level: 1, outlined: true)[#title] \
    #v(0.4em)
    #phase-badge(phase)
    #v(0.5em)
    #line(length: 100%, stroke: 1.5pt + primary-color)
  ]
  v(1.5em)
}
