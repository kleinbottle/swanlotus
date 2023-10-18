---
title: "A tale of two measures: degrees and radians"
author: R (Chandra) Chandrasekhar
date: 2023-10-17
modified: 2023-10-17
category: Mathematics
tags: Mathematics, Mathematical musings
summary: The transition from degrees to radians is often the most traumatic mathematical change that the student has to endure when moving from elementary to intermediate mathematics. The simplicity of 360° seems so much more welcoming than the forbidding 2π radians for a full circle, embodying the transcendental, irrational number π. Surely this transition must have been worth it or it would not have been so ordained. Here we attempt to fathom the method behind the madness in this change.

opengraphimage: one-radian.png
---

The transition from degrees to radians is often the most traumatic mathematical change that the student has to endure when moving from elementary to intermediate mathematics. The simplicity of 360° seems so much more welcoming than the equivalent of 2π radians for a full circle. π is forbidding, because it is not [the convenient fractional fiction $\frac{22}{7}$](https://en.wikipedia.org/wiki/Proof_that_22/7_exceeds_%CF%80), but rather a number which is both [transcendental](https://mathworld.wolfram.com/TranscendentalNumber.html) and [irrational](https://en.wikipedia.org/wiki/Irrational_number). Surely this tradeoff between simplicity and complexity must have been worth it, or it would not have been so ordained. Here we attempt to fathom the method behind the madness for this change.

## What is an angle?

We first came across the idea of an _angle_ when we studied geometry in elementary or primary school. We then encountered _triangles_, which are closed figures with three straight sides and three enclosed angles. An _equilateral triangle_ is particularly symmetric, with three equal sides and three equal angles.

![An equilateral triangle is one in which the three sides are equal. The points at which the lines meet to form the triangle are called _vertices_ (singular _vertex_). By convention, vertices are labelled with uppercase letters like $A$, $B$, and $C$. The lengths of the sides opposite the vertices are assigned the lowercase labels $a$, $b$, and $c$ respectively. The angles are labelled $\alpha$, $\beta$, and $\gamma$. In this triangle, $a = b = c$, by definition, and by symmetry, $\alpha = \beta = \gamma$.]({attach}images/equilateral.png){width=75%}

## Degrees

When we started on geometry, we would proudly trot out our set of mathematical instruments, which would include a pair of compasses, a protractor, one or two set squares, and a ruler or straight edge. Of these, the protractor---hat plastic semi-circle marked out on _degrees_---was the proud badge that proclaimed that we had left behind arithmetic and progressed onto geometry.

After we had learned to construct an equilateral triangle, using only compasses and a straight edge and _without measurement_ by ruler, we would take out the protractor to verify that each angle of an equilateral triangle was indeed 60°. That small circle at the top---the superscript---was called the _degree sign_, and we could then jubilantly celebrate our first rite of passage, into geometry and mathematical symbols.

### Where did degrees come from?

Surely, degrees did not come from a protractor, although we use one to measure angles. How did degrees come about? With sixty degrees each in an equilateral triangle, ninety in a right angle , 180° in a straight line, and 360° in a full circle, how did degrees come to rule the roost of angular measure in elementary school?

Why not 100° in a full circle, or half circle, or even a quarter circle, also known as a right angle? Who imposed this measure upon us and what is its basis?

My favourite explanation for 360° degrees equalling a full circle is that the ancients estimated a solar year at around 360 days, and assigned one degree for each day of the year. Even if inexact, the number 360 had some [sexagesimal](https://en.wikipedia.org/wiki/Sexagesimal) charm as it could be divided by the first three primes 2, 3, 5, and by their products. Indeed, 360 = 2^3^ × 3^2^ × 5. Accordingly, 360  has a large family of factors: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 18, 20, 24, 30, 36, 40, 45, 60, 72, 90, 120, 180, and 360.

But beyond the approximation of a solar year, and the convenience of ready division by its factors, the use of degrees as a unit of angular measure is, to me, arbitrary. Who deemed the circle to be 360°, despite it being very factor-friendly?

## From triangles to circles

What is the root concept behind the idea of an angle? Harking back to the equilateral triangle, when one line _changes direction_ by sixty degrees, we get the second line. These two lines form the angle. Change of direction may also be called _turning_. And when something turns, we may also say that it _rotates_.

The quintessential geometric figure that is associated with rotation is of course the _circle_. It is the most simple and symmetrical two-dimensional figure we can construct. It is the path or _locus_ traced out by a point that remains the _same_ distance from a fixed point called the _centre_. When a protractor is centred on the figure of a circle, we can measure out degrees on the circumference of the circle. So far so good. But what about the magic number 360? We are about to exorcise it now. \emojifont :wink: \normalfont

## Radians as an alternative to degrees
One traumatic transition for the student of elementary mathematics is when he or she is forced to abandon the warm comfort of degrees as angular measure, and compulsorily made to embrace the radian as _the_ angular measure forever afterward. Why this cruel compulsion?

### Using circles to measure angles

Because the idea of an angle is related to rotation, it seems natural that we should define angles using the circle as a basis, rather the triangles that we encountered at first.

It was discovered that the length of a circle, or its _perimeter_, or its _circumference_, $C$, is always related to to its radius, $r$, through the formula $C=2πr$. And π is not $\frac{22}{7}$ as were originally taught, but really a number whose expression cannot be predicted or exhausted. The digits simply keep rolling on without pattern or end. But the beauty is that π is a constant, unique number. It seems that Nature has played a game on us by making the simple symmetrical circle have a length that can only be approximated but never entirely known.

### One radian

Since a

### Congruence and similarity




How do I measure an angle?

Most of us first hear of an angle when we encounter triangles. When two lines that are not parallel meet, they enclose an angle. So, is an angle a measure of lack of alignment? If a string is fixed to two points, and you put your finger somewhere in between, the string will make an angle. Can lines be used to measure angles?

If you chased angles by chasing lines, it is likely that your pursuit of a robust definition of angle would hit some roadblocks. But f you introduced the idea of _rotation_ on the plane, then you would discover that two lines that are aligned, i.e., that are parallel, do not make any angle, each with the other.

But the moment they move out of alignment or out of being parallel, you would notice that one line _turned_ with respect to the other. Turning is rotation. And angles measure this rotation. How do you rotate your body? By moving in a circle, turning east, north, west, and south, for example. Rotation implies movement in a circle.

So, we measure angles using the circle as the basis. And the largest angle we can make is one full circle. After that, any further rotation gives us more of the same. So, angles may be measured from zero to one full circle, before everything starts repeating itself.



Why are radians used?

Radians are an angular measure in which the size of the angle is expressed as a ratio of two lengths. These ratios are familiar to us from trigonometry where the sin, cos, and tan functions are expressed as the ratios of lengths in a right-angled triangle.

But if you think carefully, an angle involves _rotation_ and the simplest and most symmetrical figure in two-dimensions involving a rotation is a circle. So, angles are best measured using a circle as the basis for denoting angular size rather than from a triangle, even if triangles are the first time when you encountered angles.

All circles are similar. As are all squares, all equilateral triangles, all regular n-gons. What exactly does similarity mean? It means that the shape remains the same.Imagine a square or a circle. If you zoomed the figure to enlarge or diminish it without distortion, and you could not see a change pf shape, that figure exhibits similarity to every other figure in that class.

When we attempt to define a standardized angular measure we require the following:

#.  the measure should be based on a circle or its arc
#.  the measure should be independent of the radius of the circle




## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./radians.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/radians.pdf>
:::






