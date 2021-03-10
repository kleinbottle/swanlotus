---
title: Image format conversions
author: R (Chandra) Chandrasekhar
date: 2021-03-07
modified: 2021-03-07
category: Software
tags: image formats, Linux, PDF, PNG
summary: 
opengraphimage: 
status: draft
---

## Two varieties of images

Image formats come in two broad flavours: 

- [raster](https://en.wikipedia.org/wiki/Raster_graphics) or [bitmap](https://en.wikipedia.org/wiki/Bitmap) graphics, and 
- [vector graphics](https://en.wikipedia.org/wiki/Vector_graphics).

The former leads to image blockiness or [pixellation](https://en.wikipedia.org/wiki/Pixelation) at high magnifications, as shown in +@fig:raster, while the latter scales without degradation when magnified, as illustrated in +@fig:vector.

![Raster graphics image]({attach}images/raster.png){#fig:raster width=50%}

![Vector graphics image]({attach}images/vector.svg){#fig:vector width=50%}

### Raster Graphics

There are dozens of image formats, including:

#.  The [Tag(ged) Image File Format (TIFF)](https://en.wikipedia.org/wiki/TIFF) which is used in printing;
#.  The [Joint Photographic Experts Group(JPEG)](https://jpeg.org/about.html) format for scene and portrait image display and compression; and
#.  The [Portable Network Graphics (PNG)](http://www.libpng.org/pub/png/) format, optimized principally for text-based image display and compression.

All three formats employ raster graphics and are represented as rectangular arrays of [pixels](https://en.wikipedia.org/wiki/Pixels).

### Vector Graphics

The two principal vector graphics formats are:

#.  The [Portable Document Format (PDF)](https://en.wikipedia.org/wiki/PDF) format which is used primarily in archival quality electronic and printed documents; and
#.  The [Scalable Vector Graphics (SVG)](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) format which is used for graphics display on web browsers.

Both these formats yield images, which consist of mathematically defined points, lines, curves, and shapes. Whereas PDF is not human-readable, SVG is text-based and is designed to be both human- and machine-readable.

## Format conversions

For a variety of reasons, it is often necessary to convert from one image format to another. There are four broad possibilities for this:

a.  raster to raster;
a.  raster to vector;
a.  vector to raster; and
a.  vector to vector

We consider each of these in turn using [platform-neutral](https://itlaw.wikia.org/wiki/Platform_neutral) [open source](https://opensource.com/resources/what-open-source) tools. Since I run [GNU/Linux](https://en.wikipedia.org/wiki/GNU/Linux_naming_controversy) on my desktop, my examples will feature commands from that setup.^[There are many websites that promise conversion online, requiring you to upload the input file and download the output file. These _might be_ fraught with security risks. Use them with caution.]

## Tools for image format conversion

I consider here these four tools for image format conversion:

#.  [ImageMagick](https://imagemagick.org/index.php)
    - library plus standalone utilities linke `convert`, `display`, `identify`, etc.
    - pixel-based
    - converts raster to raster, and raster to vector
#.  [cairo](https://www.cairographics.org/)
    - vector-based 2D drawing and rendering library
    - multiple output devices/formats
    - used by other programs
#.  [poppler](https://poppler.freedesktop.org/)
    - vector-based PDF rendering library 
    - used by several PDF viewers
    - uses cairo as backend
    - provides standalone utilities like `pdftotext`, `pdftocairo`, and `pdftoppm`
#.  [Inkscape](https://inkscape.org/)
    - GUI-based vector graphics editor
    - suitable both for technical illustration and digital art
    - uses SVG as the main format
    - can export to a wide variety of output formats
    - option to use cairo for PDF export

## ImageMagick: the Swiss Army knife

ImageMagick is the name given to a suite of image processing tools originally created in 1987 by John Cristy, then working for [Du Pont](https://www.dupont.com/). In 1990, it was freely released by Du Pont, who transferred copyright to [ImageMagick Studio LLC](https://imagemagick.org/script/contact.php) who now maintain the project. It is distributed under a derived Apache 2.0 [license](https://imagemagick.org/script/license.php). The [authoritative source code repository](https://github.com/ImageMagick/ImageMagick) shows active development even today, 34 years after the suite was first released [@imagemagicksource].

ImageMagick is so versatile and useful that it may rightfully be called the [Swiss Army knife](https://www.thefreedictionary.com/Swiss-army+knife) of the image processing world. 

ImageMagick comes with several command line utilities, each replete with options. Among these are:

- [`convert`](https://imagemagick.org/script/convert.php) which converts from one format to another;
- [`display`](https://imagemagick.org/script/display.php) which displays one or more images;
- [`identify`](https://imagemagick.org/script/identify.php) which identifies the type of image and displays its characteristics;
- [`mogrify`](https://imagemagick.org/script/mogrify.php) which transforms an image, modifying its appearance; and
- [`montage`](https://imagemagick.org/script/montage.php) which generates an image montage from several images.

The above list is far from exhaustive. The interested reader is referred to the [excellent online documentation](https://imagemagick.org/script/command-line-tools.php) for further details. The power of ImageMagick is enhanced with the [magick-script](https://imagemagick.org/script/magick-script.php) Image Scripting Language. In the examples below, I will give both the command line invocations and scripts for performing image conversions.

## Raster to raster conversions

It is more instructive if we have meaningful use-cases to illustrate why and how these conversions arise, and what command invocations get the job done. So let us set to.

Suppose we want to make transparent the background in an image that is in JPEG format. After rummaging through the web for a while, we finally discover that JPEG _does not_ support transparency through an [alpha channel](https://www.techopedia.com/definition/1945/alpha-channel). The two popular formats that _do_ are GIF and PNG.

### Simple conversion

ImageMagick can do all the heavy lifting here. Simple format conversion is achieved by:

```
convert test.jpg test.png
```

### Background transparency

And that is all there is to it! Of course, there is more juice to be squeezed out of ImageMagick if so desired, and anyway, we are not quite done yet. How do we make the background transparent? It helps if the background is of a single uniform colour. In this case, let us assume that the background is uniformly white. The correct invocation is now:

```
convert test.jpg -transparent white test-transparent.png
```

*@fig:raster is a case in point of an image with a transparent background that has been so processed.

### Resizing

But what if we wanted more? What if we wanted to crop or resize an image? There are command line options to do that too, and the best way forward is to consult and follow the documentation. While ImageMagick's options can be bewildering, the documentation is mature and comprehensive and will light the way.

Let us further require the image to be half its original size in both the $x$ and $y$ directions. The correct invocation for this chain of operations is:

```
convert test.jpg -transparent white -resize 50% test-halfsize.png
```

### Putting it all together

*@fig:animals-medium is a hand-drawn image of microscopic animals by the German naturalist Ernst Haeckel.

![Vintage animals by Ernst Haeckel.^[These images are in the public domain and covered by the [CC0 licence](https://creativecommons.org/publicdomain/zero/1.0/). They are in the public domain and available for download [here](https://www.rawpixel.com/image/2266608/free-illustration-image-ernst-haeckel-vintage-animals).]]({attach}images/animals-medium.jpg){#fig:animals-medium width=50%}

These images have a whitish border around the block print. This "border" has annotations and the background is also not of one colour but of closely related colours of slightly different combinations of the primary colours. Removing the border is a task tailor made for the _crop_ operation.

Cropping is better done interactively using a GUI. ImageMagick's display utility provides a GUI with a left click when the mouse is over the image. Or we can use an interactive image viewer that provides a cropping function.

The cropped image is now converted to a PNG at half the size:

```
convert animals-medium-cropped.jpg -resize 50% animals-medium-cropped-halfsize.png
convert +append  animals-medium-cropped.jpg animals-medium-cropped-halfsize.png both.png
```

![Image cropped and shrunk to half its original dimensions.]({attach}images/both.png){#fig:cropped-resized width=50%}

### Can cairo and [oppler do this?

Can such processing be done using cairo or poppler? Not really, the _starting point_ or _input format_ for cairo and poppler is the PDF format. Moreover, these packages are directed toward other goals. ImageMacgik's forte is the processing of images.

## Raster to vector conversions

We might be printing a document on a printer that recognizes and accepts the PostScript or PDF format. In such cases, it might be sensible to convert a photographic image in the document from a JPEG or PNG into a PDF.

We could go about doing this using ImageMagick's `convert` utility again. And following the previous syntax, we could try:

```
convert test.png test.pdf
```

And it would work! But the results might not be as expected. Here is an example.


%%%% UP TO HERE %%%%

## cairo and poppler

`rsvg-convert`
`pdftocairo`


https://en.wikipedia.org/wiki/Cairo_(graphics)

https://www.cairographics.org/

https://cgit.freedesktop.org/cairo

### Inkscape

https://wiki.inkscape.org/wiki/index.php/Tools

## pdf2svg

https://cityinthesky.co.uk/opensource/pdf2svg/

https://github.com/dawbarton/pdf2svg

https://inkscape.org/develop/about-svg/

## poppler

`pdftoppm`

pdftocairo

## Raster to raster





## Image to PDF

Still works. No strictures. But the PDF can get grungy. Use a pyramid of resolutions.

### Avoiding blurry PDFs

-units pixelsperinch -density 1200 etc., in conversion

Useful when a hgh resolution image is available. In any case: PDF and png/jpg sizes are similar.

## Choosing the optimal image resolution for a clear PDF

96dpi for screen
150 dpi default
300 dpi for print [give references]


```{magick}
convert -units pixelsperinch -density 300 file.png file.pdf
```
## PDF to image not supported

```{bash}
#! /bin/magick
convert file.pdf file.png
```

```
convert test.pdf test.png
convert: unable to open image 'test.pdf': No such file or directory @ error/blob.c/OpenBlob/3537.
convert: no images defined `test.png' @ error/convert.c/ConvertImageCommand/3304.
```

### Security considerations

ImageMagick is no more the famed Swiss army knife for conversions from PDFs to images.

Give references to security concerns.

## Enter poppler

### PDF to PNG

## PDF to SVG and vice versa

https://wiki.gnome.org/Projects/LibRsvg


```{bash}
pdftoppm -png ernst-heackel-medium.pdf ernst-heackel-medium.png
convert ernst-heackel-medium.jpg ernst-heackel-medium-direct.png
convert ernst-heackel-medium.jpg ernst-heackel-medium-direct.png
```
How to use resize etc.

## Appendix: ImageMagick's security vulnerabilities

Great power exacts a commensurate price. ImageMagick's great power and ease of use does come at a great price: vulnerability to exploits by malicious remote actors.

ImageMagick uses external libraries or _backend tools_ which are called via `system()` commands in accordance with _delegated_ command strings specified in a configuration file called `policy.xml`.

In April 2016, it was reported that because of insufficient validation of delegated command strings, it was possible for someone to execute malicious code remotely, to the detriment of the unwitting user of ImageMagick. This was revealed at a website, interestingly named [ImageTragick](https://imagetragick.com/) to attract sufficient attention and remedial action to the discovered bug [@imagetragick2016].

In November 2020, [another security vulnerability was discovered](https://portswigger.net/daily-swig/imagemagick-pdf-parsing-flaw-allowed-attacker-to-execute-shell-commands-via-maliciously-crafted-image) [@leyden2020]. It was [reported and promptly patched](https://insert-script.blogspot.com/2020/11/imagemagick-shell-injection-via-pdf.html) by the ImageMagick maintainers [@infuhr2020].

Recent versions of the ImageMagick suite, bundled with major distributions, should have correctly configured `policy.xml` files that will block known exploits. [Sandboxing](https://www.techopedia.com/definition/25266/sandboxing) is another technique to quarantine the system from possible vulnerabilities. Above all, it is vital to keep  system and application software up to date to avail of evolutions in performance and security.

## Image used below

https://www.rawpixel.com/board/1236113/kunstformen-der-natur-ernst-haeckel-free-cc0-public-domain-animal-prints

#### Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

<!--\noindent A PDF version of this article is [available for download here.]({attach}./image-format-conversions.pdf)-->

