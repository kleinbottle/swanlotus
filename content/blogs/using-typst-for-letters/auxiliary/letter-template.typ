#let letter_template(
  from_name: none,
  from_address: none,
  date: none,
  to_name: none,
  to_address: none,
  subject: none,
  salutation: none,
  content: none,
  closing: none,
  signatures: (),
  enclosures: (),
  cc: none,
  figures: (),
  footer: ()
  ) = {

  // Initialize custom_footer to empty string
  let custom_footer = ""

	// If footer is given as input construct the footer
  if footer != () {
    custom_footer = grid(
      columns: footer.len(),
      rows: 1,
      gutter: 20pt,
      ..footer.map(foot => [
        #if foot.type == "link" {
          text(link(foot.content), size: 7pt, font: "Fira Mono", fill: maroon)
        }
        #if foot.type == "email" {
          text(link("mailto:" + foot.content), size: 7pt, font: "Fira Mono", fill: maroon)
        }
        #if foot.type == "string" {
          text(foot.content, size: 7pt, font: "Fira Mono", fill: maroon)
        }
      ])
    )
  }

  set page(
    paper: "a4",
    margin: (
      top: 20mm,
      left: 20mm,
      bottom: 20mm,
      right: 20mm
    ),
    footer: align(center, custom_footer)
  )

  set text(
    font: "Noto Serif",
    size: 11pt,
  )

  set par(
    leading: 0.8em
  )

  set block(
    spacing: 1.8em
  )

  show link: set text(maroon)

  set align(right)
  from_name
  linebreak()
  from_address

  set align(right)
  date

  set align(left)
  to_name
  linebreak()
  to_address

  v(5pt)
  text(salutation)

  linebreak()
  v(5pt)
  text(weight: "semibold", smallcaps(subject))

  text(content)
  text(closing)

  linebreak()
  grid(
    columns: signatures.len(),
    rows: 2,
    column-gutter: 60pt,
    ..signatures.map(signee => [
      #image(signee.signature)
      #signee.name
    ])
  )

  if cc != none {
    text("cc: " + cc)
  }

  v(5pt)
  if enclosures != () {
    set enum(indent: 15pt)
    text("encl: ")
    for enclosure in enclosures {
      enum.item(
        text(enclosure)
      )
    }
  }

  if figures != () {
    show figure.caption: set text(font: "Source Sans Pro", size: 9pt)
    for fig in figures {
      figure(
        image(fig.image, width: 80%),
        caption: fig.caption
      )
    }
  }
}
