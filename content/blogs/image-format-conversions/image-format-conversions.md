---
title: Image format conversions
author: R (Chandra) Chandrasekhar
date: 2021-03-07
modified: 2021-03-22
category: Software
tags: image formats, PNG, JPEG, PDF, SVG, ImageMagick, Inkscape, cairo, poppler, Linux
summary: "We may be called upon to convert images between one format and another at short notice. This tutorial explores the different tools that are currently available and identifies the most efficient for each task. The `ImageMagick` suite, the `cairo` backend, the `poppler` utilities, and `CairoSVG` are identified for the specific strengths that make them the tools of choice for different image conversion tasks."
opengraphimage: animals.jpg
status: draft
---

We may be called upon to convert images between one format and another at short notice. This tutorial explores the different tools that are currently available and identifies the most efficient for each task. The `ImageMagick` suite, the `cairo` backend, the `poppler` utilities, and `CairoSVG` are identified for the specific strengths that make them the tools of choice for different image conversion tasks.

## Two varieties of digital images

Digital images come in two broad flavours:

- [raster](https://en.wikipedia.org/wiki/Raster_graphics) or [bitmap](https://en.wikipedia.org/wiki/Bitmap) graphics, and
- [vector graphics](https://en.wikipedia.org/wiki/Vector_graphics).

The former leads to image blockiness or [pixellation](https://en.wikipedia.org/wiki/Pixelation) and loss of definition at high magnifications, as shown in +@fig:raster, while the latter scales without degradation when magnified, as illustrated in +@fig:vector.

![Raster graphics image of the letter O (150 dots per inch (dpi) PNG format).]({attach}images/letter-O-150-dpi.png){#fig:raster width=50%}

![Vector graphics image of the letter O (SVG format).]({attach}images/letter-O.svg){#fig:vector width=50%}

## Raster Graphics

There are dozens of image formats, including these three major ones:

#.  [Tag(ged) Image File Format (TIFF)](https://en.wikipedia.org/wiki/TIFF)
    - lossless compression
    - large file sizes
    - used in printing and professional graphics
    - preferred for archival of scanned photographs

#.  [Joint Photographic Experts Group (JPEG)](https://jpeg.org/about.html) format
    - small file sizes
    - lossy compression
    - good quality with fast downloads
    - supported by web browsers
    - preferred for scenes and portraits
    - no transparency

#.  [Portable Network Graphics (PNG)](http://www.libpng.org/pub/png/) format
    - lossless compression
    - preferred for text and high definition images
    - supported by most web browsers
    - transparency

All three formats yield images displayed as rectangular arrays of [pixels](https://en.wikipedia.org/wiki/Pixels).

### Pixel densities

Raster images become larger and visually better defined at higher resolutions or pixel densities. The units of resolution, or density, commonly used are the _dots per inch_ (dpi) or _pixels per inch_ (ppi) both of which reference the number of pixels that may be accommodated in one linear inch. It is possible to specify these in dots per centimetre or pixels per centimetre but that usage has not caught on.

Commonly used resolutions for display devices are:

- 72 dpi for low resolution monitors
- 96 dpi for standard resolution monitors
- 150 dpi, which is often the default value in image conversion programs
- 300 dpi for some laser printers
- 600 dpi for high end laser printers

Suppose we have an image that is a square of side 100 pixels. On a display that has a resolution of 96 dpi, such an image will take up 100/96 = 1.042 inches on each side. If the same image were displayed on a 300 dpi output device, its image will span 100/300 = 0.333 inches on each side.

If the same image were magnified to _twice_ its dimensions, the number of pixels in it will become _fourfold_ as will, roughly, its file size.

When photographic images are scanned, higher pixel densities lead to much larger image file sizes but such images capture more and more subtle detail.

Blocky images arise when the zoomed image exhibits a lower density than the display resolution, allowing individual pixels to show themselves as discernible "blocky" elements.

The dpi used for format conversion, especially from raster to PDF, is critical to avoid getting "blurry" or "grungy-looking" PDFs. At the same time, ratcheting up the dpi before conversion from raster to PDF will result in bloated PDF files that convey no discernible improvement in visual quality. There is always a sweet spot for pixel density---in image scanning and format conversions---that gives good visual quality at a decent file size.

## Vector Graphics

The two principal vector graphics formats are:

#.  [Portable Document Format (PDF)](https://en.wikipedia.org/wiki/PDF)
    - preferred for archival quality electronic and printed documents
    - supported by browsers with integrated PDF readers
    - file sizes comparable to raster images
    - machine-readable files

#.  [Scalable Vector Graphics (SVG)](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) format
    - preferred for scalable graphics on web browsers
    - used in digital image animations and digital art
    - small file sizes
    - human- and machine-readable files

Both these formats yield images which consist of mathematically defined points, lines, curves, and shapes, which do not degrade in visual quality when magnified.

### Page size and viewBox

Vector images do not embody an intrinsic resolution and may therefore be zoomed in or out arbitrarily without loss of detail. But vector images do have intrinsic sizes that endow them with an [aspect ratio](https://en.wikipedia.org/wiki/Aspect_ratio).

Sometimes, an image is developed for electronic archival, legal, or other purposes. Such documents are meant to be printed and so the document format embodies a _paper size_ to which it is paginated. Such is the case with PDFs.

At other times, the primary medium of display for an image is the Web. Such images are defined in terms of a [_viewBox_](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/viewBox). They do not have a preferred or natural page size . They may be scaled but their appearance depends on the resolution of the display device. SVGs embody these characteristics.

## Format conversions

For many reasons, it is often necessary to convert from one image format to another. There are four broad possibilities for this, as shown below, with typical examples:

#.  Raster to raster: PNG to JPEG and vice versa;
#.  Raster to vector: PNG to PDF or PNG to SVG;
#.  Vector to raster: PDF to PNG or SVG to PNG; and
#.  Vector to vector: PDF to SVG, or vice versa.

We consider each of these in turn using [platform-neutral](https://itlaw.wikia.org/wiki/Platform_neutral) [open source](https://opensource.com/resources/what-open-source) tools. Since I run [GNU/Linux](https://en.wikipedia.org/wiki/GNU/Linux_naming_controversy) on my desktop, my examples will feature commands from that setup.^[There are many websites that promise conversion online, requiring you to upload the input file and download the output file. These _might be_ fraught with security risks. Use them with caution.]

## Tools for image format conversion

Among the very many tools available, we examine below four that support image format conversion:

#.  [`ImageMagick`](https://imagemagick.org/index.php)
    - versatile graphics library for image manipulation and display
    - standalone utilities like `convert`, `display`, `identify`, `mogrify`, etc.
    - scripting language support
    - pixel-based
    - raster to raster conversions
    - raster to vector conversions

#.  [cairo](https://www.cairographics.org/)
    - vector-based 2D drawing and rendering library
    - multiple output devices/formats
    - used by other programs as a backend, rather than in standalone mode

#.  [poppler](https://poppler.freedesktop.org/)
    - vector-based PDF rendering library
    - used by several PDF viewers
    - uses cairo as backend
    - standalone utilities like `pdftotext`, `pdftocairo`, and `pdftoppm`

#.  [Inkscape](https://inkscape.org/)
    - GUI-based vector graphics editor
    - suitable both for technical illustration and digital art
    - uses SVG as the working format
    - can export to a wide variety of output formats
    - option to use cairo for export to raster formats

## `ImageMagick`: the Swiss Army knife

`ImageMagick` is the name given to a suite of image processing tools originally created in 1987 by John Cristy, then working for [Du Pont](https://www.dupont.com/). In 1990, it was freely released by Du Pont, who transferred copyright to [ImageMagick Studio LLC](https://imagemagick.org/script/contact.php) who now maintain the project. It is distributed under a [derived Apache 2.0 license](https://imagemagick.org/script/license.php). The [authoritative source code repository](https://github.com/ImageMagick/ImageMagick) shows active development even today, 34 years after the suite was first released [@imagemagicksource].

`ImageMagick` is so versatile and useful that it may rightfully be called the [Swiss Army knife](https://www.thefreedictionary.com/Swiss-army+knife) of the image processing world. It comes with several command line utilities, each replete with options. Among these are:

- [`convert`](https://imagemagick.org/script/convert.php) which converts from one format to another;
- [`display`](https://imagemagick.org/script/display.php) which displays one or more images;
- [`identify`](https://imagemagick.org/script/identify.php) which identifies the type of image and displays its characteristics;
- [`mogrify`](https://imagemagick.org/script/mogrify.php) which transforms an image, modifying its appearance; and
- [`montage`](https://imagemagick.org/script/montage.php) which generates an image montage from several images.

The above list is far from exhaustive. The interested reader is referred to the [excellent online documentation](https://imagemagick.org/script/command-line-tools.php) for further details. The power of `ImageMagick` is enhanced with the [magick-script](https://imagemagick.org/script/magick-script.php) Image Scripting Language.  The examples in this blog use the command line versions of invoking `ImageMagick`. If they seem daunting, [refer to this explanation](https://imagemagick.org/script/command-line-processing.php) [@imcli].

## Test images

Two quite different images are used to illustrate the format conversions we perform here. The two test images are:

#.  a coloured, text-only test image contained in the file `text-only.pdf`; and
#.  a coloured, non-text, graphically rich image contained in the file `animals.jpg`.

We will succinctly refer to these two images as `text-only` and `animals`, respectively hereafter.

### The `text-only` image

The text-only image was first generated programmatically as a PDF file, `text-only.pdf`, by compiling a [LaTeX](https://www.latex-project.org/) [source file]({attach}auxiliary/text-only.tex). PDF is the _native_ or natural format for this image. The `text-only` image converted into any other  format must be measured against the benchmark of the original PDF in file size and visual quality.

PDFs may be displayed on _separate_ browser tabs, but cannot be displayed, among other content, _within_ a web page. [Click here]({attach}images/text-only.pdf) to see `text-only.pdf` as a zoomable PDF on a separate browser tab.

#### Converting `text-only` from PDF to PNG and JPEG

To display `text-only` on this page, the original PDF file was converted to the PNG and JPEG formats using the methods [discussed later][vector to raster] to yield the raster images `text-only-600-dpi-cairo.png` and `text-only-600-dpi-cairo.jpg`. The commands we used are shown below for completeness, but  [explained later][PDF to PNG and JPEG: `poppler` and `cairo`]:

```bash
# PDF to PNG at 600 dpi
pdftocairo -png -r 600 -singlefile \
text-only.pdf text-only-600-dpi-cairo

# PDF to lossless JPEG at 600 dpi
pdftocairo -jpeg -jpegopt quality=100 -r 600 -singlefile \
text-only.pdf text-only-600-dpi-cairo
```

![Text-only image in 600 dpi PNG format.]({attach}images/text-only-600-dpi-cairo.png){#fig:text-only-png-cairo width=80%}

![Text-only image in 600 dpi lossless JPEG format.]({attach}images/text-only-600-dpi-cairo.jpg){#fig:text-only-jpg-cairo width=80%}

#### File sizes

```bash
ls -Xsh text-only.pdf text-only-600-dpi-cairo.* | \
awk '{print $1 "\t" $2}'
---
120K    text-only-600-dpi-cairo.jpg
16K     text-only.pdf
40K     text-only-600-dpi-cairo.png
```
As a convention hereafter, when there is a `---` separator between a command and some results, the latter are the results displayed on execution of the command.

The file sizes are displayed above merely for information. Note that the JPEG file is an order of magnitude larger than both the original PDF and the PNG. The relative strengths and weaknesses of different file formats for displaying different image types are discussed later.

### The `animals` image

The non-text `animals.jpg` image is a cropped version of the original image `animals-original.jpg` [downloaded from the Web](https://www.rawpixel.com/image/2266608/free-illustration-image-ernst-haeckel-vintage-animals). It is a colourful, graphically rich image with much detail, and is from a hand-drawn illustration of microscopic marine animals by the German naturalist [Ernst Haeckel](https://en.wikipedia.org/wiki/Ernst_Haeckel), scanned as a JPEG, and made available in the public domain.

Note that `animals-original.jpg` has been scanned from a printed, hard copy illustration and saved as a JPEG raster file. That is its native format. All conversions should be gauged against the file size and visual quality of the cropped original `animals.jpg`.

![Non-text, graphically rich `animals-original.jpg` image in JPEG format.^[These images are in the public domain and covered by the [CC0 licence](https://creativecommons.org/publicdomain/zero/1.0/). ]]({attach}images/animals-original.jpg){#fig:animals-original width=80%}

How the original image was cropped to get the `animals` image is explained next.

#### Pre-processing `animals`

Cropping is strictly not image format conversion, but is often a necessary pre-processing step in image manipulations. For example, +@fig:animals-original has a whitish, non-monochromatic border around the block print, containing annotations. For our purposes, this border is at best a distraction. It may be removed altogether by _cropping_, leaving us with only the illustration. The resulting cropped image, `animals.jpg` will be the source image in our examples below.

#### Cropping

Cropping is usually better done interactively using a [GUI (Graphical User Interface)](https://en.wikipedia.org/wiki/Graphical_user_interface), than on the command line. However, the latter, even if a bit tedious, is precisely repeatable.

The `display` utility of `ImageMagick` pops up a GUI, shown in +@fig:gui, when the mouse is over the image and the left mouse button is clicked. We can then drag and fit a window to the _region we wish to keep_, clicking the `Crop` function, and saving the cropped image. The steps are these:

a.  left mouse click on the image to reveal the GUI;
a.  `Transform -> Crop`;
a.  put the mouse over the top left corner and drag until the bottom right corner to enclose the region of interest;
a.  Click again on `Crop`; and
a.  `File -> Save` with a different name.

![`ImageMagick` interactive GUI.]({attach}images/ImageMagick-display-gui.png){#fig:gui width=30%}

Alternatively, we may just position the cursor on the top left and bottom right corners of the region we wish to _retain_, noting the co-ordinates in each case. If these coordinates are $(x_t, y_t)$ and $(x_b, y_b)$, respectively, we have $w = x_b - x_t$ and $h = y_b -y_t$. We may then invoke the convert command with crop as the option so:

```bash
convert -crop 'wxh+x_t+y_t' animals-original.jpg animals.jpg
```

In our case, $(x_t, y_t) = (60, 84)$ and $(x_b, y_b) = (795, 1119)$ giving $w = 735$ and $h = 1035$, leading to

```bash
convert -crop '735x1035+60+84' animals-original.jpg animals.jpg
```

The resulting cropped image, `animals.jpg` is shown in +@fig:cropped below.

![Cropped version of the original image in +@fig:animals-original. This is the `animals.jpg` image.]({attach}images/animals.jpg){#fig:cropped width=50%}

#### File sizes

The sizes of the original and cropped files are shown below in human friendly numbers:

```bash
ls -Xsh animals*.jpg | awk '{print $1 "\t" $2}'
---
200K    animals.jpg
312K    animals-original.jpg
```

As expected, the original file `animals-original.jpg` is larger than the cropped full-size version, `animals.jpg`, and all is well.

## Raster to raster conversion

We now perform a sequence of image manipulations, including raster to raster format conversions.

### Resizing, format-conversion, and montaging

We may invoke the `convert` function of `ImageMagick` not only to convert from one format to another but also to accomplish cropping (as we have already seen), image-resizing, making the background transparent, and [montaging](https://www.thefreedictionary.com/montage), etc.

Suppose we want to reduce the dimensions of the cropped image to half their original values, and display the full-size and half-size images side by side, we could run the following command:

```bash
convert animals.jpg -resize 50% animals-halfsize.jpg

# Composite the two images by aligning their bottoms
convert +append -gravity south \
animals.jpg animals-halfsize.jpg animals-both.jpg
```

![Full-size cropped image on the left and half-sized image on the right in JPEG format.]({attach}images/animals-both.jpg){#fig:animals-both-jpg width=80%}

### Background transparency

Notice that there is a coloured white rectangle atop the half-size image on the right in +@fig:animals-both-jpg. We could remove it by rendering the background transparent. However, because JPEG does not support transparency (through an [alpha channel](https://www.techopedia.com/definition/1945/alpha-channel)) we have to convert the composite image to the PNG format, which does support transparency. This is an example of why we need to convert from one format to another.

```bash
# Non-transparent composite in PNG
convert +append -gravity south \
animals.jpg animals-halfsize.jpg animals-both-non-transparent.png

# Transparent composite in PNG
convert +append -gravity south -background transparent \
animals.jpg animals-halfsize.jpg animals-both-transparent.png
```

![Composite image converted to PNG format with transparent background.]({attach}images/animals-both-transparent.png){#fig:animals-both-transparent-png width=80%}

#### File sizes again

How do the file sizes of the three composite images compare? How does the non-transparent JPEG compare with the non-transparent PNG? Also, how  high a price have we paid for the transparent background?

```bash
ls -Xsh animals-both*| awk '{print $1 "\t" $2}'
---
264K    animals-both.jpg
2.0M    animals-both-non-transparent.png
2.2M    animals-both-transparent.png
```

The PNG composite image is _more than seven times larger_ than its JPEG counterpart, _even without transparency_. And transparency makes the PNG file size ten percent larger.

#### Compression levels and file sizes

The [image compression level](https://en.wikipedia.org/wiki/Image_compression) used above is the default compression level in `ImageMagick`. Getting the right combination of image format, image dimensions, image compression, and image quality so that the image loads fast and looks good is [quite an art](https://www.smashingmagazine.com/2015/06/efficient-image-resizing-with-imagemagick/). [@newton2015]

To get an idea of the range of file sizes involved, let us try generating a composite image with extremes of the compression level, which can range from 0 to 9.

```bash
# Least compression
convert -define PNG:compression-level=0 +append -gravity south \
-background transparent \
animals.jpg animals-halfsize.jpg \
animals-both-compressed-0.png

# Most compression
convert -define PNG:compression-level=9 +append -gravity south \
-background transparent \
animals.jpg animals-halfsize.jpg \
animals-both-compressed-9.png
```

The file sizes are:

```bash
ls -Xsh animals-both* | awk '{print $1 "\t" $2}'
---
264K    animals-both.jpg
4.4M    animals-both-compressed-0.png
2.2M    animals-both-compressed-9.png
2.0M    animals-both-non-transparent.png
2.2M    animals-both-transparent.png
```

It appears that the default compression used by `ImageMagick` gives a file size that is the same as the highest compression level. Indeed, the uncompressed version---with a compression level of zero---gives a file _twice_ the size of the uncompressed version and _sixteen times_ the size of the JPEG. And we have not even used two other related attributes: [filter and strategy](https://stackoverflow.com/questions/27267073/imagemagick-lossless-max-compression-for-png) [@setchell2014]. Getting the best tradeoff of image format, image size, file size, loading time, and image quality is still more of an art to be mastered than an algorithm to be applied.

We may conclude from the above that non-textual, detail-rich images are better stored and displayed as JPEGs than PNGs.

### Results with `text-only`

Recall that `text-only` was originally generated as a PDF. [Previously][Converting `text-only` from PDF to PNG and JPEG], we briefly touched upon how we converted `text-only` from PDF to PNG and JPEG.

To get a PNG version of the image, we need to [run a little ahead of ourselves and convert from PDF to PNG][PDF to PNG and JPEG: `poppler` and `cairo`].

From that PNG, let us do a simple _no quality loss_ conversion from PNG to JPEG for `text-only`, and compare appearances and file sizes.

```bash
# Lossless JPEG with a 'quality' of 100 from PNG
convert -quality 100 text-only-600-dpi-cairo.png \
text-only-600-dpi-cairo-IM.jpg

# Composite both images into one with a transparent divider
convert text-only-600-dpi-cairo.png text-only-600-dpi-cairo-IM.jpg \
-background transparent -splice 20x0+0+0 +append -chop 20x0+0+0 \
text-only-both-600-dpi-cairo.png

ls -Xsh text*cairo* | awk '{print $1 "\t" $2}'
---
148K    text-only-600-dpi-cairo-IM.jpg
40K     text-only-600-dpi-cairo.png
120K    text-only-both-600-dpi-cairo.png
```

![Composite PNG image of the PNG on the left, and JPEG on the right.]({attach}images/text-only-both-600-dpi-cairo.png){#fig:text-only-both width=80%}

The right sub-image of +@fig:text-only-both does not reveal noticeable degradation in quality after conversion from PNG to JPEG, and back to PNG again. Note also that the file size of the _composite_ PNG image is smaller than the file size of the _single_ JPEG image.

### PNG versus JPEG: text and non-text

We conclude from the `text-only` images that PNG is better suited for textual images and provides a smaller file size for the same quality.

Conversely, we know from the `animals` images that JPEG is more suited to non-textual detail and yields good quality images at far smaller file sizes than PNG.

### Can `cairo` and `poppler` do all this?

It is all a question of what format do we start with?

Both  `cairo` and `poppler` are designed for PDF input images. They stand out as tools of choice when we start off with PDFs.

The `animals` image, on the other hand, is scanned from an illustration. Our input is a JPEG raster image. The forte of `ImageMagick` is the display, manipulation, format conversion, and processing of raster images. So, we run with the utilities provided by `ImageMagick` in the latter case.

## Raster to vector conversions

Let us say that we have a logo, designed and available as a raster image in some format. To use it on the Web, we could, if necessary, reformat it as a JPEG or PNG file. But as we zoom into the page, the raster images will start becoming less sharp and more blocky as shown in +@fig:raster.

However, if the graphic were in SVG format, supported by most web browsers, the logo would scale without visual degradation as we zoom into the page.

How do we convert a raster image to a vector format like PDF or SVG?

### Raster to PDF with `convert` for `animals`

The `convert` utility of `ImageMagick` comes to our rescue again. For example,

```bash
# Convert JPEG image to PDF
convert animals.jpg animals.pdf

ls -Xsh animals.jpg animals.pdf | awk '{print $1 "\t" $2}'
---
200K    animals.jpg
204K    animals.pdf
```

Web browsers, while they may feature PDF viewers on separate tabs, are still unable to display PDFs as part of a web page. The converted image, [`animals.pdf`]({attach}images/animals.pdf), may be viewed on a browser tab from the given link. If the converted PDF is magnified by zooming, it will be seen to reveal remarkable detail. And the difference between the JPEG and PDF file sizes is negligible.

What happens, though, if the half-sized image is used to generate the PDF? It is smaller and accordingly embodies less information than the original, again commensurate with the respective file sizes.

```bash
convert animals-halfsize.jpg animals-halfsize.pdf

ls -Xsh animals-halfsize.jpg animals-halfsize.pdf | \
awk '{print $1 "\t" $2}'
---
64K     animals-halfsize.jpg
64K     animals-halfsize.pdf
```
Increasing detail demands larger file sizes: there is no free lunch.

### Raster to SVG with `convert`

Will `convert` cater for a JPEG to SVG conversion?

```bash
convert animals.jpg animals.svg

ls -Xsh animals.jpg animals.svg | awk '{print $1 "\t" $2}'
---
200K    animals.jpg
436K    animals.svg
```

The SVG file is more than _twice_ the size of the original JPEG. The question arises whether there is an alternative route to the SVG that could give us smaller file sizes but comparable fidelity. What if we did not convert from raster to SVG but from raster to PDF and thence to SVG?

Since PDF to SVG conversion is really part of vector to vector conversion, we will [revisit this question later][PDF to SVG].

### Round tripping from PDF through PNG to PDF

The `text-only` image first saw life as a PDF. We then converted it to a 600 dpi PNG. What happens if we convert that image back to a PDF?

```bash
convert text-only-600-dpi-cairo.png text-only-from-600-dpi-PNG.pdf

ls -Xsh text-only*600*.pdf text-only.pdf | awk '{print $1 "\t" $2}'
---
40K     text-only-from-600-dpi-PNG.pdf
16K     text-only.pdf
```

Not surprisingly, the round trip has resulted in a fatter file for the PDF the second time around. Judge for yourself [the image quality by viewing on a separate browser tab and zooming]({attach}images/text-only-from-600-dpi-PNG.pdf).

What would you expect if the initial PDF to PNG image conversion had been done at 150 dpi, or 96 dpi, or 75 dpi? The command sequence is [explained later][PDF to PNG and JPEG: `poppler` and `cairo`] but the results and their consequences are noteworthy here:

```bash
pdftocairo -png -r 75 -singlefile text-only.pdf text-only-75-dpi

convert text-only-75-dpi.png text-only-75-dpi.pdf

ls -sh text-only.pdf text-only*75* | awk '{print $1 "\t" $2}'
---
8.0K    text-only-75-dpi.pdf
8.0K    text-only-75-dpi.png
16K     text-only.pdf
```

View the [PDF generated from the 75 dpi PNG]({attach}images/text-only-75-dpi.pdf) on a separate browser tab and zoom in on the image as before. How does it compare with the [one generated previously from the 600 dpi PNG]({attach}images/text-only-from-600-dpi-PNG.pdf)?

This is one reason why conversion from a PNG to a PDF might result in a PDF which looks like a raster image when zoomed in close. The source image resolution was not high enough to generate a PDF that does not degrade on zooming. _The visual quality of the original raster image is what the output PDF will embody._ Just because a PDF image scales does not mean it cannot exhibit blockiness. It will, if a low resolution raster image was used as source.

## Vector to raster

The `poppler` utilities, with the `cairo` backend are the primary resource for vector to raster conversions, specifically when the source image is a PDF.

### PDF to PNG and JPEG: `poppler` and `cairo`

It was mentioned [here][The `text-only` image] and [here][Results with `text-only`] that `text-only` was originally generated as a native PDF, vector graphics image, and subsequently converted to the PNG and JPEG formats. We explain how that was done and also why the `ImageMagick` suite is not used for this purpose.

The `poppler` suite contains utilities to convert from PDF to several raster formats. Two versatile utilities called `pdftocairo` and `pdftoppm` are available for our purpose. One may view their usage by typing the name of the utility prefixed by `man` or suffixed by `-help`, although the former is more exhaustive.

To convert from vector to raster, we invoke commands like these:

```bash
# `pdftocairo`: from PDF to 600 dpi PNG
# root file is the last argument
pdftocairo -png -r 600 -singlefile text-only.pdf \
text-only-600-dpi-cairo

# `pdftoppm`: from PDF to 600 dpi PNG
# root file is the last argument
pdftoppm -png -r 600 -singlefile text-only.pdf \
text-only-600-dpi-ppm

# `pdftocairo`: PDF to 600 dpi JPEG
# Options may be passed to JPEG
pdftocairo -jpeg -jpegopt "quality=100" -r 600 \
-singlefile text-only.pdf text-only-600-dpi-cairo

# `pdftoppm`: PDF to 600 dpi JPEG
# Options may be passed to JPEG
pdftoppm -jpeg -jpegopt "quality=100" -r 600 \
-singlefile text-only.pdf text-only-600-dpi-ppm

# Using `convert` from ImageMagick for PNG to JPEG
convert -units pixelsperinch -density 600 -quality 100 \
text-only-600-dpi-cairo.png text-only-600-dpi-cairo-IM.jpg

# Source PNG file was output by `pdftoppm` 
convert -units pixelsperinch -density 600 -quality 100 \
text-only-600-dpi-ppm.png text-only-600-dpi-ppm-IM.jpg
```

The value `-r 600` signifies a resolution of 600 pixels per inch (ppi), or alternatively, dots per inch (dpi). The default value is 150 ppi. The value of 600 is suitable for printing on laser printers to give output that will visually rival the original PDF in quality. Note that while raster images have inherent resolutions, PDF images have none: they scale without loss of quality when generated natively.

The `-singlefile` option is used because we are simply converting a single "page" of PDF rather than a numbered page sequence. In all cases, the destination filename is the "root" of the converted file sequence, which in this case is the output filename without any extension.

In addition, the JPEG version may feature lossy compression where quality is traded for file size. Since PNG is lossless, to compare the two formats on an even keel, we specify that the `-quality` of the JPEG should be the maximum of 100.

Both `pdftocairo` and `pdftoppm` are used in the first four conversions above, with appropriately named filenames.

We could also use `convert` from `ImageMagick` to convert from PNG to JPEG, and this is done in the last two commands above. Note that this is strictly not a vector to raster conversion but merely raster to raster. See [below][Why is `ImageMagick` disallowed for PDF to raster?] for why we cannot convert from PDF to raster with `convert`.

The files sizes that result are shown below:

```bash
ls -Xsh text-only.pdf text-only-600* | awk '{print $1 "\t" $2}'
---
148K    text-only-600-dpi-cairo-IM.jpg
120K    text-only-600-dpi-cairo.jpg
140K    text-only-600-dpi-ppm-IM.jpg
112K    text-only-600-dpi-ppm.jpg
16K     text-only.pdf
40K     text-only-600-dpi-cairo.png
40K     text-only-600-dpi-ppm.png
```

The numbers tell their own story. I would have expected the two sets of raster images output by `pdftocairo` and `pdftoppm` to be roughly equal in size, given their identical options during invocation. Strangely, they are not, at least for the JPEGs. This could be either because of different defaults, or different algorithms, or something else: I simply do not know.

It appears that `pdftoppm` gives marginally smaller file sizes for JPEG than `pdftocairo`. Moreover, when `pdftoppm` is used to convert directly from PDF to JPEG, the file size is smaller than when PNG is used as an intermediate file format and conversion to JPEG is by `convert` from `ImageMagick`.

One other takeaway is that text-rich images are better rendered in PNG than JPEG. The PDF and PNG image file sizes are of the same order of magnitude, whereas the JPEGs are an order of magnitude larger.

### Why is `ImageMagick` disallowed for PDF to raster?

If you try to `convert` a PDF to any raster image format, you will get an error:

```bash
convert text-only.pdf text-only.png
---
convert: attempt to perform an operation not allowed by the security policy 'gs' @ error/delegate.c/ExternalDelegateCommand/378.
convert: no images defined 'text-only.png' @ error/convert.c/ConvertImageCommand/3304.
```

The reason why this is now disallowed is [explained in the appendix][Appendix: Security vulnerabilities in `ImageMagick`].

### SVG to PNG and JPEG

There was a time when SVGs were ill-supported by browsers and therefore, PNGs and JPEGs dominated the logo and icon landscape on the web. Now that most mainstream browsers support SVGs out of the box, there is healthy support for tools that support conversions to and from SVGs.

#### Some SVG basics

An SVG file is a text file _describing_ points, curves, and shapes as they are rendered on a page. Such a description is unshackled from the rectangular array of pixels that typify a raster image. So, what is the _natural size_ of an SVG image? We touched upon this [at the very beginning of this blog][Page size and viewBox].

##### Generating an SVG from a PDF

First, we need to generate an SVG version of the file `text-only.pdf`. We are running ahead of ourselves because we [need to convert from PDF to SVG][PDF to SVG]. We use `pdftocairo` for this because we cannot use `convert` as [explained here][Why is `ImageMagick` disallowed for PDF to raster?].

```bash
pdftocairo -svg text-only.pdf text-only-pdftocairo.svg

ls -Xsh text-only.pdf text-only-pdftocairo.svg | \
awk '{print $1 "\t" $2}'
---
16K     text-only.pdf
12K     text-only-pdftocairo.svg
```

It is instructive to open the file `text-only-pdftocairo.svg` and look at the first block of text:

```html
<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="214.31pt" height="52.16pt" viewBox="0 0 214.31 52.16" version="1.2">
```

The _width_, _height_, and _viewBox_ of the SVG image are all stated in _points_, abbreviated as pt where 1 pt equals 1/72 inch [@oreilly2019]. At a screen setting of 96 pixels per inch, 1 pt equals 4/3 pixels. So, the native size of the `test-only` image as a PNG should be about 286 pixels by 70 pixels. When`convert` is applied on the SVG to yield the PNG, the latter is faithful to these unit conversions:

```bash
convert text-only-pdftocairo.svg text-only-svg-convert.png

identify text-only-svg-convert.png
---
text-only-svg-convert.png PNG 286x70 286x70+0+0 8-bit sRGB 6548B 0.000u 0:00.000
```

And, not unexpectedly, the numbers returned by `identify` match those we derived above by simple unit conversion. :slightly_smiling_face:

Regarding file sizes, the PNG is actually smaller than the SVG:

```bash
ls -Xsh text-only-pdftocairo.svg text-only-svg-convert.png | awk '{print $1 "\t" $2}'
---
8.0K    text-only-svg-convert.png
12K     text-only-pdftocairo.svg
```

![PNG image from SVG using `convert` with no options.]({attach}images/text-only-svg-convert.png){#fig:convertSVGtoPNG width=80%}

The PNG image lacks the sharpness of definition the original exhibited, which is not surprising because an increase in image resolution has not been achieved, and moreover, the file size has been reduced. Note the white border that has been added to three sides of the image, perhaps to arrive at an integer number of pixels for the image dimensions. For SVG to PNG conversion, there are better tools than `convert`.

Font support in SVG is not widespread, and format conversions might result in non-optimal font rendering after conversion.

#### Conversion tools

There is a growing number of tools that can convert an SVG to a PNG image. Among these are:

a.  [`convert`](https://imagemagick.org/script/convert.php) from `ImageMagick`; 

a.  [`Inkscape`](https://inkscape.org/);

a.  [`cairosvg`](https://cairosvg.org/);

a.  [`rsvg-convert`](https://en.wikipedia.org/wiki/Librsvg) from `librsvg`.

We know that `convert` will produce a minimally sized PNG that faithfully converts pt to pixels. Other tools might enlarge the PNG by using some scaling factor larger than one. Moreover, different programs might insert borders, transparent backgrounds, etc., modifying the aspect ratio of the PNG slightly. We will gloss over such details in the tool comparison below and simply focus on the command line invocations and resulting file sizes. Bear in mind also that some of the tools could use identical backends and therefore give identical output images.

#### The tool faceoff

We will convert `text-only` from SVG to PNGs at 600 dpi, using different tools, and compare results, starting with `inkscape`.

```bash
inkscape  -d 600 -o text-only-600-dpi-inkscape-svg.png text-only-pdftocairo.svg
---
Background RRGGBBAA: ffffff00
Area 0:0:285.747:69.5467 exported to 1786 x 435 pixels (600 dpi)
---
identify text-only-600-dpi-inkscape-svg.png
---
text-only-600-dpi-inkscape-svg.png PNG 1786x435 1786x435+0+0 8-bit sRGB 43268B 0.000u 0:00.000
---
ls -sh text-only-600-dpi-inkscape-svg.png | awk '{print $1 "\t" $2}'
---
44K     text-only-600-dpi-inkscape-svg.png
```

![PNG at 600 dpi of `text-only` from SVG using `inkscape`.]({attach}images/text-only-600-dpi-inkscape-svg.png){#fig:inkscapeSVGtoPNG width=80%}

The explicit conversion from points to pixels at 600 dpi is clear, as is the image itself. We would expect the PNG to have a size of 1786 by 435 pixels, and it does. No surprises there. :slightly_smiling_face:

CairoSVG is designed to parse well-formed SVG files, and draw them on a Cairo surface. Cairo is then able to export them to PDF, PS, PNG, and even SVG files. If we use `cairosvg`, we get these results:

```bash
cairosvg -d 600 -f png -o text-only-600-dpi-cairosvg.png text-only.svg

identify text-only-600-dpi-cairosvg.png
---
text-only-600-dpi-cairosvg.png PNG 1785x434 1785x434+0+0 8-bit sRGB 42999B 0.000u 0:00.000
---
ls -sh text-only-600-dpi-cairosvg.png | awk '{print $1 "\t" $2}'
---
44K     text-only-600-dpi-cairosvg.png
```

![PNG at 600 dpi of `text-only` from SVG using `cairosvg`.]({attach}images/text-only-600-dpi-cairosvg.png){#fig:cairosvgSVGtoPNG width=80%}

The image and file sizes are within a whisker of each other for `inkscape` and `cairosvg` and they are comparable in ease of use and fidelity. Indeed, it could very well be that `inkscape` uses the `cairo` backend.

Now for the final tool, `rsvg-convert`.

```bash
rsvg-convert -a -d 600 -p 600 -f png -o text-only-600-dpi-rsvg-convert.png text-only.svg

identify text-only-600-dpi-rsvg-convert.png
---
text-only-600-dpi-rsvg-convert.png PNG 1786x435 1786x435+0+0 8-bit sRGB 43171B 0.000u 0:00.000
---
ls -sh text-only-600-dpi-rsvg-convert.png | awk '{print $1 "\t" $2}'
---
44K     text-only-600-dpi-rsvg-convert.png
```

Note that the `-a` option preserves aspect ratio, and the $x$ and $y$ resolutions have to be specified separately using `-d` and `-p` respectively. Though more verbose, it also offers options to shear or zoom the image and is more versatile.

All of `inkscape`, `cairosvg`, and `rsvg-convert` produce PNG files of the same size and visual quality, as is apparent from +@fig:inkscapeSVGtoPNG, +@fig:cairosvgSVGtoPNG, and +@fig:rsvg-convertSVGtoPNG.

![PNG at 600 dpi of `text-only` from SVG using `rsvg-convert`.]({attach}images/text-only-600-dpi-rsvg-convert.png){#fig:rsvg-convertSVGtoPNG width=80%}

Images like `animals` are best displayed as JPEGs. There is no obvious need to convert such images from JPEG to SVG and back again, simply to view how the quality changed during the roundtrip. Accordingly, we will not consider the `animals` image here.

@@@@@ Start Here @@@@

## Vector to vector

There are principally two format conversions here:

- PDF to SVG; and
- SVG to PDF.



### PDF to SVG: `pdftocairo` and `pdftoppm`

The `poppler` standalone utilities `pdftocairo` and `pdftoppm` offer a route from PDF to SVG. So, if we had the file `animals.pdf` we could convert it to SVG:

```bash
# PDF to SVG using pdftocairo
pdftocairo -svg animals.pdf animals-pdftocairo.svg

ls -Xsh animals.pdf animals-pdftocairo.svg | awk '{print $1 "\t" $2}'
---
204K    animals.pdf
268K    animals-pdftocairo.svg
```

Two observations are pertinent:

#.  It is preferable to convert from a raster image to PDF using `convert` and then convert that PDF to SVG using `pdftocairo` rather than convert directly from a raster to an SVG using `convert` in a single step. The file sizes that result are very much smaller with the two-stage conversion.

#.  `pdftoppm` is not set up to convert _to_ SVG, and hence cannot be used.

### `pdf2svg`

There is a utility called [`pdf2svg`](https://github.com/dawbarton/pdf2svg) that has been available for some time now. It may be used to accomplish the same PDF to SVG conversion as `pdftocairo`:

```bash
# PDF to SVG using pdf2svg
pdf2svg animals.pdf animals-pdf2svg.svg

ls -Xsh animals.pdf animals-pdf2svg.svg | awk '{print $1 "\t" $2}'
---
204K    animals.pdf
268K    animals-pdf2svg.svg
```

The file sizes are identical to those from the `pdftocairo` conversion. Drew Barton, the author of `pdf2svg`, [has written](https://cityinthesky.co.uk/opensource/pdf2svg/):

>Note: since this utility was written, the maintainers of Poppler have written a utility that works on the same principle: `pdftocairo`. I recommend that you use their utility since it is better maintained than mine.

So, it appears that `pdftocairo` is sufficient for converting from PDF to SVG.



PDF to SVG and SVG to PDF are the two types of vector conversions we consider here. The `cairo` and `poppler` libraries and their utilities are our "go to" resource if the source image is PDF. `cairosvg` and `rsvg-convert` are our resource when the source image is an SVG. The `Inkscape` GUI-based vector graphics editor supports SVG as its native format and allows export of the generated SVG graphics both as PDF and as PNG.

### PDF to SVG

WE have already converted from PDF to SVG using `pdftocairo` [previously][Generating an SVG from a PDF]. We repeat below the identical command used previously to generate the SVG image:

```bash
pdftocairo -svg text-only.pdf text-only-pdftocairo.svg

ls -Xsh text-only.pdf text-only-pdftocairo.svg | awk '{print $1 "\t" $2}'
---
16K     text-only.pdf
12K     text-only-pdftocairo.svg
---
pdfinfo text-only.pdf | grep pts
---
Page size:      214.31 x 52.16 pts
---
less text-only-pdftocairo.svg | grep viewBox
---
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="214.31pt" height="52.16pt" viewBox="0 0 214.31 52.16" version="1.2">
```

The PDF page size and the SVG viewBox are identical at 214.31 by 52.16 `pts`, as we would expect. For comparison, the [`text-only.pdf` image]({attach}images/text-only.pdf) may be opened on a separate browser tab and compared with the SVG shown in +@fig:SVGfromPDFviapdftocairo.

![SVG version of `text-only` image converted from PDF by `pdftocairo`.]({attach}images/text-only-pdftocairo.svg){#fig:SVGfromPDFviapdftocairo width=80%}

### PDF to SVG to PDF roundtrip

We could open up `text-only.svg` in `Inkscape` and save it as a PDF, `text-only-inkscape.pdf` completing the round trip. Or we could use the command line so:

```bash
inkscape text-only.svg -o text-only-inkscape.pdf

ls -Xsh text-only*.{svg,pdf}| awk '{print $1 "\t" $2}'
---
8.0K    text-only-inkscape.pdf
16K     text-only.pdf
12K     text-only.svg
```

What exactly has been gained or lost in this round trip is a little too recondite to consider here, and covers issues such as PDF version, font embedding or its absence, default borders, etc.

More to the point, though, is how do we convert from SVG to PNG on the command line using inkscape?

What about SVG to PNG? CairoSVG
Inkscape SVG to PNG?
`ImageMagick` SVG to PNG?

The cairosvg module offers 4 functions:

    svg2pdf,
    svg2png,
    svg2ps, and
    svg2svg.
CairoSVG is designed to parse well-formed SVG files, and draw them on a Cairo surface. Cairo is then able to export them to PDF, PS, PNG, and even SVG files.

## SVG to PDFs




`rsvg-convert`
`pdftocairo`

## Summary

#.  `convert` from `ImageMagick` is the tool of choice for converting from any raster format to another raster format or to PDF or SVG.

#.  When we start out with PDF as the source image format, and the destination format is either a raster format or SVG, the tool of choice is `pdftocairo` from the `poppler` utilities.

#.  When the source format is SVG and the destination format is either PDF or a raster format, the tool of choice is `cairosvg`.

*@tbl:formats summarizes this information, which is current at the time of writing, but could change as the image utilities landscape changes with time. 

Conversion Type     Tool
----------------    ----------- 
raster to raster    `convert`
raster to PDF       `convert`
raster to SVG       `convert`
PDF to raster       `pdftoppm`
SVG to raster       `cairosvg`
PDF to SVG          `pdftocairo`
SVG to PDF          `cairosvg`

Table: Tools for image format conversions. {#tbl:formats}

### Appendix: Security vulnerabilities in `ImageMagick`

Great power exacts a commensurate price. `ImageMagick`'s great power and ease of use does come at a great price: vulnerability to exploits by malicious remote actors.

`ImageMagick` uses external libraries or _backend tools_ which are called via `system()` commands in accordance with _delegated_ command strings specified in a configuration file called `policy.xml`.

In April 2016, it was reported that because of insufficient validation of delegated command strings, it was possible for someone to execute malicious code remotely, to the detriment of the unwitting user of `ImageMagick`. This was revealed at a website, interestingly named [ImageTragick](https://imagetragick.com/) to attract sufficient attention and remedial action to the discovered bug [@imagetragick2016].

In November 2020, [another security vulnerability was discovered](https://portswigger.net/daily-swig/imagemagick-pdf-parsing-flaw-allowed-attacker-to-execute-shell-commands-via-maliciously-crafted-image) [@leyden2020]. It was [reported and promptly patched](https://insert-script.blogspot.com/2020/11/imagemagick-shell-injection-via-pdf.html) by the `ImageMagick` maintainers [@infuhr2020].

Recent versions of the `ImageMagick` suite, bundled with major distributions, should have correctly configured `policy.xml` files that will block known exploits. [Sandboxing](https://www.techopedia.com/definition/25266/sandboxing) is another technique to quarantine the system from possible vulnerabilities. Above all, it is vital to keep  system and application software up to date to avail of evolutions in performance and security.

#### Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here.]({attach}./image-format-conversions.pdf)
