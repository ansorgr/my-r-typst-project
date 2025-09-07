  #let article(

  title: "Book title",
  author: "Author",
  date: "1970-01-01",
  species: "default species",

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
    #h(-1cm)
    #box(
      fill: rgb("#fecfcb"),
      width: 1fr,
      inset: 15pt,
     )[
        #text(size: 2.5em)[*#title*]
    ]
    #v(2em, weak: true)
    // Autor und Datum unter der Box
    #text(size: 1.3em)[#author] #h(1fr) #text(size: 1.3em)[#date]

    #body
  ])

}