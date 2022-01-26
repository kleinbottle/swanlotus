---
title: "Using Font Awesome in PDF, HTML, and MS Word documents"
author: R (Chandra) Chandrasekhar
date: 2022-01-20
category: Philosophy
tags: résumé, curriculum vitae, icons, fonts, LuaLaTeX, graphics, coding, The Simkin Chronicles
summary: ""
opengraphimage: "envelope-popup.png"
---

## Make me a résumé, bake me a résumé

My friend, the polymath Solus "Sol" Simkin, sauntered into my relaxation-cubicle one morning and muttered, "Make me a résumé, bake me a résumé". Noticing that I was not [on the same page](https://www.macmillandictionary.com/dictionary/british/be-on-the-same-page), he quickly asked, "Do you know the difference between a [CV (curriculum vitae)](https://www.thefreedictionary.com/curriculum+vitae) and a [résumé](https://www.collinsdictionary.com/dictionary/english/résumé)?"

When I said that it was the same thing, named differently across the Atlantic divide, he grinned and said "Gotcha!" and remained tantalizingly silent. After discussing other matters, he left, and I was not to see him again for the better part of three days.

Meanwhile, I tried to buttress my case by mining the Web for the differences in nuance and usage between a CV and a résumé. I sought and pounced upon the charming book [_Divided By A Common Language: A Guide to British and American English_](https://www.amazon.in/Divided-Common-Language-Christopher-Davies/dp/0618911626/) by Christopher Davies. In it, I discovered that a CV in the UK is called a résumé in the US, but that a CV is typically longer than a résumé. _So, a condensed CV was indeed called a résumé in the US_.

In search of more details, I happened upon [this explanation of the distinction between the two](https://icc.ucdavis.edu/materials/résumé/résumécv).

Armed with this authoritative knowledge, I was prepared for Sol the next time we met. Somewhat piqued, I asked him why he sniggered at me the last time, when I had been correct---even if not complete---in my answer.

He apologized and said, "I enjoy seeing you [stew](https://www.thefreedictionary.com/stew) sometimes. That's what friends are for: to stew each other on occasion. Since we are into culinary metaphors, let me share with you more details of my latest commission.

"A youngish tech-type wandered into my office recently and said, 'Make me a résumé, bake me a résumé. But make it the best. I want a résumé to outzip all others.'"

"I took that to mean that he wanted a short but piquant résumé, that so stood out from all the others, that it would bag him whatever job he wanted."

I then asked him what his non-negotiable requirements were. His reply was prompt, as though he had rehearsed for this very question. He said, 'I want dinky [_Font Awesome_](https://fontawesome.com/) icons ![]({attach}images/font-awesome.svg){width=2.5%} for my contact details.'

"Anything else?"

"Only that the résumé must be generated from the _same_ source document to give _identical_ outputs in three formats: PDF, HTML, and `docx`. That will make maintenance a [cinch](https://www.merriam-webster.com/dictionary/cinch). No other stipulations."

## The yeast gets to work

Sol continued: "For the world of me, I didn't know what Font Awesome was, let alone its icons. I discovered that it was in its sixth incarnation by the time I got acquainted with it. In any case, I didn't think it would strain my brain to insert graphical icons into a résumé to satisfy a client-stipulation.

But how wrong I was! It cost me a week in time to troubleshoot and meet the single source document requirement, let alone the Font Awesome icons. In the end, though, [slogging and slugging it out](https://idioms.thefreedictionary.com/slog%2Fslug+it+outslogging), I managed the feat. I am sure you don't want to hear about it."

He knew my weakness---_I crave the thing denied_---and used it to tease me. So, I had to coax and cajole Sol to narrate to me yet another of his [scriptorial](https://www.lexico.com/definition/scriptorial) escapades, leaving out no essential clue so, that I could track his mental trajectory and experience for myself [the thrill of the chase](https://www.collinsdictionary.com/dictionary/english/the-thrill-of-the-chase). Exuding the essence of amicability, Sol agreed to treat me to another of his tales of cerebral sleuthing.

## Font Awesome and Unicode real-estate

Sol recounted that Font Awesome was an atypical font. Its [glyphs](https://en.wikipedia.org/wiki/Glyph) did not fit into standard [Unicode blocks](https://en.wikipedia.org/wiki/Unicode_block) reserved for the symbols of a natural language or academic discipline. The fonts did not represent a finite alphabet, but were rather an extensible set of hieroglyphs, not unlike [emoticons](https://en.wikipedia.org/wiki/Emoticon). And while the latter have been recognized and given their own [emoticon Unicode block](https://en.wikipedia.org/wiki/Emoticons_(Unicode_block)), the Font Awesome icons are yet to receive their due recognition through allocation of dedicated Unicode real estate.

Accordingly, Font Awesome started out using unallocated areas of Unicode, defined as the [Private Use Area (PUA)](https://www.unicode.org/faq/private_use.html), which at present can accommodate a total of 137,468 private-use characters. Given that Font Awesome is open-ended at present, it remains to be seen whether this unallocated Unicode PUA will prove sufficient for its future growth.

Moreover, the PUA may legitimately be used by other fonts as well. So, the problem of collisions---two _different_ fonts using the _same_ Unicode location in the PUA---remains a possible and unresolved issue. Such ambiguity might give rise to unpredictable output due to glyph clashes.

Font Awesome has in the past strayed away from the PUA, and [encroached upon the domains reserved for other purposes](https://fontawesome.com/v5.15/how-to-use/on-the-web/advanced/css-pseudo-elements). This has thankfully been corrected in more recent versions. Sol decided to avoid altogether the complications of unwitting encroachment by using the [latest version](https://fontawesome.com/download#) of Font Awesome.

## Glyphs: characters, numbers, or images?

When Sol downloaded the desktop version of the latest Font Awesome free version, he noticed when rummaging into the downloaded files that each glyph had a name, not unlike the name we give to letters of the Latin alphabet. The downloaded fonts shared a [triune](https://www.collinsdictionary.com/dictionary/english/triune) property:

#.  Each glyph had a _name_. For example, ![]({attach}images/font-awesome.svg){width=2%} was called, not unsurprisingly, _font-awesome_ since the flag it embodies is the branding chosen by Font Awesome for itself.

#.   As an [OpenType](https://en.wikipedia.org/wiki/OpenType) or OTF font, each glyph has a [_Unicode code point_](https://en.wikipedia.org/wiki/Code_point). For example the  _font-awesome_ icon has the [hexadecimal](https://en.wikipedia.org/wiki/Hexadecimal) location code `f425` or `F425`.

#.  In addition to its expression as a glyph in an OTF font, each symbol is also available as a _scalable vector image_ in [SVG](https://developer.mozilla.org/en-US/docs/Web/SVG) format. This is unsurprising as we are dealing with a character set of icons or images.

Sol told me that he was not at first aware of this triple correspondence, but the he accidentally stumbled upon it as he delved deeper into downloaded the Font Awesome files. He said that the triad of a named glyph, a Unicode point, and an SVG icon each came to his rescue for output to PDF, HTML, and `docx`.

### Two additional layers of identity

Font Awesome is distributed in two versions: a free version available at no charge, and a paid version called `Font Awesome Pro`. Over and above that, the free version comes in three _flavours_:

- regular, 
- solid, and 
- brands.

The first two contained icons for general use while the third was explicitly for the logos of brands. Sol confided that kill was needed to invoke the correct set of fonts in the appropriate font file to get the desired output. "[A miss is as good as a mile, mind you](https://idioms.thefreedictionary.com/a+miss+is+as+good+as+a+mile)," he said.

With this convoluted introduction, Sol excused himself to rush away for an appointment. It would be a week before he took up the dangling thread of his narrative again.

## Single source file to multiple targets

When next we met, Sol started explaining how he fulfilled the stipulation of a single source file that would generate three target files in three different formats: PDF, HTML, and `docx`.

Sol had relaxed in his _cogitation hammock_ and decided that he would ruminate on the vital requirement of a single source document to generate output in three formats. His first thought was to do it all in [MS Word](https://www.microsoft.com/en-in/microsoft-365/word) and use its built-in conversion capabilities to generate the PDF and HTML outputs. But there was a mute dissension at the background of his mind that refused to be silenced. He decided to let the creative yeast do its work undisturbed, and left the problem to ferment.

A few days later, it struck him that if Microsoft Word changed its default format as a result of program development in the same way that PDF version 1.4 gave way to PDF 1.5, or as HTML 4 deferred to HTML 5, his work would not survive the march of time. The more he thought about it, the more he became convinced that the most granitic of formats would be _pure text encoded in_ [_UTF 8_](https://en.wikipedia.org/wiki/UTF-8).

He rued that he was now further away from his goal than ever before. He now had to convert into three formats, not two, and that too, unaided by any professional program. All the responsibility was his alone.

There was a nagging temptation to revert in silent acquiescence to MS Word and [put paid](https://www.phrases.org.uk/meanings/put-paid-to.html) to the issue. But each time, he had to contend with the disquiet in his heart. It was a heavy feeling that he was running away from a hard problem rather than facing it [manfully](https://www.dictionary.com/browse/manful). He felt that he would sooner or later be forced to convert a single plain text source to multiple formatted documents: a challenge better faced now than later.

### Pandoc to the rescue

He first thought of [LaTeX](https://en.wikipedia.org/wiki/LaTeX) with which he was familiar. It had several paths to convert output to PDF and also HTML. While there was no guarantee of foolproof conversion, it seemed promising. But the [dealbreaker](https://dictionary.cambridge.org/dictionary/english/dealbreaker) was that there was no route to MS Word's `.docx` format. Sadly, he let his firstborn inspiration take flight.

He next surfed the Web for [parsing](https://themightyprogrammer.dev/article/parsing) programs that wielded the power of computer science to guarantee that the conversion would be almost error-free if indeed not error-free. He needed to convert formatted text into a structure like an [abstract syntax tree](https://en.wikipedia.org/wiki/Abstract_syntax_tree) that could again be re-converted into formatted text. He thought it strange that the most robust route from _A_ to _B_ was through _C_, but granted that it could be so sometimes.

He spent the next few days sweeping the Web for "format converters using parsing". But the results he got were about _data_ parsing: extraction of possibly useful data from documents. He decided to set that right by specifying "document format converters using parsing". But again he got mired in results for _parsing of data extracted from documents_.

Somewhat vexed, he tried "document format converters" and was led to a promising cloud-based service called [Convertio](https://convertio.co/document-converter/). Another was [Online-Convert.com](https://document.online-convert.com/). But the more he thought about it, the less inclined was he to use such services. For one, he could have stuck to his original idea of using MS Word as his input format, and using its built-in converters for PDF and HTML. No uploading to the cloud. No security hassles. No fuss. No muss. But that was a road he wished to avoid.

He stared at his non-negotiable specifications once again. It was then that he realized that two of the three stipulated formats, PDF and HTML, were publicly specified, standardized specifications. Only the `.docx` format was proprietary. Sol decided to search using "open source document format converter". The first result showed [Pandoc](https://pandoc.org/).

He first checked whether Pandoc could take in plain text and put out the three formats. After confirming that it could, he realized that it would be prudent to start off with [Markdown](https://daringfireball.net/projects/markdown/) and use that source to generate the other three.

He next took a look at the somewhat [intricate network diagram](https://pandoc.org/diagram.svg) on the right of the Pandoc home page. The plethora of formats available convinced him that Pandoc would future-proof his work in case even more output formats were required by his client later on. Sol decided to pitch his conversion tent squarely on the Pandoc field.

## A skeleton in Markdown

"A résumé must have content: in this case, my client's", said Sol, stating the blindingly obvious. "But for our intellectual excursion, we shall skip the content and replace it by abstract placeholders. That way, I keep my client's details confidential, and we will not [muddy the waters](https://idioms.thefreedictionary.com/muddy+the+waters) with needless detail. In fact, I propose to show you only one simple line of pseudo content, which is also the _single line_ where Font Awesome makes its debut."

Sol then showed a snippet of a text file with a single line of text as reproduced below:

```markdown
:::::center
[Joe Bloggs]{.larger}\
[[mail icon] <joebloggs@mydomain.com> | [mobile icon] +1-555-3456-7890 | [LinkedIn icon] [Link to LinkedIn account of Joe Bloggs] | [Github icon] [Link to Github account of Joe Bloggs]\{.smaller}
:::::
```
He explained that the four icons above were a sufficient complement of Awesome Font icons to demonstrate [proof of concept](https://en.wikipedia.org/wiki/Proof_of_concept), and that any additions would simply translate to "more of the same".

"Now that the scaffolding is in place, let us get to [the meat of the matter](https://idioms.thefreedictionary.com/meat+of+the+matter)."

### The atom icon

Schooled as he was Greek philosophy, Sol decided that the atom would be the fittest icon to begin his acquaintance with Font Awesome. He would build hisknowledge atom by atom.

He went to the [latest icons page](https://fontawesome.com/v6.0/icons), selected `Free` and typed "atom". From the gallery of 32 icons, he selected the icon that best met his expectations. The popup screen he saw is shown below: 

![]({attach}images/atom.png){width=90%}

Its Unicode code point was `f5d2`, its name was `atom`, and its SVG icon file was called `atom.svg`. He was seeing the `Solid` flavour of the icon. If he selected `Solid`, the lines became thicker. Interestingly, the code snippet for HTML was also given with the icon as
```html
<i class="fa-solid fa-atom"></i>
```
where the [`<i>` stood for "Idiomatic Text element"](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/i).

Not one to take things at face value, Sol immediately tested the HTML invocation on his browser [hoping against hope](https://www.thefreedictionary.com/hoping+against+hope) that the given incantation _alone_ could automagically conjure up the envelope icon. When it did not, Sol muttered to himself that more work was in store.

He wracked his brain, and after some effort, decided to simulate his web browser in his head by attempting to "act" like the browser. "I will assume that the given incantation is meaningful and correct. But it is in HTML, not JavaScript, which is the native language of a browser. If I were a web browser, what would I need _in addition to the incantation_ to display the envelope icon?  How does my browser _know_ what that incantation means? It was not born with that knowledge preprogrammed in it somehow. _So who tells it what the incantation means, and where to look for that icon?_" With that thought uppermost in his mind, Sol retired for the night.

### A second look at the atom icon

When Sol took a second look at the problem the next day, he was aghast that he had missed many clues strewn all over the Font Awesome website that would have guided him in the right direction. Not one to waste time on regret, he started to assemble the sequence of instructions and follow them meticulously.

Sol loaded [this page](https://fontawesome.com/v6.0) to be greeted by two two large selection buttons:

![]({attach}images/start-for-free.png){width=90%}

And when he selected the `Start for Free` button, he was led to a clear and [detailed algorithm](https://fontawesome.com/v6.0/docs/web/setup/quick-start) on how  to set up and use Font Awesome. Central to everything was a simple one-liner customized for him that yielded an HTML script when he clicked [`Set up a Kit`](https://fontawesome.com/kits). The script he got looked like this:

```html
<script src="https://kit.fontawesome.com/<some-hex-digits.js>" crossorigin="anonymous"></script>
```

and it was supposed to be included in the `<head>` of the HTML document. This one line was the automagical incantation that Sol was looking for the previous night. He tried it out on the `atom` icon and got: <i class="fa-solid fa-atom"></i>. Voila!

The maroon colour arose from a little CSS fragment that set the colour of the icon to maroon with 

```css
.fa-solid {
    color: maroon;
}
```

This meant that _all_ Font Awesome Solid icons will show up in maroon. If he wanted another `Solid` icon, say, `paper-plane`, to show up in a blue-green colour, he would need to override this setting with

```css
.fa-paper-plane {
    color: #004369; /* a deep shade of blue-green */
}
```

to got a correctly coloured `paper-plane` icon: <i class="fa-regular fa-paper-plane"></i>

### The four-icon alphabet

Inspired by his success and encouraged by the ease of use of the icons in HTML, Sol decided on the four-icon alphabet he would use for the placeholders in his single-line résumé template. The icon colour was set by this CSS fragment:

```css
.fa-envelope, .fa-mobile-screen-button, .fa-linkedin-in, .fa-github {
  color: #2e8bc0;
}
``` 

He laid out his data so:

| Unicode | Flavour | Name | Icon | Glyph |
|:--------|:--------|:-----|:----:|:-----:|
| `f0e0` | Regular | `envelope` | <i class="fa-regular fa-envelope"></i> |  |
| `f3cd` | Solid | `mobile-screen-button` | <i class="fa-solid fa-mobile-screen-button"></i> |  |
| `f0e1` | Brands | `linkedin-in` | <i class="fa-brands fa-linkedin-in"></i> |  |
| `f09b` | Brands | `github` | <i class="fa-brands fa-github"></i> |  |



Sol told me, "Notice that the Glyph column only shows up [tofu rectangles](https://en.wikipedia.org/wiki/Noto_fonts#Origin_of_Noto_name). This is because the browser has not been instructed on which fonts to use for these specialized characters.

"On my text editor, the glyphs I see in column 5 correspond exactly with those displayed on the web page in column 4. To get the browser to display the glyphs without ` <i class=...></i>` invocation requires more effort than I am willing to expend right now. So, I took the easy route here. :wink:"

## Wrapping up the HTML version

"Wait a minute," I said. What about the PDF and the `.docx` versions?

"Patience! Patience," he replied. "Markdown was devised to play well with HTML. Pandoc has carried that ball far and wide into other formats. All I have told you thus far applies only to HTML. Let me wrap it up first before moving on top PDF. In HTML, the one-line template becomes:

```html
Joe Bloggs
<i class="fa-regular fa-envelope"></i> <joebloggs@mydomain.com>\
<i class="fa-solid fa-mobile-screen-button"></i> +1-555-3456-7890\
<i class="fa-brands fa-linkedin-in"></i> [LinkedIn account of Joe Bloggs]()\
<i class="fa-brands fa-github"></i> [Github account of Joe Bloggs]()
```

which looks like this:

:::::center
[Joe Bloggs]{.larger}\
[<i class="fa-regular fa-envelope"></i> <joebloggs@mydomain.com> | 
<i class="fa-solid fa-mobile-screen-button"></i> +1-555-3456-7890 | 
<i class="fa-brands fa-linkedin-in"></i> [LinkedIn]() |
<i class="fa-brands fa-github"></i> [Github]()]{.smaller}
:::::
<br> <!--Increase vertical spacing.-->
The styling like font size and text-alignment is accomplished using CSS." With a look of accomplishment, Sol ended his narration and asked me whether I honestly wanted to hear how the PDF version was generated. When I nodded in eager assent, he said he would take up the thread on another day.

## The route to PDF

"The single most important difference between HTML on the one hand, and PDF and `.docx` on the other is that the latter two are bound to a physical paper size. The maximum width of text in these two formats are constrained by the type of paper used. I will assume either A4 or US letter sizes for the output.

"The second aspect of these latter two formats is that the requisite font must reside on the device generating the output. Moreover it is possible, with some effort, to [embed]() the fonts within the document so that another person viewing the document on another device _without_ the fonts on his or her system can still see document with the intended fonts."

With this preamble, Sol started on his story of how he got the PDF version of the résumé.

### Does the font exist on my desktop?

He said he used a combination of Pandoc and the TeX/LaTeX typesetting eco-system to generate the PDF. A very important first step was to confirm that the desired glyphs are indeed provided by the font in question. For that, Sol used `albatross`. This utility may be invoked either with the Unicode glyph itself as argument, or with the Unicode code point prefixed either as `0x` or as `U+`.

Sol tried the `albatross U+f3cd` and got `Font Awesome 6 Free Solid` as the only result. But when he typed `albatross 0xf0e0` he got a total of seven fonts, including `Font Awesome 6 Free Regular` which he intended to use. This underscored the importance of the need to specify the font to be used to avoid the same glyphs from a different font, possibly with an incompatible style, or worse, of an entirely different glyph as well because the location is the PUA area of the font.

The results he got were sufficient for Sol to write the following fragments in LaTeX:

```latex
\newfontfamily{\regulariconfont}{Font Awesome 6 Free Regular}[Color=Grey]
\newfontfamily{\solidiconfont}{Font Awesome 6 Free Solid}[Color=Grey]
\newfontfamily{\brandsiconfont}{Font Awesome 6 Brands}[Color=Grey]
%
\newcommand{\faEnvelope}{\regulariconfont\ ^^^^f0e0\normalfont}
\newcommand{\faMobile}{\solidiconfont\ ^^^^f3cd\normalfont}
\newcommand{\faLinkedin}{\brandsiconfont\ f0e1\normalfont}
\newcommand{\faGithub}{\brandsiconfont\ ^^^^f09b\normalfont}
```

```latex
\begin{center}
{\Large Joe Bloggs}\\
{\small \faEnvelope\ \href{mailto: joebloggs@mydomain.com}{joebloggs@mydomain.com} | \faMobile\ +1-555-3456-7890 | \faLinkedin\ \href{https://www.linkedin.com/in/joe-bloggs}{LinkedIn account of Joe Bloggs} | \faGithub\ \href{https://github.com/joebloggs}{GitHub account of Joe Bloggs}}\normalsize
\end{center}
```

The PDF fragment imaged below, matches the HTML output shown earlier.

![Note that Font Awesome icons are grey following the settings above.]({attach}images/pdf-template.png){width=90%}

Sol concluded by saying that the following files, in the order of their invocation in the [`make-opening`]({auxiliary}/make-opening) script, were used to generate the PDF output from Pandoc's Markdown source:

#.  [`latex-defaults.yaml`]({attach}auxiliary/latex-defaults.yaml)
#.  [`latex-font.yaml`]({attach}auxiliary/latex-font.yaml)
#.  [`latex-header-includes.tex`]({attach}auxiliary/latex-header-includes.tex)
#.  [`latex-before-body-includes.tex`]({attach}auxiliary/latex-before-body-includes.tex)
#.  [`latex-résumé-opening.pdf`]({attach}auxiliary/latex-résumé-opening.pdf)
#.  [`latex-résumé-opening.txt`]({attach}auxiliary/latex-résumé-opening.txt)

I was lost in admiration for his tenacity, which bent fonts and typesetting systems to his will, to generate near-identical output in two different formats.

## What about `.docx`?

It was some weeks before I met Sol again in an unhurried setting. I then reminded him to finish his saga with Font Awesome by explaining how he generated the `docx` version of the résumé opening.
