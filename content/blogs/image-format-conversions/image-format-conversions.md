---
title: Image format conversions
author: R (Chandra) Chandrasekhar
date: 2021-03-07
modified: 2021-03-07
category: Software
tags: image formats, Linux, PDF, PNG
summary: 
opengraphimage: test-cropped.jpg
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

Both these formats yield images, which consist of mathematically defined points, lines, curves, and shapes. Whereas PDF is not human-readable, SVG is text-based, and is designed to be both human- and machine-readable.

## Format conversions

For a variety of reasons, it is often necessary to convert from one image format to another. There are four broad possibilities for this:

a.  raster to raster;
a.  raster to vector;
a.  vector to raster; and
a.  vector to vector

We consider each of these in turn using [platform-neutral](https://itlaw.wikia.org/wiki/Platform_neutral) [open source](https://opensource.com/resources/what-open-source) tools. Since I run [GNU/Linux](https://en.wikipedia.org/wiki/GNU/Linux_naming_controversy) on my desktop, my examples will feature commands from that setup.^[There are many websites that promise conversion online, requiring you to upload the input file and download the output file. These _might be_ fraught with security risks. Use them with caution.]

## Tools for image format conversion

We examine four tools for image format conversion:

#.  [ImageMagick](https://imagemagick.org/index.php)
    - library plus standalone utilities like `convert`, `display`, `identify`, etc.
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

The above list is far from exhaustive. The interested reader is referred to the [excellent online documentation](https://imagemagick.org/script/command-line-tools.php) for further details. The power of ImageMagick is enhanced with the [magick-script](https://imagemagick.org/script/magick-script.php) Image Scripting Language.

## Raster to raster conversions

It is more instructive if we have meaningful use-cases to illustrate why and how these conversions arise, and what command invocations get the job done. So let us set to.

We invoke ImageMagick's `convert` function not only to convert from one format to another but also to accomplish cropping, image-resizing, making the background transparent, and [montaging](https://www.thefreedictionary.com/montage).

### Test image

We use a colourful image with much detail as the test image. *@fig:test is from a hand-drawn illustration of microscopic marine animals by the German naturalist [Ernst Haeckel](https://en.wikipedia.org/wiki/Ernst_Haeckel), scanned and made available in the public domain.

![Vintage animals illustration by Ernst Haeckel.^[These images are in the public domain and covered by the [CC0 licence](https://creativecommons.org/publicdomain/zero/1.0/). They are in the public domain and available for download [here](https://www.rawpixel.com/image/2266608/free-illustration-image-ernst-haeckel-vintage-animals).]]({attach}images/test.jpg){#fig:test width=70%}

This image has a whitish, non-monochromatic border around the block print, containing  annotations. Rather than setting a particular background colour to be transparent, it is more efficient to remove the border altogether by cropping, leaving us with only the illustration.

### Cropping

Cropping is better done interactively using a [GUI](https://en.wikipedia.org/wiki/Graphical_user_interface), than on the command line. ImageMagick's `display` utility pops up a GUI with a left click when the mouse is over the image. This can be used for interactive cropping. Or we can use any other interactive image viewer that provides a cropping function.

![Cropped version of the image in +@fig:test.]({attach}images/test-cropped.jpg){#fig:cropped width=50%}

### Resizing, format-conversion, and montaging

The cropped image is now converted to a PNG at half the dimensions or one quarter the area. The latter is appended to the right of the cropped image, aligned at the bottom, and given a transparent background. The result is shown in +@fig:both.

```
convert test-cropped.jpg -resize 50% test-cropped-halfsize.png

convert +append -gravity south -background transparent test-cropped.jpg test-cropped-halfsize.png both.png
```

![Cropped image on the left and half-sized image on the right.]({attach}images/both.png){#fig:both width=80%}

### Background transparency

Note that the combined image montage in +@fig:both is in the PNG format, not the original JPEG. The reason for this is that there is rectangular region at the top right that appears transparent, even though it is part of the image montage. A JPEG image _does not_ support such transparency through an [alpha channel](https://www.techopedia.com/definition/1945/alpha-channel). The two popular formats that _do_ are GIF and PNG.

### Can cairo and poppler do all this?

Can such processing be done using cairo or poppler? Not really. The _starting point_ or _input format_ for cairo and poppler is the PDF format. Our test image is scanned from an illustration and is therefore a JPEG raster image. ImageMagick's forte is the processing of raster images; cairo and poppler have other goals.

## Raster to vector conversions

We might be printing a document on a printer that recognizes and accepts the [PostScript]() or PDF format. Raster photographic images would then need to converted to PDF either beforehand or on the fly before they can be printed on paper. This is one reason why we might need to convert from a raster to a vector image.

We could go about doing this using ImageMagick's `convert` utility again. And following the previous syntax, we could try:

```
convert test-cropped.jpg test-cropped.pdf
```

The converted image, [test-cropped.pdf]({attach}images/test-cropped.pdf), may be viewed from the given link. Web browsers, while they may feature PDF viewers on separate tabs, are still unable to display PDFs as part of a web page. If the converted PDF is magnified by zooming, it will be seen to reveal remarkable detail.

What happens, though, if the half-sized image is use to generate the PDF. It is smaller and accordingly embodies less information than the original.

```
convert test-cropped-halfsize.png test-cropped-halfsize.pdf
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

