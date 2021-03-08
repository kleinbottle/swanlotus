---
title: A brief tutorial on image format conversions
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

The former leads to image blockiness or [pixellation](https://en.wikipedia.org/wiki/Pixelation) at high magnifications, while the latter scales without degradation when magnified, as shown in +@fig:raster-vector.

![Difference between raster/bitmap and vector graphics.^[The original uploader was Darth Stabro at English Wikipedia., [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/), via Wikimedia Commons. [This](https://upload.wikimedia.org/wikipedia/commons/a/aa/VectorBitmapExample.svg) is the original file URL.]]({attach}images/raster-vector.svg){#fig:raster-vector  width=40%}

### Raster Graphics

There are dozens of image formats, including:

#.  The [Tag(ged) Image File Format (TIFF)](https://en.wikipedia.org/wiki/TIFF) which is used in printing;
#.  The [Joint Photographic Experts Group(JPEG)](https://jpeg.org/about.html) format for scene and portrait image display and compression; and
#.  The [Portable Network Graphics (PNG)](http://www.libpng.org/pub/png/) format, optimized principally for text-based image display and compression.

All three formats employ raster graphics.

### Vector Graphics

The two principal vector graphics formats are:

#.  The [Portable Document Format (PDF)](https://en.wikipedia.org/wiki/PDF) format which is used primarily in archival quality electronic and printed documents; while
#.  The [Scalable Vector Graphics (SVG)](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) format---interestingly text-based---is used for graphics display on web browsers.

Both these formats employ vector graphics.

## Format conversions

It is often necessary---for a variety of reasons---to convert from one image format to another. There are four possibilities:

a.  raster to raster;
a.  raster to vector;
a.  vector to raster; and
a.  vector to vector

We consider each of these in turn using [platform-neutral](https://itlaw.wikia.org/wiki/Platform_neutral) [open source](https://opensource.com/resources/what-open-source) tools. Since I run [GNU/Linux](https://en.wikipedia.org/wiki/GNU/Linux_naming_controversy) on my desktop, my examples will feature commands from that setup.^[There are a good number of websites that promise conversion online, requiring you to upload the input file and download the output file. These _might be_ fraught with security risks. Use them only if you trust that your documents will not be misused.]

## ImageMagick: the Swiss Army knife

[ImageMagick](https://imagemagick.org/index.php) is the name given to a suite of image processing tools originally created in 1987 by John Cristy, then working for [Du Pont](https://www.dupont.com/). In 1990, it was freely released by Du Pont, who transferred copyright to [ImageMagick Studio LLC](https://imagemagick.org/script/contact.php) who now maintain the project. It is distributed under a derived Apache 2.0 [license](https://imagemagick.org/script/license.php). The [authoritative source code repository](https://github.com/ImageMagick/ImageMagick) shows active development even today, 34 years after the suite was first released [@imagemagicksource].

ImageMagick is so versatile and useful that it may rightfully be called the [Swiss Army knife](https://www.thefreedictionary.com/Swiss-army+knife) of the image processing world. 

ImageMagick comes with several command line utilities, each replete with options. Among these are:

- [`convert`](https://imagemagick.org/script/convert.php) which converts from one format to another;
- [`display`](https://imagemagick.org/script/display.php) which displays one or more images;
- [`identify`](https://imagemagick.org/script/identify.php) which identifies the type of image and displays its characteristics;
- [`mogrify`](https://imagemagick.org/script/mogrify.php) which transforms an image, modifying its appearance; and
- [`montage`](https://imagemagick.org/script/montage.php) which generates an image montage.

The above list is far from exhaustive. The interested reader is referred to the [excellent online documentation](https://imagemagick.org/script/command-line-tools.php) for further details. The power of ImageMagick is enhanced with the [magick-script](https://imagemagick.org/script/magick-script.php) Image Scripting Language. In the examples below, I will give both the command line invocations and scripts for performing image conversions.

### ImageMagick's security vulnerabilities

ImageMagick uses external libraries which are called via `system()` commands in accordance with command strings specified in a "delegate" or "policy" configuration file called `delegates.xml` or `policy.xml`. 

In April 2016, it was reported that because of insufficient shell character filtering to validate the command string, it was possible for a bad actor to execute malicious code remotely, to the detriment of the unwitting user of ImageMagick. This was revealed at a website, interestingly named [ImageTragick](https://imagetragick.com/) to attract sufficient attention and remedial action to the discovered bug [@imagetragick2016].

In November 2020, [another security vulnerability was discovered](https://portswigger.net/daily-swig/imagemagick-pdf-parsing-flaw-allowed-attacker-to-execute-shell-commands-via-maliciously-crafted-image). It was reported and patched by the ImageMagick developers.

https://portswigger.net/daily-swig/imagemagick-pdf-parsing-flaw-allowed-attacker-to-execute-shell-commands-via-maliciously-crafted-image

https://imagetragick.com/

https://www.enisa.europa.eu/publications/info-notes/what2019s-behind-imagemagick-vulnerability

https://blog.trendmicro.com/trendlabs-security-intelligence/imagemagick-vulnerability-allows-remote-code-execution-now-patched/

https://bugs.archlinux.org/task/59778

https://www.openwall.com/lists/oss-security/2018/08/22/3

https://www.kb.cert.org/vuls/id/332928

https://bugs.archlinux.org/task/62171

https://www.openwall.com/lists/oss-security/2018/08/23/12

## Raster to raster






## Recent vulnerabilities

For many years, ImageMagick and its delegate programs were all that you needed to format-convert an image from raster to vector graphics and vice versa. But in 2016, a security vulnerability was found in the chain of tools that were used that led to certain format conversions to be disallowed because of weaknesses in some of the delegate tools. GIVE REFERENCES.


## Image to PDF

Still works. No strictures. But the PDF can get grungy. Use a pyramid of resolutions.

### Avoiding blurry PDFs

-units pixelsperinch -density 1200 etc., in conversion

Useful when a hgh resolution image is available. In any case: PDF and png/jpg sizes are similar.

## Choosing the optimal image resolution for a clear PDF

96dpi for screen
150 dpi default
300 dpi for print [give references]


```{bash}
convert -units pixelsperinch -density 300 file.png file.pdf
```
## PDF to image not supported

```{bash}
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



```{bash}
pdftoppm -png ernst-heackel-medium.pdf ernst-heackel-medium.png
convert ernst-heackel-medium.jpg ernst-heackel-medium-direct.png
convert ernst-heackel-medium.jpg ernst-heackel-medium-direct.png
```
How to use resize etc.

## Image used below

https://www.rawpixel.com/board/1236113/kunstformen-der-natur-ernst-haeckel-free-cc0-public-domain-animal-prints

#### Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

<!--\noindent A PDF version of this article is [available for download here.]({attach}./image-format-conversions.pdf)-->

