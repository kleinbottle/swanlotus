// A simple letter template to create letters using Typst.
// Author: Nandakumar Chandrasekhar
// email: navanitachora@gmail.com
// First Written: 31 December 2023
// Last Modified: 08 January 2024
//
// Please email any suggestions and corrections to navanitachora@gmail.com
//

// Function that constructs the letter
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
  // THree types of footer elements are supported: links, emails and arbitrary strings
  if footer != () {
    custom_footer = grid(
      columns: footer.len(),
      rows: 1,
      gutter: 20pt,
      ..footer.map(foot => [
        // Specific styling for links, emails and strings
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

  // Overall page settings
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

  // Global text settings
  set text(
    font: "Noto Serif",
    size: 11pt,
  )

  set par(
    leading: 0.8em // Space between adjacent lines; tuned to the font used
  )

  set block(
    spacing: 1.8em // Spacing between consecutive block paragraphs
  )

  show link: set text(maroon) // Links are colored maroon

  set align(right) // Sender name and address block at top right
  from_name
  linebreak()
  from_address

  set align(right) // Date at top left below sender name and address
  date

  set align(left) // Recipient name and address at the left
  to_name
  linebreak()
  to_address

  v(5pt) // Vertical spacing between recipient address and salutation
  text(salutation) // Dear ... etc.

  linebreak()
  v(5pt) // Vertical spacing between salutation and subject

  // Subject is in semibold, smallcaps; font should support this
  text(weight: "semibold", smallcaps(subject))

  text(content) // Body of letter

  linebreak()
  v(5pt)

  text(closing) // Yours sincerely etc.,

  linebreak()

  // Grid accommodates _up to_ three signatures and signatory names
  grid(
    columns: signatures.len(),
    rows: 2,
    column-gutter: 60pt,
    ..signatures.map(signatory => [
      #image(signatory.signature)
      #signatory.name
    ])
  )

  if cc != none {
    text("cc: " + cc) // Carbon copy; need not appear if not wanted
  }

  v(5pt) // Space between carbon copy and _enumerated_ enclosure list

  // Enclosures need not appear if not wanted
  if enclosures != () {
    set enum(indent: 15pt)
    text("encl: ")
    for enclosure in enclosures {
      enum.item(
        text(enclosure)
      )
    }
  }

  // Needed for the given example; need not appear if not wanted
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
