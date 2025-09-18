#let article(

  title: "Book title",
  author: "Author",
  date: "1970-01-01",

  // The paper size to use.
  paper: "a4",

  // The book's content.
  body,
) = {
  // Set the document's metadata.
  set document(title: title, author: author)

  // Set the body font.
  set text(font: "Lato", fill: rgb("#65656e"))

  // Configure the page properties.
  set page(
    paper: paper,
    background: place(
        top,
        rect(
            width: 2cm,
            height: 100%,
            fill: rgb("#ff546c")
        )
    ),
    margin: (bottom: 1cm, top: 1cm, left: 2.5cm, right: 2.5cm),
  )

  page(align(left + top)[
    // Position the logo using the `place()` function
    #place(
      right, // Align the image to the right of the page
      dx: 2cm, // Move it 2cm horizontally to the right of the right margin
      dy: -1cm, // Move it up 1cm from the top margin
      image("MedNeuro_Logo_digital.png", width: 3cm)
    )

    #h(-1cm) // ident to the left (into the red box)
    #box(
      fill: rgb("#fecfcb"),
      width: 1fr,
      inset: 15pt,
     )[
        #text(size: 2.5em)[*#title*]
    ]
    #v(2em, weak: true)
    // Create a new line for the small labels
    #text(size: 0.7em, fill: rgb("#9a9a9a"))[AUTHOR] #h(1fr) #text(size: 0.7em, fill: rgb("#9a9a9a"))[PUBLISHED]
    #v(-0.5em)
    #text(size: 1em)[#author] #h(1fr) #text(size: 1em)[#date]

    // Insert thin line here
    #line(length: 100%, stroke: (paint: rgb("#9a9a9a"), thickness: 0.2pt))

    #v(3em, weak: true)

    #body
  ])
}