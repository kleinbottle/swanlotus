---
title: "A tale of two measures: degrees and radians"
author: R (Chandra) Chandrasekhar
date: 2023-10-17
modified: 2023-10-17
category: Mathematics
tags: Mathematics, Mathematical musings
summary: 'The transition from degrees to radians is often the most traumatic mathematical change that the student has to endure when moving from elementary to intermediate mathematics. The simplicity of 360° seems so much more welcoming than the equivalent of $2\pi$ radians for a full circle. $\pi$ is forbidding, because it is not [the convenient fractional fiction $\frac{22}{7}$](https://en.wikipedia.org/wiki/Proof_that_22/7_exceeds_%CF%80), but rather a number which is both [transcendental](https://mathworld.wolfram.com/TranscendentalNumber.html) and [irrational](https://en.wikipedia.org/wiki/Irrational_number) and therefore, somewhat "untidy". Surely this tradeoff between simplicity and complexity must have been worth it, or it would not have been so ordained. Here we attempt to fathom the method behind the madness for this change.'

opengraphimage: one-radian.png
---

The transition from degrees to radians is often the most traumatic mathematical change that the student has to endure when moving from elementary to intermediate mathematics. The simplicity of 360° seems so much more welcoming than the equivalent of $2\pi$ radians for a full circle. $\pi$ is forbidding, because it is not [the convenient fractional fiction $\frac{22}{7}$](https://en.wikipedia.org/wiki/Proof_that_22/7_exceeds_%CF%80), but rather a number which is both [transcendental](https://mathworld.wolfram.com/TranscendentalNumber.html) and [irrational](https://en.wikipedia.org/wiki/Irrational_number), and therefore somewhat "untidy". Surely this tradeoff between simplicity and complexity must have been worth it, or it would not have been so ordained. Here we attempt to fathom the method behind the madness for this change.

## What is an angle?

We first came across the idea of an _angle_ when we studied geometry in elementary or primary school. We then encountered _triangles_, which are closed figures with three straight sides and three enclosed angles. An _equilateral triangle_ is particularly symmetric, with three equal sides and three equal angles, as shown in @fig:equilateral.

![An equilateral triangle is one in which the three sides are equal. The points at which the lines meet to form the triangle are called _vertices_ (singular _vertex_). By convention, vertices are labelled with uppercase letters like $A$, $B$, and $C$. The lengths of the sides opposite the vertices are assigned the lowercase labels $a$, $b$, and $c$ respectively. The angles are here labelled $\alpha$, $\beta$, and $\gamma$. In this triangle, $a = b = c$, by definition, and by symmetry, $\alpha = \beta = \gamma$.]({attach}images/equilateral.png){#fig:equilateral width=75%}

## Degrees

When we started on geometry, we would proudly trot out our set of mathematical instruments, which would include a pair of compasses, a protractor, one or two set squares, and a ruler or straight edge. Of these, the protractor---that plastic semi-circle marked out in _degrees_---was the proud badge that proclaimed that we had left behind arithmetic and progressed onto geometry.

After we had learned to construct an equilateral triangle, using only compasses and a straight edge---_without measurement_ by ruler---we would take out the protractor to verify that each angle of an equilateral triangle was indeed 60°. That small circle ° at the top---the superscript---was called the _degree sign_, and we could then jubilantly celebrate our first rite of passage into geometry and mathematical symbols.

### Where did degrees come from?

Surely, degrees did not come from a protractor, although we use one to measure angles. How did degrees come about? With sixty degrees each in an equilateral triangle, ninety in a right angle , 180° in a straight line, and 360° in a full circle, how did degrees come to rule the roost of angular measure in elementary school?

Why not 100° in a full circle, or half circle, or even a quarter circle, also known as a right angle? Who imposed this measure upon us and what is its basis?

My favourite explanation for 360° degrees equalling a full circle is that the ancients estimated a solar year at around 360 days, and assigned one degree for each day of the year. Even if inexact, the number 360 had some [sexagesimal](https://en.wikipedia.org/wiki/Sexagesimal)^[It appears that all measures of time, from seconds, minutes, and hours, to months and days in a year, are based on 60 or its factors or multiples.] charm as it could be divided by the first three primes 2, 3, 5, and by their products. Indeed, 360 = 2^3^ × 3^2^ × 5. Accordingly, 360  has a large family of factors: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 18, 20, 24, 30, 36, 40, 45, 60, 72, 90, 120, 180, and 360.

But beyond the approximation of a solar year, and the convenience of ready division by its factors, the use of degrees as a unit of angular measure is, to me, arbitrary. Who deemed the circle to be 360°, despite it being very factor-friendly?

## From triangles to circles

What is the root concept behind the idea of an angle? Harking back to the equilateral triangle, when one line _changes direction_ by sixty degrees, we get the second line. These two lines form the angle. Change of direction may also be called _turning_. And when something turns, we may also say that it _rotates_.

The quintessential two-dimensional geometric figure that is associated with rotation is of course the _circle_. It is the most simple and symmetrical two-dimensional figure we can construct. It is the path or _locus_ traced out by a point that remains the _same_ distance from a fixed point called the _centre_. When a protractor is centred on the centre of a circle, we can measure out degrees on the circumference of the circle. So far so good. But what about that magic number 360? Well, we are about to exorcise it now. \emojifont :wink: \normalfont

## Radians as an alternative to degrees
One traumatic transition for the student of elementary mathematics is when he or she is forced to abandon the warm comfort of degrees as angular measure, and compulsorily made to embrace the cold and cruel radian as _the_ angular measure forever afterward. Why this unfair compulsion?

### Using circles to measure angles

Because the idea of an angle is related to rotation, it seems natural that we should define angles using the circle as a basis, rather the triangles that we encountered at first.

It is a fact that the length of a circle, or its _perimeter_, or its _circumference_, $C$, is always related to its radius, $r$, through the formula $C = 2\pi r$.

And $\pi$ is not $\frac{22}{7}$ as we were originally taught, but really a number whose precise expression cannot be predicted or exhausted. The digits simply keep rolling on, without pattern or end. But the beauty is that $\pi$ is nevertheless a unique number, a universal mathematical constant. It seems that Nature has played a game on us by making the simple symmetrical circle have a length that can only be approximated but never entirely known to an unlimited precision^[$\pi$, $e$ the base or natural logarithms, $\phi$ the golden ratio, along with a large pantheon of mathematical constants are irrational, and some are even possibly transcendental. Why Nature has this preference for the irrational is an intriguing question that needs an answer.].

### One radian

So, how does one define a radian? If, on the basis of its name, you guessed that it very likely involves the radius of a circle, your suspicion is well-founded. _One radian is the angle subtended at the centre of a circle of radius one unit by an arc that is also one unit long_. This is illustrated in @fig:radian.

![One radian is the angle subtended at the centre of a unit circle by an arc of length equal to one unit.]({attach}images/one-radian.png){#fig:radian width=80% .modal-image}

But what happens when our circle has a radius larger or smaller than one unit? The generalized definition of a radian is shown in @fig:general.

![Generalized measure of an angle in radians. The angle in radians is defined as $\theta = \frac{s_1}{r_1} = \frac{s_2}{r_2}$. The equality is valid because all circles are similar to each other.]({attach}images/general-radian.png){#fig:general width=65% .modal-image}

### Congruence and similarity

This is a mathematically non-rigorous digression on congruence and similarity.  One two-dimensional geometrical shape is _congruent_ to another if the two shapes may be rotated and translated, if necessary, and superimposed on each other to visually demonstrate that they are identical in size and shape and cannot then be told apart.

_Similarity_ is less restrictive than congruence and applies to geometric objects that have the same shape but not necessarily the same size. Intuitively, if two objects are similar, one may _zoom in_ or _zoom out_ on one object of the pair---without distortion---to obtain a version that may be superimposed on the other object to demonstrate that they are identical or congruent.

The ratios of the respective lengths of corresponding sides of similar triangles are the same. In like fashion, the ratio of the circumference to the radius of two circles of radii $r_1$ and $r_2$ will be $\frac{2\pi r_1}{r_1} =\frac{2\pi r_2}{r_2} = 2\pi$^[This is also a demonstration that a full circle corresponds to an angle of 360° or $2\pi$ radians.]. This is a consequence of the fact that _all circles are similar to each other_.

What other classes of geometrical objects can you think of that are similar to each other within their class?^[All circles are similar, as are  all equilateral triangles, all squares, and indeed, all regular $n$-gons, and all parabolas. What exactly does similarity mean? It means that the shape remains the same. Imagine a square or a circle. If you zoomed on the figure to enlarge or diminish it without distortion, and you could not see a change of shape, that figure exhibits similarity to every other figure in that class.]

## Radians as angular measure

We are now ready to define any angle $\theta$ in radians. The ratio of the length of the arc that subtends an angle of $\theta$ at the centre, to its radius, is the value of $\theta$ in radians. Succinctly, with reference to @fig:general, $\theta = \frac{s}{r}$. By dividing by the radius, we have in effect _normalized_ the definition of the radian, and removed any trace of arbitrariness in the definition. And that is why we started out slowly with @fig:radian, which dealt with a circle with unit radius.

Note that the value of $\theta$ is a ratio of two lengths and is therefore dimensionless in the sense of Physics. It may be considered a unitless _pure number_ [although the SI units do define the radian as the SI unit of angular measure](https://en.wikipedia.org/wiki/Radian).

With radians, we have the following:

#. Angular measure is directly proportional to arc length on a circle for all angles less than or equal to a full circle.
#. This measure is independent of the radius of the circle.
#. The resulting "unit" is really a unitless ratio of two lengths.

By defining radians as above, we remove the arbitrariness associated with 360° for a full circle. But the mathematical elegance and rigour conferred by radians comes at a cost. The angle of a full circle is $2\pi$, which is a computationally inconvenient number to say the least.

If you think about it, with radians the size of an angle is expressed as a ratio of two lengths. But we have encountered angles being associated with ratios of lengths elsewhere in mathematics as well. Such ratios are familiar to us from trigonometry where the $\sin$, $\cos$, and $\tan$ functions are expressed as the ratios of lengths in a right-angled triangle. We review this relationship next.

## Trigonometric functions

Trigonometric functions are one of the workhorses of applied mathematics. They arose from the study of right-angled triangles. The three standard trigonometric functions are the _sine_, _cosine_, and _tangent_ functions. They are represented by the abbreviated functional names $\sin$, $\cos$, and $\tan$ when used in mathematics. @fig:trig shows the pictorial definitions of these three trigonometric functions. Notice particularly how these function values are the unitless _ratios of two lengths_, just as with radians.

![Trigonometric functions defined as ratios of lengths of sides in a right-angled triangle.]({attach}images/trig.png){#fig:trig width=90% .modal-image}

## Circular (Trigonometric) Functions

The trigonometric functions are also called the _circular_ trigonometric functions, uniting the circle _and_ the triangle as the progenitors of the trigonometric functions. We will briefly review that relationship here, to better understand not only the terminology but also the hidden relationships between the triangle and circle^[The equilateral triangle is the regular $n$-gon with the smallest number of sides and the circle is the limiting case of an $n$-gon when $n$ tends to infinity. The trigonometric functions are the children of these unlikely parents.].

There used to be occasions when I used to wonder why the word _tangent_ was used for the name of a trigonometric function because a circle was not involved in its definition using a triangle. It was only after I came across the definitions of the three standard trigonometric functions that I understood the mystery behind the nomenclature.

The radian was introduced with a _unit circle_. The same helpful figure will serve to relate the triangle and circle to the trigonometric functions, as illustrated in @fig:unit below.

![A pictorial representation of the unit circle and the three standard trigonometric functions and their inter-relationships. See the text for a full explanation.]({attach}images/unit-circle.png){#fig:unit width=85% .modal-image}


 In triangle $OSC$, note that the hypoteneuse $OS$, being the radius, is one unit long. Therefore the length of $OC$ equals $\cos\theta$ and the length of $CS$ equals $\sin\theta$. The point $T$ denotes the intersection of $OS$ produced and the tangent to the circle at $D$. Given that $OD$, being a radius, is also one unit long, the length $DT$ is equal to $\tan\theta$. The fact that $DT$ is a _tangent_ to the circle should explain why this function is called the $\tan$.
The simple device of unit radius helps us understand how the $\cos$ and $\sin$ functions are the $x$ and $y$ taken on the signed $x$ and $y$ co-ordinates of $S$.

Also, try to visualize what would happen when $S$ lies on the $y$ axis, i.e, at $\frac{\pi}{2}$ radians. The lines $OS$ and $DT$ would be parallel and never meet. Loosely speaking, parallel lines are supposed to "meet at infinity" and that is why $\tan\frac{\pi}{2}$ is said to be infinite at that point.

## Power series expansions of trigonometric functions

This is where the plot thickens.

$\sin \theta \approx \theta$ for $\theta$ close to zero. The number on the left hand side is a unitless ratio of lengths or "pure" number. This requires the right hand side to also be expressed in a similar unitless measure, and radians fits the bill.

## Calculus and Fourier series

When we deal with trigonometric functions in calculus or when applying Fourier series, we will fully realize the boon conferred by the unitless radians as an angular measure since they will be compatible with the other _pure numbers_ (real or complex) that we will be dealing with.








## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./radians.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/radians.pdf>
:::






