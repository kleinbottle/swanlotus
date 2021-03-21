

https://en.wikipedia.org/wiki/Cairo_(graphics)

https://www.cairographics.org/

https://cgit.freedesktop.org/cairo

### Inkscape

https://wiki.inkscape.org/wiki/index.php/Tools

## pdf2svg

https://cityinthesky.co.uk/opensource/pdf2svg/

https://github.com/dawbarton/pdf2svg

https://inkscape.org/develop/about-svg/









## Image to PDF

Still works. No strictures. But the PDF can get grungy. Use a pyramid of resolutions.

### Avoiding blurry PDFs

-units pixelsperinch -density 1200 etc., in conversion

Useful when a hgh resolution image is available. In any case: PDF and png/jpg sizes are similar.

## Choosing the optimal image resolution for a clear PDF

96dpi for screen
150 dpi default
300 dpi for print [give references]

```bash
convert -units pixelsperinch -density 300 file.png file.pdf
```

## PDF to image not supported

```bash
#! /bin/magick
convert file.pdf file.png
```

```
convert test.pdf test.png
---
convert: unable to open image 'test.pdf': No such file or directory @ error/blob.c/OpenBlob/3537.
convert: no images defined `test.png' @ error/convert.c/ConvertImageCommand/3304.
```

### Security considerations

`ImageMagick` is no more the famed Swiss army knife for conversions from PDFs to images.

Give references to security concerns.

## Enter poppler


## Vector to vector

There are basically two possibilities:

a.  PDF to SVG; and
a.  SVG to PDF.

Both are possible with the `cairo` library and `poppler` suite as well as other libraries and utilities.

### PDF to SVG

pdftocairo -svg
pdftoppm -svg?
pdf2svg
Any others?

### SVG to PDF

CairoSVG https://cairosvg.org/: single executabe cairosvg from python-cairosvg: safety
rsvg-convert from librsvg
Inkscape
`ImageMagick`
any others?


https://wiki.gnome.org/Projects/LibRsvg

```bash
pdftoppm -png ernst-heackel-medium.pdf ernst-heackel-medium.png
convert ernst-heackel-medium.jpg ernst-heackel-medium-direct.png
convert ernst-heackel-medium.jpg ernst-heackel-medium-direct.png
```

How to use resize etc.
