#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.2"

#let primary-color = rgb("1f3b68")
#let secondary-color = rgb("1f2937")
#let accent-color = rgb("2e7d32")

#let section(title, content) = {
  block(
    width: 100%,
    stroke: (left: 3pt + primary-color),
    inset: (left: 10pt, y: 5pt),
    fill: rgb("f8fafc"),
    breakable: true,
    [
      #text(11pt, weight: "bold", fill: primary-color)[#title] \
      #v(0.4em)
      #content
    ]
  )
  v(0.8em)
}

#let sub-section(title, content) = {
  block(
    width: 100%,
    inset: (left: 5pt, y: 2pt),
    [
      #text(10pt, weight: "bold", fill: rgb("475569"))[#title] \
      #v(0.2em)
      #content
    ]
  )
  v(0.5em)
}
