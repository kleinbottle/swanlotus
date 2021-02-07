---
title: "Static Site Generator Test Page"
author: "R (Chandra) Chandrasekhar"
date: "2020-10-16"
modified: "2020-10-21"
description: "Comprehensive test of Pelican and pandoc-reader Plugin"
category: test
tags: languages, mathematics, pandoc
summary: "This file embodies elements that need to work with [Pandoc](https://pandoc.org/) and the Python-based static site generator (SSG) [Pelican](https://blog.getpelican.com/) to provide fully functional [HTML5](https://html.spec.whatwg.org/), including [MathJax](https://www.mathjax.org/) capabilities."
status: "draft"
---

## Preamble

This file embodies elements that need to work with [Pandoc][pandoc] and the Python-based static site generator (SSG) [Pelican][pelican] to provide fully functional [HTML5][html5], including [MathJax][mathjax] capabilities.

[pandoc]: https://pandoc.org/
[pelican]: https://blog.getpelican.com/
[html5]: https://html.spec.whatwg.org/
[mathjax]: https://www.mathjax.org/

## Pandoc enhanced Markdown

Pandoc-enhanced Markdown is an augmented form of [Markdown][markdown] that is used to generate HTML5 or other available output formats. Eventually, it is expected that Pandoc-enhanced Markdown and [CommonMark][commonmark] will converge into a unitary format.

[markdown]: https://daringfireball.net/projects/markdown/syntax
[commonmark]: https://commonmark.org/

Pandoc is an actively developed, increasingly popular, and rapidly changing format translator. At present, command line options for format conversion may also be passed as a [YAML][yaml] header at the top of a Pandoc-enhanced Markdown file or may be stashed away in a default file residing in the `$HOME/.pandoc/defaults` directory of the user.

[yaml]: https://yaml.org/

My specific defaults file is as follows:

~~~yaml
# swanlotus_html5.yaml
#
# Defaults for generating HTML5 from Markdown using pandoc
# using the Pelican Pandoc Reader plugin
#
reader: markdown+smart+citations+implicit_figures+subscript+superscript
writer: html5
standalone: true
self-contained: false
#
# citeproc: true
# csl: "https://www.zotero.org/styles/ieee-with-url"
#
highlight-style: zenburn
#
resource-path: [".", "/home/chandra/.pandoc/", "/home/chandra/.pandoc/defaults"]
#
html-math-method:
  method: mathjax
  url: "https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"
~~~

## Mathematics

### Equations

Euler's equation, $e^{\pi i} + 1 = 0$ is often considered to be the most poetic equation in all of Mathematics.

Infinite series are also fascinating because, in a manner of speaking, they suggest that "infinity is where the rationals and the irrationals meet". For example, the [Madhava series][madhava] for $\frac{\pi}{4}$ is:
$$
\frac{\pi}{4} = 1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \cdots
$$

[madhava]: https://en.wikipedia.org/wiki/Madhava_series

Pythagoras's theorem may be expressed using Greek letters so:
$\alpha^{2} + \beta^{2} = \gamma^{2}$. Whole numbers satisfying this equation are called [Pythagorean triples][pythtriples]

[pythtriples]: https://mathworld.wolfram.com/PythagoreanTriple.html

### Matrices

Not all conformable matrices are commutative under multiplication. For example, if $A = \left[\begin{smallmatrix}1 & 2\\3 & 4\end{smallmatrix}\right]$ and $B = \left[\begin{smallmatrix}3 & 4\\1 & 2\end{smallmatrix}\right]$ direct multiplication shows that
$$
AB = \left[\begin{matrix}1 & 2\\3 & 4\end{matrix}\right]\left[\begin{matrix}3 & 4\\1 & 2\end{matrix}\right] = \left[\begin{matrix}5 & 8\\13 & 20\end{matrix}\right]
$$
whereas
$$
BA = \left[\begin{matrix}3 & 4\\1 & 2\end{matrix}\right]\left[\begin{matrix}1 & 2\\3 & 4\end{matrix}\right] = \left[\begin{matrix}15 & 22\\7 & 10\end{matrix}\right]
$$
Clearly, $AB\neq BA$.

## Graphics

Graphics can come in two flavours: images and scalable vector graphics. The former have a natural height and width in pixels. The latter does not have a natural height and width, but has an aspect ratio instead. Both types are investigated below.

### Images

Text-rich images are better saved as PNG images, an example of which is shown below. *CSS is used to center the images and size them so:*

~~~css
img {
    padding-top: 1.0em;
    padding-bottom: 1.5em;
    display: block;
    margin-left: auto;
    margin-right: auto;
    min-width: 50%;
    max-width: 90%;
}

figure {
    text-align: center;
    /* For caption */
    font-family: "Source Sans Pro", "Noto Sans", sans-serif;
    font-size: smaller;
}
~~~

Examples of PNG images:

![Large Motivation]({attach}images/motivation.png){ width=90% }

![Small Motivation]({attach}images/motivation.png){ width=50% }

### Scalable Vector Graphics

SVG is the format developed for scalable vector graphics on the Web. One example is the SwanLotus Logo itself:

![Large Logo]({attach}images/swanlotus.svg){ width=90% }

![Small Logo]({attach}images/swanlotus.svg){ width=50% }

## Non-Latin Scripts

### Homeric Greek with accents

| Μῆνιν ἄειδε, θεά, Πηληϊάδεω Ἀχιλῆος
| οὐλομένην, ἣ μυρί’ Ἀχαιοῖς ἄλγε’ ἔθηκε,
| πολλὰς δ’ ἰφθίμους ψυχὰς Ἄϊδι προΐαψεν
| ἡρώων, αὐτοὺς δὲ ἑλώρια τεῦχε κύνεσσιν
| οἰωνοῖσί τε δαῖτα· Διὸς δ’ ἐτελείετο βουλή·
| ἐξ οὗ δὴ τὰ πρῶτα διαστήτην ἐρίσαντε
| Ἀτρεΐδης τε ἄναξ ἀνδρῶν καὶ δῖος Ἀχιλλεύς.

from <https://en.wikipedia.org/wiki/Homeric_Greek>

### Tamil

| கற்க கசடறக் கற்பவை கற்றபின்\newline
| நிற்க அதற்கு தக

| எண்ணென்ப ஏனை எழுத்தென்ப இவ்விரண்டும்\newline
| கண்ணென்ப வாழும் உயிர்க்கு

திருவள்ளுவர், திருக்குறள், 40:391---392

## Tables

Pandoc supports many types of tables.

This table is more a tabulation than a table because it has no rules.

Compound                    Chemical Formula
----------------------      ----------------
Calcium Carbonate           CaCO~3~
Sodium Chloride             NaCl
Potassium Permanganate      KMnO~4~
---------------------------------------------

This table has horizontal rules:
