#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "@preview/cetz:0.5.2"

// Global Color Palette
#let primary-color = rgb("1f3b68")    // Navy Blue
#let secondary-color = rgb("1f2937")  // Dark Slate
#let accent-color = rgb("2e7d32")     // Forest Green

// Color-coded section style function (Scientific Academic Header Layout)
#let section(title, content) = {
  block(
    width: 100%,
    below: 1.2em,
    above: 1.2em,
    [
      #text(11pt, weight: "bold", fill: black)[#upper(title)]
      #v(0.2em)
      #line(length: 100%, stroke: 0.75pt + black)
      #v(0.4em)
      #content
    ]
  )
}

// Styled Subsections
#let sub-section(title, content) = {
  block(
    width: 100%,
    below: 0.8em,
    above: 1.0em,
    [
      #text(10.5pt, weight: "bold", fill: black)[#title]
      #v(0.2em)
      #content
    ]
  )
}

// Design Thinking Phase Badge (Simple italic text in subtitle)
#let phase-badge(phase) = {
  text(9.5pt, style: "italic", fill: gray.darken(30%))[Design Thinking Phase: #phase]
}

// Styled Formula Block Card (Centered textbook equations)
#let formula-block(eq, caption: none) = {
  align(center)[
    #block(width: 90%)[
      #eq
      #if caption != none [
        #v(0.2em)
        #text(8.5pt, style: "italic", fill: gray.darken(35%))[#caption]
      ]
    ]
  ]
  v(0.8em)
}

// Styled Week Title Header Card (Traditional academic week header)
#let week-title(week-num, title, phase) = {
  v(0.5em)
  block(width: 100%)[
    #show heading.where(level: 1): it => {
      set text(size: 15pt, weight: "bold", fill: primary-color)
      it
    }
    #grid(
      columns: (1fr, auto),
      column-gutter: 12pt,
      align: (left + bottom, right + bottom),
      heading(level: 1, outlined: true)[#week-num: #title],
      phase-badge(phase)
    )
    #v(0.4em)
    #line(length: 100%, stroke: 1.5pt + primary-color)
  ]
  v(1.2em)
}
