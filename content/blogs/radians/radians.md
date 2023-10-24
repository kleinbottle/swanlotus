---
title: "A tale of two measures: degrees and radians"
author: R (Chandra) Chandrasekhar
date: 2023-10-17
modified: 2023-10-23
category: Mathematics
tags: Mathematics, Mathematical musings
summary: 'The transition from degrees to radians is often the most traumatic mathematical change that the student has to endure when moving from elementary to intermediate mathematics. The simplicity of 360° seems so much more welcoming than the equivalent of $2\pi$ radians for a full circle. $\pi$ is forbidding, because it is not [the convenient fractional fiction $\frac{22}{7}$](https://en.wikipedia.org/wiki/Proof_that_22/7_exceeds_%CF%80), but rather a number which is both [transcendental](https://mathworld.wolfram.com/TranscendentalNumber.html) and [irrational](https://en.wikipedia.org/wiki/Irrational_number) and therefore, somewhat "untidy". Surely this tradeoff between simplicity and complexity must have been worth it, or it would not have been so ordained. Here we attempt to fathom the method behind the madness for this change.'
opengraphimage: one-radian.png
---

The transition from degrees to radians is often the most traumatic mathematical change that the student has to endure when moving from elementary to intermediate mathematics. The simplicity of 360° seems so much more welcoming than the equivalent of $2\pi$ radians for a full circle. $\pi$ is forbidding, because it is not [the convenient fractional fiction $\frac{22}{7}$](https://en.wikipedia.org/wiki/Proof_that_22/7_exceeds_%CF%80), but rather a number which is both [transcendental](https://mathworld.wolfram.com/TranscendentalNumber.html) and [irrational](https://en.wikipedia.org/wiki/Irrational_number), and therefore somewhat "untidy". Surely this tradeoff between simplicity and complexity must have been worth it, or it would not have been so ordained. Here we attempt to fathom the method behind the madness for this change.

## What is an angle?

For most of us, the idea of an _angle_ first arose when we studied geometry in elementary or primary school. We then encountered _triangles_, which are closed figures with three straight sides and three enclosed angles. An _equilateral triangle_ is particularly symmetric, with three equal sides and three equal angles, as shown in @fig:equilateral.

![An equilateral triangle is one in which the three sides and three angles are equal. ]({attach}images/equilateral.png){#fig:equilateral width=75% .modal-target}

The point at which a line meets another line is called a _vertex_, which has the sense of a ["turning point"](https://www.etymonline.com/search?q=vertex). By convention, vertices (plural of vertex) are labelled with uppercase letters like $A$, $B$, and $C$. The lengths of the sides opposite the vertices are assigned the lowercase labels $a$, $b$, and $c$ respectively. The angles have been  labelled with the Greek letters $\alpha$, $\beta$, and $\gamma$. For all equilateral triangles, $a = b = c$, by definition, and by symmetry, $\alpha = \beta = \gamma$.

## Degrees

On encountering geometry, we very likely proudly trotted out our set of mathematical instruments, which would include a pair of compasses, a protractor, one or two set squares, and a ruler or straight edge. Of these, the protractor---that plastic semi-circle marked out in _degrees_---was the proud badge that proclaimed that we had left behind arithmetic and progressed onto geometry.

After we had learned to construct an equilateral triangle, using only compasses and a straight edge---_without measurement_ by ruler---we would take out the protractor to verify that each angle of an equilateral triangle was indeed 60°. That small circle ° at the top---the superscript---was called the _degree sign_, and we could then jubilantly celebrate our first rite of passage into geometry and mathematical symbols.

### Where did degrees come from?

Surely, degrees did not come from a protractor, although we use one to measure angles. How did degrees come about? With sixty degrees each in an equilateral triangle, ninety in a right angle , 180° in a straight line, and 360° in a full circle, how did degrees come to rule the roost of angular measure in elementary school?

Why not 100° in a full circle, or half circle, or even a quarter circle, also known as a right angle? Who imposed this measure upon us and what is its basis?

My favourite explanation for 360° degrees equalling a full circle is that the ancients estimated a solar year at around 360 days, and assigned one degree for each day of the year. Even if inexact, the number 360 had some [sexagesimal](https://en.wikipedia.org/wiki/Sexagesimal)^[It appears that all measures of time, from seconds, minutes, and hours, to months and days in a year, are based on 60 or its factors or multiples.] charm as it could be divided by the first three primes 2, 3, 5, and by their products. Indeed, 360 = 2^3^ × 3^2^ × 5. Accordingly, 360  has a large family of factors: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 18, 20, 24, 30, 36, 40, 45, 60, 72, 90, 120, 180, and 360.

But beyond the approximation of a solar year, and the convenience of ready division by its factors, the use of degrees as a unit of angular measure is, to me, arbitrary. Who deemed the circle to be 360°, despite it being very factor-friendly?

## From triangles to circles

What is the root concept behind the idea of an angle? Harking back to etymology of the word vertex---and applying it to the equilateral triangle---when one line _changes direction_ by sixty degrees, we get the second line. These two lines form the angle. Change of direction may also be called _turning_ or _rotation_.

The quintessential two-dimensional geometric figure that is associated with rotation is of course the _circle_. It is the most simple and symmetrical two-dimensional figure we can construct. It is the path or _locus_ traced out by a point that remains the _same_ distance from a fixed point called the _centre_. When a protractor is centred on the centre of a circle, we can measure out degrees on the circumference of the circle. So far so good. But what about that magic number 360? Well, we are about to exorcise it now. \emojifont :wink: \normalfont

## Radians as an alternative to degrees

One traumatic transition for the student of elementary mathematics is when he or she is forced to abandon the warm comfort of degrees as angular measure, and compulsorily made to embrace the cold and cruel radian as _the_ angular measure forever afterward. Why this unfair compulsion?

### Using circles to measure angles

Because the idea of an angle is related to rotation, it seems natural that we should define angles using the circle as a basis, rather than the triangles that we encountered at first.

It is a fact that the length of a circle, or its _perimeter_, or its _circumference_, $C$, is always related to its radius, $r$, through the formula $C = 2\pi r$.

And $\pi$ is not $\frac{22}{7}$ as we were originally taught, but really a number whose precise expression cannot be predicted or exhausted. The digits simply keep rolling on, without pattern or end. But the beauty is that $\pi$ is nevertheless a unique number, a universal mathematical constant. It seems that Nature has played a game on us by making the simple symmetrical circle have a length that can only be approximated but never entirely known to an unlimited precision.^[$\pi$, $e$ the base or natural logarithms, $\phi$ the golden ratio, along with a large pantheon of mathematical constants are irrational, and some are even possibly transcendental. Why Nature has this preference for the irrational is an intriguing question that needs an answer.]

### One radian

So, how does one define a radian? If, on the basis of its name, you guessed that it very likely involves the radius of a circle, your suspicion is well-founded. _One radian is the angle subtended at the centre of a circle of radius one unit by an arc that is also one unit long_. This is illustrated in @fig:radian.

![One radian is the angle subtended at the centre of a unit circle by an arc of length equal to one unit.]({attach}images/one-radian.png){#fig:radian width=80% .modal-target}

But what happens when our circle has a radius larger or smaller than one unit? The generalized definition of a radian is shown in @fig:general.

![Generalized measure of an angle in radians. The angle in radians is defined as $\theta = \frac{s_1}{r_1} = \frac{s_2}{r_2}$. The equality is valid because all circles are similar to each other.]({attach}images/general-radian.png){#fig:general width=65% .modal-target}

### Congruence and similarity

This is a mathematically non-rigorous digression on congruence and similarity.  One two-dimensional geometrical shape is _congruent_ to another if the two shapes may be rotated and translated, if necessary, and superimposed on each other to visually demonstrate that they are identical in size and shape and cannot then be told apart.

_Similarity_ is less restrictive than congruence and applies to geometric objects that have the same shape but not necessarily the same size. Intuitively, if two objects are similar, one may _zoom in_ or _zoom out_ on one object of the pair---without distortion---to obtain a version that may be superimposed on the other object to demonstrate that they are identical or congruent.

The ratios of the respective lengths of corresponding sides of similar triangles are the same. In like fashion, the ratio of the circumference to the radius of two circles of radii $r_1$ and $r_2$ will be $\frac{2\pi r_1}{r_1} =\frac{2\pi r_2}{r_2} = 2\pi$, demonstrating that a full circle corresponds to an angle of 360° or $2\pi$ radians. This is a consequence of the fact that _all circles are similar to each other_.

What other classes of geometrical objects can you think of that are similar to each other within their class?^[All circles are similar, as are  all equilateral triangles, all squares, and indeed, all regular $n$-gons, and all parabolas. What exactly does similarity mean? It means that the shape remains the same. Imagine a square or a circle. If you zoomed on the figure to enlarge or diminish it without distortion, and you could not see a change of shape, that figure exhibits similarity to every other figure in that class.]

## Radians as angular measure

We are now ready to define any angle $\theta$ in radians. The ratio of the length of the arc that subtends an angle of $\theta$ at the centre, to its radius, is the value of $\theta$ in radians. Succinctly, with reference to @fig:general,
$$
\theta \triangleq\frac{s}{r}.
$${#eq:defrad}

By dividing the arc length by the radius, we have in effect _normalized_ radian measure, and removed any trace of arbitrariness in its definition. And that is why we started out with @fig:radian, which dealt with a circle of unit radius.

Note that the value of $\theta$ is a ratio of two lengths and is therefore dimensionless in the sense of Physics. It may be considered a unitless _pure number_ [although the SI units do define the radian as the SI unit of angular measure](https://en.wikipedia.org/wiki/Radian).

In summary, with radians, we have the following:

#. Angular measure is directly proportional to arc length on the circle.
#. This measure is independent of the radius of the circle.
#. The resulting "unit" is really a unitless ratio of two lengths.
#. Since 360° equals $2\pi$ radians, 1° approximately equals 0.017453292 radians. Likewise, 1 radian equals approximately 57.29577951°.^[These conversion factors must dispel any mystique attached to radians vis-a-vis degrees.]

By defining radians as above, we remove the arbitrariness associated with 360° for a full circle. But the mathematical elegance and rigour conferred by radians comes at a cost. The angle of a full circle is $2\pi$, which is a computationally inconvenient number to say the least.

If you think about it, the size of an angle in radians is expressed as a _ratio of two lengths_. But we have encountered angles being associated with ratios of lengths elsewhere in mathematics as well. Such ratios are familiar to us from _trigonometry_ where the $\sin$, $\cos$, and $\tan$ functions are expressed as the ratios of lengths in a right-angled triangle. We review this relationship next.

## Trigonometric functions

Trigonometric functions are one of the workhorses of applied mathematics. They arose from the study of right-angled triangles. The three standard trigonometric functions are the _sine_, _cosine_, and _tangent_ functions. They are represented by the abbreviated functional names $\sin$, $\cos$, and $\tan$ when used in mathematics. @fig:trig shows the pictorial definitions of these three trigonometric functions. Notice particularly how these function values are the unitless _ratios of two lengths_, just as with radians.

![Trigonometric functions defined as ratios of lengths of sides in a right-angled triangle.]({attach}images/trig.png){#fig:trig width=90% .modal-target}

## The Circular Functions

The trigonometric functions are also called the _circular_ trigonometric functions, uniting the circle _and_ the triangle as their progenitors. We will briefly review that relationship here, to better understand not only the terminology but also the hidden relationships between the triangle and the circle.^[The equilateral triangle is the regular $n$-gon with the smallest number of sides and the circle is the limiting case of an $n$-gon when $n$ tends to infinity. The trigonometric functions are the children of these unlikely parents, at the extreme ends of the $n$-gon spectrum.]

I used to wonder why the word _tangent_ was used for the name of a trigonometric function because a circle was not involved in its definition; a triangle was. But when the three standard trigonometric functions are viewed vis-a-vis a unit circle, the mystery behind the nomenclature is revealed.

The radian was introduced here using a _unit circle_. The same helpful unit circle will serve to relate the triangle and the circle to the trigonometric functions, as illustrated in @fig:unit below.

![A pictorial representation of the unit circle, the three standard trigonometric functions, and their inter-relationships. See the text for a full explanation.]({attach}images/unit-circle.png){#fig:unit width=85% .modal-target}

@fig:unit shows a unit circle drawn on the two-dimensional coordinate plane with $x$ and $y$ axes and grid markings. The centre of the circle is $O$ and $S$ is a variable point on the circumference of the circle, that makes a counter-clockwise angle $\theta$ with the positive $x$-axis. As $\theta$ varies, so does the position of $S$ on the circle.

The line $OS$ is a radius and therefore one unit in length. The perpendicular from $S$ to the $x$-axis meets it at $C$. Referring to @fig:trig, we may say $\cos\theta = \frac{OC}{OS} = OC$ since $OS = 1$. Accordingly, the $x$-coordinate of $S$ is $\cos\theta$. Likewise, $\sin\theta = \frac{SC}{OS} = SC$. Thus, the $y$-coordinate of $S$ is $\sin\theta$.

_$S$ is therefore the point with coordinates $(\cos\theta, \sin\theta)$_.

Note that since the coordinates of $S$ are confined to the unit circle, the values of $\sin\theta$ and $\cos\theta$ are confined to the closed interval $[-1, 1]$, i.e. they perforce have values lying  between $-1$ and $1$, both inclusive. From @fig:unit, we see that $(\cos\theta, \sin\theta)$---which represent the coordinates of $S$---take on signed values in accordance with the signs of $x$ and $y$ in the respective quadrants. One could also view the associated _lengths_ as signed values.



### The tangent function

The really insightful revelation from @fig:unit comes from looking at $\tan\theta$. Have you ever wondered why the function $\tan\theta = \frac{\sin\theta}{\cos\theta}$ is called the _tangent_ function? Take a look at @fig:unit to see that the line $DT$ is _tangent_ to the circle at the point $(1, 0)$, which is $D$. In this case, $\tan\theta = \frac{DT}{OD} = DT$ since $OD$ is a radius equal to one unit.

Therefore, the value of the tangent function for an angle $\theta$ may be determined geometrically by extrapolating the radius $OS$ until it intersects the tangent to the circle at $D$ at a point called $T$. The length $DT$ is the value of $\tan\theta$.

Note, though, that $\tan\theta$ is a length _outside the unit circle_ and is therefore not  constrained to take on values between $-1$ and $1$. Indeed, as $\theta$ starts increasing in the first quadrant of the unit circle, you will notice that as $OS$ approaches the $y$-axis and as $\theta$ approaches $\frac{\pi}{2}$ (or 90°, if you are still attached to degrees), the line $OS$ is increasingly aligned with $DT$. At $\theta=\frac{\pi}{2}$, $OS$ is parallel to $DT$ and ["never the twain shall meet"](https://en.wikipedia.org/wiki/The_Ballad_of_East_and_West). Loosely speaking, parallel lines are only supposed to "meet at infinity" and that is why $\tan\frac{\pi}{2}$ is said to be "infinite" at that point. I find this geometric explanation---of why $\tan\theta$ does not assume a finite value at $\theta=\frac{\pi}{2}$---most fulfilling.

When $\theta$ is in the third quadrant, for instance, $OS$ extrapolated in the negative direction will not intersect the tangent $DT$ in the negative $y$ direction as they diverge. So, the line $SO$ must be produced in the positive $y$ direction to once more intersect the tangent at $T$. That explains why tangents of angles in the third quadrant are positive.

By moving from triangles to the unit circle on coordinate axes, we have enabled $\theta$ to take on any value between 0 and $2\pi$ radians. The trigonometric functions have been unshackled from the triangle and are can take on _any_ real number as arguments. The graphs of the three standard trigonometric functions are shown in @fig:threegraph.

![Graphs of the three trigonometric functions. Notice how $\sin$ and $\cos$ are bounded in their values, but $\tan$ is not. There are discontinuities  for $\theta=\frac{2n+1}{2}\pi$.]({attach}images/threegraph.png){#fig:threegraph width=90% .modal-target}

Note that when  $\theta = 2\pi$ radians, we cannot really distinguish it from $\theta=0$ radians. So, one angle may masquerade as another unless we have accounting devices to optionally add $2n\pi$ to angles with the proviso that $n$ is an integer. And this concept is a segue to power series expansions of trigonometric functions, their use in calculus, and later on, in Fourier series.

## Power series for trigonometric functions

This is where the plot really thickens.

Both the statements $\sin(30°)=0.5$ and $\sin(\frac{\pi}{6})=0.5$ are factually correct and perfectly acceptable. We will not be committing any mathematical heresies through either statement.^[Note that while it is mandatory to affix the degree sign as a superscript, radians being pure numbers do not require any special identification.]

But it is possible to express trigonometric functions in terms of power series in which an argument in degrees would be inadmissible. It is only after we cross this threshold in mathematics that radians truly come into their own, and after which there is "no going back to the old ways".

I will now do a bit of hand-waving and say that it has been proved^[Search the web for Taylor Series or Maclaurin series, thinking of it as a treasure hunt and enrich yourself with that knowledge!] that:

$$
\sin\theta = \theta - \frac{\theta^3}{3!} + \frac{\theta^5}{5!} - \frac{\theta^7}{7!} + \cdots
$${#eq:sineseries}

where the dots at the end of @eq:sineseries tell us to imagine that this series _never ends but goes on forever_ following the pattern shown.

Recall that if a number is less than one, raising it to a power greater than one makes it smaller than it originally was. So, when $\theta$ is very close to zero, the higher powers on the right hand side of @eq:sineseries become smaller and smaller, and may be ignored without much loss in accuracy. In this case, we may assert that:

$$
\sin\theta\approx\theta \:\text{for}\: \lvert\theta\rvert \to 0.
$${#eq:sinesmalltheta}

In English this expression means that for vanishingly small values of $\theta$---whether positive or negative---$\sin\theta$ is approximately equal to $\theta$.

From @fig:trig we know that the number on the left hand side of @eq:sinesmalltheta is a unitless ratio of two lengths and thus a "pure" number. This requires the right hand side to also be expressed in a similar unitless measure, and radians fits the bill.

This may also be seen from @fig:xsinx where the closeness of the curve $f(\theta) = \theta$ and $f(\theta) = \sin\theta$ near the origin is evident. Indeed, right up to a value of $\lvert\theta\rvert\approx 0.3$, the two curves track each other closely.

![Graphs of $f(\theta)= \sin\theta$ and $f(\theta) = \theta$ for $\lvert\theta\rvert\approx 0$.]({attach}images/xsinx.png){#fig:xsinx width=90% .modal-target}

We have seen the graphical demonstration of the validity of @eq:sinesmalltheta. Let us now illustrate the reasonableness of that equation by evaluation. Set $\theta$ to $0.005$ radians, which is a small value close to zero. Then $\sin\theta = \sin(0.005) = 0.004999979167$, which demonstrates the validity of @eq:sinesmalltheta. However, if one were to interpret the number 0.005 as degrees rather than radians, we then have $\sin(0.005°) = 0.00008726646249$ which is almost $57$ times smaller than the number 0.005.

The moral of this example is that when we evaluate trigonometric functions in degrees in the context of their power series, we must apply a correction factor of $\frac{\pi}{180}$ to implicitly convert _each term_ to radians. This is a layer of bookkeeping we may easily avoid by using radians on both sides of the equation.

### Fourier series

Periodic waveforms repeat themselves indefinitely. The sinusoids---which are trigonometric functions like $\sin$ and $\cos$---are one such example. Such waveforms arise frequently in signal analysis and synthesis in electrical engineering. In that context, the independent variable is _time_.

A _periodic function_ [with certain properties](https://eng.libretexts.org/Bookshelves/Electrical_Engineering/Signal_Processing_and_Modeling/Signals_and_Systems_(Baraniuk_et_al.)/06%3A_Continuous_Time_Fourier_Series_(CTFS)/6.06%3A_Convergence_of_Fourier_Series) may represented by an infinite sum of sinusoids.

For example, let the original signal be a square waveform denoted by the function $s(t)$ in @fig:squarefourier. Imagine that the single cycle of the square wave is repeated periodically forever.

![A square waveform $s(t)$ and the sequential sums of its first four terms.]({attach}images/squarefourier.png){#fig:squarefourier width=85% .modal-target}

The [Fourier series](https://mathworld.wolfram.com/FourierSeries.html) for such a square waveform is an infinite sum of sinusoids that collectively represent the waveform. This might seem like a tall order but it is nevertheless true. The Fourier series representation of the square wave $s(t)$ is given by:
$$
s(t) = \frac{2}{\pi}\left[\sin(t) + \frac{\sin(3t)}{3} + \frac{\sin(5t)}{5} +  \frac{\sin(7t)} {7} + \cdots\right]
$${#eq:squarefourier}
where again, the dots mean that the pattern repeats forever. Note that this is no approximation, but an equality.

The successive partial sums of the right hand side of @eq:squarefourier are denoted as $s_1(t)$, $s_2(t)$, etc., denoting the first term, the sum of the first and second term etc. It is evident from @fig:squarefourier that the more terms we add, the better the match between the original signal and its approximation, denoted generically by $s_*(t)$ in the graph.

On the surface, @eq:squarefourier seems a remarkable claim. How could a square wave with right angle corners be the result of sums of sine waves which have no corners? The answer lies in the fact that the series goes on forever and "infinity confers the equality".

Where do radians feature here? As with the power series for the sine function, it is on the right hand side where the variable $t$ should be expressed in radians. Note that while $t$ may have units of time, the fact that radians are unitless does not intrude into the equation as an extraneous factor.

We will close with one more example where radians make mathematical life much easier.

### Euler's formula and identity

The prodigiously productive Swiss mathematician, [Leonhard Euler](https://www.britannica.com/biography/Leonhard-Euler), gave us many equations, one of which is known as _Euler's formula_, shown below:
$$
e^{i\theta} = \cos\theta + i\sin\theta
$${#eq:euler}
The letter $i$ is called the [imaginary unit](https://en.wikipedia.org/wiki/Imaginary_unit) and its definition is $i^{2} = -1$. It takes us into the [field of complex numbers](https://en.wikipedia.org/wiki/Complex_number)^[[The Fundamental Theorem of Algebra](https://en.wikipedia.org/wiki/Fundamental_theorem_of_algebra) states that  all non-constant, polynomials with complex coefficients contain at least one complex root, to express which $i$ is necessary.].

When we substitute $\theta=\pi$ into @eq:euler, and transpose terms, we get what is called _Euler's identity_:
$$
\begin{aligned}
e^{i\pi} &= \cos\pi + i\sin\pi\\
e^{i\pi} + 1 &= 0\\
\end{aligned}
$${#eq:euleridentity}

@eq:euleridentity has been described as the most poetic equation in all of mathematics as it [unites in one equation the five most fundamental quantities in all of mathematics](https://www.livescience.com/51399-eulers-identity.html), $e, i, \pi, 1$ and $0$. And it could not have come about without radians. With that [epiphany](https://www.thefreedictionary.com/epiphany) on beauty, we shall conclude our tale of two measures.

## Acknowledgements

All illustrations in this blog were generated using the [TikZ-PGF](https://github.com/pgf-tikz/pgf) package with [LaTeX](https://www.latex-project.org/). To the authors of that package, and to those who posted numerous examples of its usage on the Web, my humble gratitude.

For @fig:squarefourier especially, I have drawn upon and modified the [example of caverac](https://tex.stackexchange.com/a/429505/1636) at the [TeX StackExchange](https://tex.stackexchange.com/) forum.

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./radians.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/radians.pdf>
:::






