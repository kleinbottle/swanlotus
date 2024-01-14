---
title: "Using `Typst` for Letters"
author: "R (Chandra) Chandrasekhar"
date: 2024-01-01
modified: 2024-01-08
category: Software
tags: A Bit Here, A Byte There, Typesetting, PDF, Academic, LaTeX, Pandoc, Markdown, Letter
summary: 'So, I was eager with anticipation when I first stumbled upon mention of [`Typst`](https://typst.app/) [@typst01;@typst02] which exhorted "Compose papers/theses faster". The [Typst home page](https://github.com/typst/typst) claims it is a "A new markup-based typesetting system that is powerful and easy to learn." Piqued by these promising assertions, I decided to take the plunge with Typst for the specific but express purpose of writing letters. I have chronicled my experiences here.'
opengraphimage: dharma.png
---

[TL;DR](https://dictionary.cambridge.org/dictionary/english/tldr) Open this [PDF letter]({attach}auxiliary/letter.pdf) in a browser and view it. Then see the [file that generated it in Typst]({attach}auxiliary/letter.typ). If you are impressed, read on. Otherwise, give this blog a miss.

## The road from LaTeX to Typst

Despite the ubiquity of emails, each of us has had to write a letter to someone at some time in our lives. In the days of [snail mail](https://www.merriam-webster.com/dictionary/snail%20mail), we used to write by hand, using lightweight paper---specially made for conveying the maximum information for the least weight of paper plus envelope---to minimize postage charges. Those days are well and truly behind us now, to the extent that many of us rarely lift a pencil or put pen to paper, except to sign our names or make some perfunctory calculation.

After the dedicated but computationally wasteful [word processor](https://www.webopedia.com/definitions/word-processor/) was replaced by the general purpose personal computer, it was but a short hop, step, and jump for the PC to simulate a word processor, among its innumerable masquerades, to satisfy our need to be connected.

The advent of the [LaTeX](https://www.latex-project.org/) typesetting system was yet another boon for those of us who laboured, with scissors, typed manuscripts, and pasted photographs, to publish papers in learned journals, especially in fields requiring mathematics, like science and engineering.

Nevertheless, I have always been dismayed by how cumbersome it has been to typeset a simple letter using LaTeX. One has to jump deftly through numerous hoops to get a decent-looking letter, even with the formidable resources of LaTeX.

So, I was eager with anticipation when I first stumbled upon [`Typst`](https://typst.app/) [@typst01;@typst02], which exhorted one to "Compose papers/theses faster". The [Typst home page](https://github.com/typst/typst) claims it is a "A new markup-based typesetting system that is powerful and easy to learn." Piqued by these promising assertions, I decided to take the plunge with Typst, for the specific but express purpose of writing letters. I have chronicled my experiences here.

## A glancing encounter with LaTeX3

I have been using LaTeX to write papers, theses, and books for well nigh thirty years. Thus, I am a beneficiary of the LaTeX ecosystem, and can vouch that the results from it are superior to those from a widely used proprietary "word processing" program which shall remain unnamed.

Despite that, I was somewhat aghast when I saw how the new, experimental LaTeX3 "dialect" or "macro language", or whatever it is called, looked like. It is the successor to the "LaTeX2ɛ" we use now, and while it might not impact end users much, it will certainly impinge upon customizability. The code fragment below is taken from a blog entitled "LaTeX3: Programming in LaTeX with Ease" [@xiang2020], and boy, did it make me uneasy, even to gaze upon it, let alone attempt to understand it:

```latex
\ExplSyntaxOn
% put the title in \l_tmpa_tl
\tl_set:Nn \l_tmpa_tl {My~Title}
% construct the command in \l_tmpb_tl
\tl_set:Nx \l_tmpb_tl {\exp_not:N \section* {\l_tmpa_tl}}
\cs_meaning:N \l_tmpb_tl % macro:->\section *{My Title}
% place the content of \l_tmpb_tl into the input stream
\tl_use:N \l_tmpb_tl
\ExplSyntaxOff
```

If you are as put off as I was by the code above, we are already on the same page. If you are a diehard LaTeX [bhakt](https://www.collinsdictionary.com/dictionary/hindi-english/%E0%A4%AD%E0%A4%95%E0%A5%8D%E0%A4%A4), you are unlikely to be swayed by what I have to say, and might as well stop reading now. If you are a fence-sitter, read along and make up your mind at the end.

## The Pandoc-Markdown duo

By the time these blogs were written, I had already started using [Pandoc](https://pandoc.org/) and its extended [Markdown](https://pandoc.org/chunkedhtml-demo/8-pandocs-markdown.html) in much of what I wrote. They are an efficient duo, and with the help of LaTeX, I have been able to produce a PDF document that bears more than a passing similarity to the HTML5 blog originally generated from Markdown using Pandoc.

So, all was smooth sailing, until I needed to write letters, and was that experience ugly! Suffice it to say that letter writing was not on the minds of most document typesetting designers when they [ideated](https://www.thefreedictionary.com/ideated) their creations.

## The attractions of Typst

Like LaTeX, Typst is a markup-based programmable typesetting system. But it is fast and easy to use. Typst provides easy customizability because the programming syntax used in scripting is human-readable. Sensibly, it acts on objects that have meaning in the context of a document. It affects both the structure and content of a document. Like LaTeX, it produces PDF, which is bound to paper sizes. Should Typst also provide HTML output, it would have a killer-advantage over LaTeX, in addition to its current [unique selling points (USPs)](https://www.techtarget.com/whatis/definition/unique-selling-point-USP).

I think of Typst as a domain-specific language, tuned to its purpose of typesetting documents, while remaining human-friendly. And because it is brash and young---even though it is a bit rough at the edges, regarding line breaks, paragraph breaks, hyphenation, footnotes, and some mathematics---Typst will be sculpted to perfection in time, rather than be venerated as a sacred---but untouchable---relic the way TeX now is. So, let us [heave ho](https://www.collinsdictionary.com/us/dictionary/english/heave-ho)!

### A short detour

Before wetting our feet on the beach of Typst with a letter, I want to showcase a small piece of boxed text that would have taken some time and effort to write in LaTeX, but which is a self-contained, compilable script in Typst. It was produced with help from the [Typst online reference](https://typst.app/docs/reference/) [@typstref]. There is also a fast-responding user community that unselfishly gives help, especially to novices, at the [Discord Typst channel](https://discord.com/channels/1054443721975922748/1088372909111783525).

Suppose we wanted the motto "Dharma protects those who protect it" in English, Sanskrit (संस्कृतम्), and Tamil (தமிழ்), within a coloured box with a border, we could do it so:

![Source code in `Typst` for mottoes in three languages.]({attach}images/dharma-source.png){#fig:dharma-source width=90% .modal-target}

I think that you would agree with me that the file to accomplish this multi-lingual, graphically enhanced text is about as concise as it can be, in order to be complete and self-contained. Moreover, the purpose of the text in the source file is easily comprehended, even by those unfamiliar with Typst. The result is shown in @fig:dharma. If you are incredulous enough to want to compile the source file for yourself, to get the PDF, here are the links for [source ]({attach}auxiliary/dharma-blog.typ) and [PDF]({attach}auxiliary/dharma-blog.pdf).^[Of course, you need the invoked fonts for successful compilation. If you are interested in other languages, whose fonts you do have, you could substitute texts in those languages and compile. To find out which fonts are seen by Typst, execute `typst fonts` in a terminal. I think you will agree that things could not get much simpler.]

![Output from the file `dharma-blog.typ` after compilation into a PDF.]({attach}images/dharma.png){#fig:dharma width=70% .modal-target}

### Available letter templates in Typst

Let us now return to the main task of writing a letter using Typst. First, there are [ready-made templates for letters in Typst](https://github.com/qjcg/awesome-typst#letters) that are available on the web. A cursory glance revealed that these conform to the [DIN 5008 norm](https://en.wikipedia.org/wiki/DIN_5008) which introduces a degree of formality that is out of place in a social or casual letter. Moreover, developing a letter-template from scratch would reveal how simple or complicated a scripting language Typst is. That is the route taken here.

### Sender's address at the top right

It is customary, when writing letters in English, to align the sender's address and the date to the top right of the page and for the recipient's address to be left-aligned, below that.

Just these two text alignments used to take time and effort to achieve in LaTeX. And if you had a dual-signatory letter, things got even more entangled.

Let us see how Typst overcomes these hurdles.

## Toward a letter template in Typst

In LaTeX, we usually depend on packages written by others to do the medium-level lifting for our specific purposes, with simple option-like customizations left to ourselves. In Typst, we are ourselves empowered to customize our document, because template development^[Think `documentclass` in LaTeX.] is not as forbidding a task as it is in LaTeX, which requires a steep learning curve.

The explanations on Typst that I give here might not be exact because I am a learner myself, and also because Typst itself is evolving. As I understand it, Typst allows content and its formatting to be specified in a template that marries the two. This is because the document we are creating may be structured into the natural components we envisage. In this sense, _Typst is a document-templating language_.

Once the template is complete, we invoke it much like a `\documentclass` command in LaTeX. But there the similarity ends. After invoking the template, we fill the content for each structural element of the document and we produce an _instantiation_ of a letter from the template. Here, _Typst is a document-markup and typesetting language_. We then _compile_ the letter into a PDF document and view the end result.

If the appearance of any element is amiss in the PDF, we can correct it at once in the source document and view the result once more. Because compilation is very fast, we can work interactively in this manner to get decent results in a short time.

## Template reflects structure

The text below is the beginning of the template and embodies the document structure of a letter:

![Top of letter template showing the structure of the letter as fields.]({attach}images/letter-template-top.png){#fig:template width=50% .modal-target}

It has the same sequential spatial structure as a letter, starting at the top and moving to the bottom. All the defined fields have self-explanatory names. The content of the fields are set to `none` because this is a template rather than an instance of a letter. Fields with `()` are arrays that will be filled as the letter is fleshed out. The actual values will be set in the specific letter we choose to write. The document template is therefore a _mapping_ or set of key-value pairs in which the value is initialized to `none`. If we want the template to assume default values for unchanging fields like `from_name`, `from_address`, etc., we may set those in the template itself.

Note that at this stage, nothing has been said about page size, text alignment, font name, etc. All that follows _after_ this structure has been laid out.

## Filling the template with content

When the fields in the template are filled in with content or data, we have the letter materializing out of the template.

![Top of actual letter with content filled in.]({attach}images/letter-content-top.png){#fig:letter width=98% .modal-target}

The markup, such as alignment, etc., comes later in the template in the form of code associated with each element, as shown in @fig:align:

![Code for aligning the `from_name` and `from_address` to the right, and the `to_name` and `to_address` to the left.]({attach}images/align-right-left.png){#fig:align width=40% .modal-target}

Note that content appears as strings within double quotes, `"...",` or within brackets. `[...]`. Because a typst file  accommodates both a programming language and some content in the same file, we need to adhere to an unambiguous syntax to discriminate between code and content.

The completed letter is then passed through Typst with the simple command `typst compile <basename.typ>`. We then get as output the PDF of the letter we desire. SVG images, produced by converting the PDF, are shown below, albeit with a transparent background, which highlights the scanned signatures:

:::{.center}
![]({attach}images/letter-1.svg){width=47% .modal-target} ![]({attach}images/letter-2.svg){width=47% .modal-target}
:::

There are other features in the template that require a little more explanation, but we will skip them for now, because we are after a proof of concept that a PDF letter produced by Typst is both of high quality and also easy to typeset. The three example files we have used are:

#.  [`letter-template.typ`]({attach}auxiliary/letter-template.typ): fully commented template file

#.  [`letter.typ`]({attach}auxiliary/letter.typ): actual letter file

#.  [`letter.pdf`]({attach}auxiliary/letter.pdf): PDF output of letter

Do view the end result, [`letter.pdf`]({attach}auxiliary/letter.pdf), in a web browser or PDF reader.

Feel free to modify and use these files to meet your requirements.

## Afterthoughts on Typst

If you could view the PDF letter produced with Typst, I hope you were suitably impressed both by the professional quality of the output, as well as the simplicity of generating it.

The following embellishments on a normal "vanilla-flavoured" letter are shown in the template:

a.  Redaction of content by a simple command.

a.  Multiple signatories, neatly arrayed at the bottom of the letter.

a.  A footer with contact hyperlinks that gives the letter a more business-like tone.

a.  Addition of fields for cc (carbon copy) and encl (enclosures).

a.  Ability to seamlessly integrate a captioned image as an enclosure.

Above all, the letter template and letter have demonstrated that a newcomer to `Typst` can generate a serviceable template and produce a PDF letter, within a few hours of encountering Typst.

I have two suggestions for Typst:

i.  The name `Typst` seems rather infelicitous to pronounce. At the very least there should be an explanation on how to pronounce it. If it were possible, I myself would vote for a more pronounceable name change, though. \emojifont :wink: \normalfont

ii. If `Typst` could be harnessed to produce HTML output, either on its own, or through `Pandoc`, we would be on the cusp of a typesetting revolution, because ePub would also then be possible with a few tweaks, from a single source document.

My overall experience using Typst has been very positive. The fact that I now have a template for letters means that my future letter-writing tasks will be lightened considerably. Count me in as a recent and enthusiastic convert to Typst! Long may it flourish!

## Acknowledgements

As a beneficiary of Typst, I thank its creators, Martin Haug and Laurenz Mädje, for producing a gem of a programmable typesetting system.

I am deeply grateful to my son, Nandakumar Chandrasekhar, for constructing a generalized letter template in Typst at very short notice. He found the task pleasantly rewarding, even though he did not have any prior familiarity with the language.

I thank user 127071 at [Pixabay](https://pixabay.com/photos/storm-damage-oak-tree-break-597217/) for generously permitting use of the image in the example letter.

May I also clarify that the contents of the sample letter, [`letter.pdf`]({attach}auxiliary/letter.pdf), are entirely the result of my flights of fancy, and bear no resemblance to any person, organization, or location. I was having fun imagining things, plain and simple! \emojifont :wink: \normalfont

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./using-typst-for-letters.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/using-typst-for-letters.pdf>
:::
