#import "letter-template.typ": letter_template
#show: my_letter => letter_template(
  from_name: "The Dimbleby Family",
  from_address: "The Lodge
Cheswick Village
Middle Upton
Bristol BS16 1GU",
  date: "31 December 2023",  // Date will be displayed as is.
  to_name: "Evergreen Tree Surgeons",
  to_address: "Midtown Lane
Cheswick Village
Stoke Gifford
Bristol BS16 1GU",
  salutation: "Gentlemen,",
  subject: "Pruning of Heritage Oak Trees in the Dimbleby Estate",
  content: my_letter,
  closing: "Sincerely yours,",

  // Supports a maximum of three signatures
  signatures: (
    (
      name: "Lord Albus Dimbleby",
      signature: "albus-bw-60.png"
    ),
    (
      name: "Lady Abigail Dimbleby",
      signature: "abigail-bw-60.png"
    ),
    (
      name: "Sir Austin Dimbleby",
      signature: "austin-bw-60.png"
    )
  ),
  enclosures: (
    // Keep the comma so that the entire string is taken as a list item
    "Photograph of storm damage to an oak tree.",
  ),
  cc: "Mr Jethro Tull",
  figures: (
    (
      image: "storm-damage-597217_1280.jpg",
      caption: [Storm Damaged Oak Tree. Image courtesy of user 127071 at #link("https://pixabay.com/photos/storm-damage-oak-tree-break-597217/")[Pixabay].],
    ),
  ),
  // Type is one of string, email or link
  footer: (
    (
      content: "+44-117-555-5555",
      type: "string",
    ),
    (
      content: "dimblebyfamily@dimbleby.org",
      type: "email",
    ),
    (
      content:"https://dimbleby.org",
      type: "link",
    ),
  ),
)

We are writing to request you to visit The Lodge at the Dimbleby Estate in Cheswick Village to assess a stand of lordly Heritage Oak Trees that have stood the test of time, but whose strength might have been compromised by the wild squall that ripped through the region last week. We are keen to avoid any danger to passers by from weakened roots, branches, and sundry debris.

Your specific task would be to render the grove safe to human traffic while at the same time minimizing the residual damage to the trees. You would, of course, also undertake to clear the area thereafter.

Since this estate is jointly owned by the Dimbleby family, the signatures of all three of us appear in this letter to avoid any legal wrangles in the future.

Kindly contact our Head Groundsman, Mr Jethro Tull, on #box(fill:black, stroke:black, [0117-12345678.]) to fix an appointment to view the trees and give a quotation for the contemplated work.

Thank you kindly.
