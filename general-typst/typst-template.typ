#import "@preview/lucide:0.1.0": *

#let article(

  title: none,
  author: none,
  date: none,

  // Arguments to receive the translated labels
  author-label: none,
  published-label: none,

  // The paper size to use.
  paper: "a4",

  // The book's content.
  body,
) = {
  // Set the document's metadata.
  set document(title: title, author: author)
  set heading(numbering: "1.")
  // Set the body font.
  set text(font: "Lato", fill: rgb("#65656e"))

  // Configure the page properties.
  set page(
    paper: paper,
    background: place(
        top,
        rect(
            width: 1cm,
            height: 100%,
            fill: rgb("#0d0486ff")
        )
    ),
    margin: (bottom: 1cm, top: 1cm, left: 2.5cm, right: 2.5cm),
  )

  page(align(left + top)[
    #h(-1.9cm) // ident to the left (into the red box)
    #box(
      fill: rgb("#cbddfeff"),
      width: 1fr,
      inset: 15pt,
     )[
        #text(size: 2.5em)[*#title*]
    ]
    #v(2em, weak: true)
    // Create a new line for the small labels
    #text(size: 0.7em, fill: rgb("#9a9a9a"))[AUTHOR] #h(1fr) #text(size: 0.7em, fill: rgb("#9a9a9a"))[PUBLISHED]
    //#text(size: 0.7em, fill: rgb("#9a9a9a"))[#author-label] #h(1fr) #text(size: 0.7em, fill: rgb("#9a9a9a"))[#published-label]
    #v(-0.5em)
    #text(size: 1em)[#author] #h(1fr) #text(size: 1em)[#date]

    // Insert thin line here
    #line(length: 100%, stroke: (paint: rgb("#9a9a9a"), thickness: 0.2pt))

    #v(3em, weak: true)

    #body
  ])
}