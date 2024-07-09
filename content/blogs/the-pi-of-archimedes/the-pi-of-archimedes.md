---
title: "The Pi of Archimedes"
author: "R (Chandra) Chandrasekhar"
date: 2004-01-14
modified: 2024-06-30
category: Mathematics
tags: Numbers, Irrational, Transcendental
summary: "This blog began life more than two decades ago, as part of a series of lectures I delivered to very bright first-year engineering students at an Australian university.

The number π (pronounced 'pie') has been recognized from time immemorial because its physical significance can be grasped easily: it is the ratio of the circumference of a circle to its diameter. But who would have thought that such an innocent ratio would exercise such endless fascination because of the complexities enfolded into it?

My original intention was to write a single blog on π. But because I did not want it to become another overly long _slog_, I have decided to divide it into two parts.

Not surprisingly, some students I met recently wanted to know more about π. Accordingly, I have substantially recast and refreshed my original presentation to better accord with the form and substance of a blog. The online references have also been updated to keep up with a rapidly changing Web."
status: published
opengraphimage: Domenico-Fetti_Archimedes_1620.jpg
---

>This blog began life more than two decades ago, as part of a series of lectures I delivered to very bright first-year engineering students at an Australian university.
>
>The number $\pi$ (pronounced "pie") has been recognized from time immemorial because its physical significance can be grasped easily: it is the ratio of the circumference of a circle to its diameter. But who would have thought that such an innocent ratio would exercise such endless fascination because of the complexities enfolded into it?
>
>Not surprisingly, some students I met recently wanted to know more about $\pi$. Accordingly, I have substantially recast and refreshed my original presentation to better accord with the form and substance of a blog. The online references have also been updated to keep up with a rapidly changing Web.
>
>My original intention was to write a single blog on $\pi$. But because I did not want it to become another overly long _slog_, I have decided to divide it into two parts.
>
>If there are any errors or omissions, please [email](mailto:feedback.swanlotus@gmail.com) me your feedback.

## Circumference, diameter, and π

The straight line or [geodesic](https://mathworld.wolfram.com/Geodesic.html) is the shortest distance between any two points on a plane, sphere, or other space. The circle is the [locus](https://en.wikipedia.org/wiki/Locus_(mathematics)) traversed by a moving point that is [equidistant](https://en.wikipedia.org/wiki/Equidistant) from another fixed point on a two-dimensional plane. It is the most [symmetrical](https://mathworld.wolfram.com/Symmetry.html) figure on the plane. The [diameter](https://en.wikipedia.org/wiki/Diameter) is the name given both to any straight line passing through the centre of the circle---intersecting it at two points---as well as to its length. When we divide the [perimeter](https://en.wikipedia.org/wiki/Perimeter) of circle, more properly called its [circumference](https://en.wikipedia.org/wiki/Circumference), $C$, by its diameter, $d$, we get the enigmatic constant  $\pi$, which has a value between $3.141$ and $3.142$: 
$$
\frac{C}{d} = \pi.
$${#eq:pi-Cd}
The diameter $d$ is twice the radius $r$, and substituting for $d$ into [@eq:pi-Cd], we get the well-known school formula:
$$
C = \pi d = 2\pi r \approx 2\left[\frac{22}{7}\right]r \approx 6.28r.
$${#eq:two-pi-r}
Note, however, that $\pi$ is _not exactly equal_ to $\frac{22}{7}$. This value is a convenient _rational fraction approximation_ for $\pi$ that serves well in elementary contexts.^[See ["A tale of two measures: degrees and radians"](https://swanlotus.netlify.app/blogs/a-tale-of-two-measures-degrees-and-radians).]

You might reasonably wonder whether the ratio of the circumference to the diameter of _any_ circle is _always_ $\pi$. The answer is "Yes", because _all circles are similar_. The ratios of corresponding lengths of similar figures are equal. This idea is also covered in my blog ["A tale of two measures: degrees and radians"](https://swanlotus.netlify.app/blogs/a-tale-of-two-measures-degrees-and-radians).

The symbol [$\pi$](https://en.wikipedia.org/wiki/Pi) is the lowercase version of the sixteenth letter of the Greek alphabet. For the history of its use in mathematics, see [adoption of the symbol π in Wikipedia](https://en.wikipedia.org/wiki/Pi#Adoption_of_the_symbol_%CF%80).

![The ratio of the circumference to the diameter of _any_ circle is $\pi$.]({attach}images/C-over-d.svg){#fig:pi-circle width=70% .modal-target}

@fig:pi-circle shows the relationships in [@eq:pi-Cd] and [@eq:two-pi-r] pictorially. The circumference of a circle is about 6.28 times its radius. Why this should be so is a secret, a mystery of Nature.

## Is π = 22/7 an exact value?

Is $\pi$ really equal to $\frac{22}{7}$, as it has been drummed into our heads at school? A wonderfully revealing story lies behind this mysterious relationship, and it is due to the [labours](https://www.collinsdictionary.com/dictionary/english/labours) of one man, in the days when calculators could not be dreamed of, and when neither the decimal system of numbers nor trigonometry were known. That is the story we look at next.

## Archimedes of Syracuse

[Archimedes of Syracuse](https://en.wikipedia.org/wiki/Archimedes)^[His very name, Archimedes, means "master thinker" in Greek.] (Ἀρχιμήδης, 287--212 BCE) was a [polymath](https://www.vocabulary.com/dictionary/polymath#:~:text=Definitions%20of%20polymath,of%20great%20and%20varied%20learning) and genius of the ancient world. He was one of the greatest mathematicians the world has ever known. By today's standards, he would be called a mathematician, physicist, engineer, and astronomer, [all rolled into one](https://www.ldoceonline.com/dictionary/all-rolled-into-one). He is perhaps most famous for running out of his bathtub naked exclaiming ["Eureka"](https://www.dictionary.com/browse/eureka)---Greek for "I have found it"---oblivious of those around him. The principle that he had then discovered---that the upthrust on a body submerged in a fluid is equal to the weight of fluid displaced---is known as [Archimedes' Principle](https://www.britannica.com/science/Archimedes-principle).

![Archimedes of Syracuse.^[Domenico Fetti's 1620 painting entitled _Archimedes Thoughtful_. Public domain.]]({attach}images/Domenico-Fetti_Archimedes_1620.jpg){#fig:archimedes width=50% .modal-target}

Among the many accomplishments of Archimedes is his method for estimating $\pi$, which was the best approximation for almost 1900 years. And it was not based on using a length of string, superimposing it on a circle, and getting an estimate! \emojifont :wink:\normalfont 

What is even more remarkable is that Archimedes made his discovery _without_ the benefit of:

(a) the real numbers;

(b) algebra; 

(c) trigonometry;

(d) decimal (positional) notation; and

(e) calculators. 

Instead he applied the theorem of Pythagoras and extracted rational values for square roots laboriously by hand. His method is also an excellent geometrical illustration of the idea of a [_limit_](https://www.britannica.com/science/limit-mathematics), with which he was doubtless familiar. It is known that Archimedes was familiar with what we now know as integral calculus, and it is possible that he may have anticipated differential calculus as well.

Archimedes devised an ingenious method for estimating the circumference of a circle. He used a sophisticated algorithm that allowed him to obtain successively more accurate values for the circumference of a circle, and therefore of $\pi$.

![Portrait of Archimedes generated by AI and available at the Craiyon website [here](https://www.craiyon.com/image/JEmP4rPCRW25xyCULOeMSw). All portraits of Archimedes are flights of fancy rather than true likenesses.]({attach}images/Archimedes-AI-generated-portrait.png){#fig:Archimedes-AI width=70% .modal-target}

### Principles used by Archimedes

The method that Archimedes devised is instructive because it is a synthesis of several principles by which the greatest human minds have furthered scientific progress over time. The abstract principles that Archimedes used to estimate $\pi$ were these:

#. Start with the known and progress to the unknown;

#. Initialize variables;

#. Devise a method of increasing the accuracy of the estimate by [recursion](https://mathworld.wolfram.com/Recursion.html) or [iteration](https://www.vocabulary.com/dictionary/iteration);

#. Stop when the desired accuracy is reached.

These principles constitute what is known as an [algorithm](https://www.merriam-webster.com/dictionary/algorithm). Once such a systematic framework has been put in place, it can be applied in many research domains to aid rapid scientific progress. The algorithm is the basis of modern computing.

### Of polygons and circles

Archimedes considered a circle, containing an [inscribed](https://mathworld.wolfram.com/Inscribed.html) regular polygon with $n$ sides, and [circumscribed](https://mathworld.wolfram.com/Circumscribed.html) by a regular polygon with the same $n$ sides. [@fig:two-limits] illustrates this for the case $n = 6$, i.e., with a regular [hexagon](https://www.britannica.com/science/hexagon).

![The circumference of the circle in darkolivegreen is bounded from below by the perimeter of the inscribed regular hexagon in maroon and bounded from above by the perimeter of the circumscribed regular hexagon in midnightblue. The circumference of the circle must lie between the perimeters of these two hexagons. The value $r$ is the radius of the circle and the height $h$---from the centre to the mid-point of a side---is called the [apothem](https://en.wikipedia.org/wiki/Apothem).]({attach}images/two-limits.svg){#fig:two-limits width=70% .modal-target}

![The relationship between the circle and its inscribed and circumscribed regular polygons. The symbol $h$ is used for the apothem in both cases. Note that $OD = h = r\cos\theta$ for the inscribed polygon, whereas $OC = h = r$ for the circumscribed polygon.]({attach}images/sin-theta-tan-theta.svg){#fig:sin-theta-tan-theta width=70% .modal-target}

Let us tabulate below the variables arising from [@fig:two-limits;@fig:sin-theta-tan-theta].

| Parameter | Circle |    | Inscribed |   | Circumscribed |
|:----------|:-----|:-|:----------|:----:|:-----------------|
| Radius | $r$ |  |  |  |
| Sides |  |  | $n$ |  | $n$ |
|Length |  |  | $2r\sin\theta$ |  | $2r\tan\theta$ | 
| Angle |  |  | $\theta(n) = \frac{\pi}{n} = \frac{180°}{n}$ |  | $\theta(n) = \frac{\pi}{n}=\frac{180°}{n}$ |
| Apothem |  |  | $h = r\cos\theta$ |  | $h = r$ |
| Area | $A = \pi r^2$ |  | $a(n) = n\sin\theta\cos\theta r^2$ |  | $A(n) = n\tan\theta r^2$ |
| Perimeter | $C = 2\pi r$ |  | $c(n) = 2n\sin\theta r$ |  | $C(n) = 2n\tan\theta r$ |
: Circle, inscribed, and circumscribed regular polygons ($n$-gons). {#tbl:variables}
\ 

When $n$ varies, so do the values of $\theta$ and the areas and perimeters; they are therefore shown as functions of $n$ in [@tbl:variables].

### Lower and upper bounds for π

We assume that $r = 1$ without loss of generality. [@tbl:variables] and [@fig:sin-theta-tan-theta] together give us these inequalities for regular $n$-gons where $\theta = \frac{180}{n}$ degrees or $\theta = \frac{\pi}{n}$ radians.
$$
\begin{aligned}
a(n) < A < A(n) &\implies n\sin\theta\cos\theta < \pi < n\tan\theta\\
c(n) < C < C(n) &\implies n\sin\theta < \pi < n\tan\theta
\end{aligned}
$${#eq:squeeze}

From the right hand side of [@eq:squeeze], using the inequalities for perimeters, we have
$$
n\sin\tfrac{180°}{n} = n\sin\tfrac{\pi}{n}, \thinspace \mbox{for the lower bound}.
$$ {#eq:lower-bound}
$$
n\tan\tfrac{180°}{n} = n\tan\tfrac{\pi}{n}, \thinspace \mbox{for the lower bound}.
$$ {#eq:upper-bound}

[@eq:lower-bound; @eq:upper-bound] represent respectively the lower and upper bounds on the value of $\pi$ obtained through the method of Archimedes.

Obviously, the circle may be viewed as a regular polygon whose number of sides, $n$ has become exceedingly large, or _infinite_. So, as $n$ is increased, we should expect the two bounds to converge to the limiting value of $\pi$.

| $n$ | $n\sin\frac{\pi}{n}$ | $n\tan\frac{\pi}{n}$ |
|:----|:-----------------|:--------------------|
| $6$ | $3.0000000000$ | $3.4641016151$ |
| $12$ | $3.1058285412$ | $3.2153903092$ |
| $24$ | $3.1326286133$ | $3.1596599421$ |
| $48$ | $3.1393502030$ | $3.1460862151$ |
| $96$ | $3.1410319509$ | $3.1427145996$ |
| $100$ | $3.1410759078$ | $3.1426266043$ |
| $1000$ | $3.1415874859$ | $3.1416029891$ |
| $10000$ | $3.1415926019$ | $3.1415927569$ |
| $100000$ | $3.1415926531$ | $3.1415926546$ |
| $1000000$ | $3.1415926536$ | $3.1415926536$ |
: The values of $n\sin\frac{\pi}{n}$ and $n\tan\frac{\pi}{n}$ as $n$ increases. {#tbl:large-n-pi}
\
 
The upper and lower bounds are equal up to ten decimal digits when $n = 10^{6}$, and we might declare the problem of estimating pi solved. But in the time of Archimedes, trigonometry was not known; only geometry was. Moreover, the decimal system and calculators were also in the future. We now have to backtrack and attempt to retrace the steps Archimedes used to estimate $\pi$.

### Trigonometry and half angles

But before we leave trigonometry altogether, let us explore how a recurrence relation may be established among successive estimates of $c(n)$ and $C(n)$ when $n$ is doubled.

Once we have calculated, say, $c(6)$, ideally we would like to calculate $c(12)$ using the estimate of $c(6)$. This process of chaining successive results is called [recursion](https://www.geeksforgeeks.org/introduction-to-recursion-2/) and is vital in developing efficient algorithms.

The trigonometry of [half angles in terms of the full angle]( https://math.libretexts.org/Bookshelves/Algebra/Algebra_and_Trigonometry_1e_(OpenStax)/09:_Trigonometric_Identities_and_Equations/9.03:_Double-Angle_Half-Angle_and_Reduction_Formulas) [@half-angle] helps relate the successive values of $\theta$.


We now introduce a slight change in notation. Since our focus is on side doubling and angle halving, we introduce a subscript $k$ to denote the number of doublings/halvings. We start with $k = 0$ denoting no doubling, which is the base case, with $n = n_{0} = 6$. After that, $k$ doublings are denoted by $2^{k}$.
$$
\begin{aligned}
k &= 0\\
n &= n_{0}\\
\theta_{0} &= \tfrac{\pi}{n_{0}}\\
n_{k} &= 2^{k}n_{0}\\
\theta_{k} &= \theta(n_{k})\\
&= \theta(2^{k}n_{0})\\
&= \tfrac{\pi}{2^{k}n_{0}}\\ 
&= \tfrac{\theta_{0}}{2^k}.\\
\end{aligned}
$$ {#eq:base-case}

In our case, for $k\geq 1$, the half-angle formulae are:
$$\begin{aligned}
\sin\tfrac{\theta_{0}}{2^{k}} %
&= \sqrt{\left[\frac{1-\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}{2}\right]} %
&= \left[\frac{1-\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}{2}\right]^{\frac{1}{2}}\\
%
\cos\tfrac{\theta_{0}}{2^{k}} %
&= \sqrt{\left[\frac{1+\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}{2}\right]} %
&= \left[\frac{1+\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}{2}\right]^{\frac{1}{2}}\\
%
\tan\tfrac{\theta_{0}}{2^{k}} %
&= \sqrt{\left[\frac{1-\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}{1+\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}\right]} %
&= \left[\frac{1-\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}{1+\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}\right]^{\frac{1}{2}}\\
\end{aligned}
$$ {#eq:trig-half-angle}

Once we have the base case for the regular hexagon, we can relate successive angles and their sines and tans via [@eq:trig-half-angle] and descend that binary staircase, according to [@eq:base-case; @eq:trig-half-angle; @eq:staircase]:
$$
\begin{aligned}
n_{k}\sin\theta_{k} &= 2^{k}n_{0}\sin\frac{\theta_{0}}{2^{k}}\\
&= 2^{k}n_{0}\left[\frac{1-\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}{2}\right]^{\frac{1}{2}}\\
n_{k}\tan\theta_{k} &= 2^{k}n_{0}\tan\frac{\theta_{0}}{2^{k}}\\
&= \left[\frac{1-\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}{1+\cos\left[\frac{\theta_{0}}{2^{k-1}}\right]}\right]^{\frac{1}{2}}
\end{aligned}
$$ {#eq:staircase}
The recurrence relation linking $\theta_{k}$ to $\theta_{k-1}$ has now been established. We tabulate below the values for $n_{0} = 6$ and $\theta = \theta_{0} = \frac{180°}{6} = 30°$ derived from the half-angle formulae:

| $k$ | $2^k$ | $n=2^kn_{0}$ | $\theta=\frac{\theta_{0}}{2^{k}}$ | $n\sin\theta$ | $n\tan\theta$ |
|:----|:------|:---------|:-----------------|:--------------------|------------------|
| 0 | 1 | 6 | 30° |  |  |
| 1 | 2 | 12 | 15° |  |  |
| 2 | 4 | 24 | 7.5° |  |  |
| 3 | 8 | 48 | 3.75° |  |  |
| 4 | 16 | 96 | 1.875° |  |  |
: Polygon perimeters estimages using half-angle formulae. {#tbl-half-angle}

\ 

This has been a digression because these techniques were not available to Archimedes in his day. I have added it for completeness, and to demonstrate the use of recurrence relations with the trigonometric approach [@damini-dhar-2020].

We now return to the main theme of how Archimedes used geometry to relate current values to previous values.

### The angle bisector theorem

Without using the half-angle formulae of trigonometry, how can we successively obtain expressions for the values of $c(n)$ and $C(n)$ as we halve the angles and double the sides each time? We have to rely on something called the [angle bisector theorem](https://en.wikipedia.org/wiki/Angle_bisector_theorem) from geometry. This was something Archimedes already knew.

This derivation might seem tedious, but it is closer to what Archimedes did in order to establish the recurrence relation that tied the current value to the previous value.

![The angle bisector theorem. The relative lengths of the two segments that a triangle's side is divided into by a line that bisects the opposite angle equals the relative lengths of the other two sides of the triangle, as shown on the diagram.]({attach}images/angle-bisector.svg){#fig:angle-bisector width=70% .modal-target}

Referring to [@fig:angle-bisector], if the line $OC$ bisects the angle $BOA$, then the base $AB$ is divided in the same ratio as the corresponding sides. This means
$$
\begin{aligned}
\frac{AO}{OB} &= \frac{AC}{CB} \mbox{ which in turn means that }\\
\frac{a}{b} &= \frac{p}{q}\\
\end{aligned}
$$ {#eq:angle-bisector}

Before we can apply this to the regular hexagons we need to become aware of what I call the thirty, sixty, ninety triangle, which is considered next.

### The thirty, sixty, ninety right triangle

Archimedes applied the principle "of starting from the known" to initiate his algorithm using a _regular hexagon_, which is a mosaic of six juxtaposed equilateral triangles. We know from symmetry that each angle of an equilateral triangle is $60°$. When an equilateral triangle is bisected, we get two right-angled triangles with angles of thirty and sixty degrees, as shown in [@fig:thirty-sixty].

![This right-angled, obtained by bisecting an equilateral triangle, must be familiar to all school students. These lengths---obtainable from symmetry and the theorem of Pythagoras---allowed Archimedes to start off his process for estimating $\pi$.]({attach}images/thirty-sixty.svg){#fig:thirty-sixty width=40% .modal-target}

The inscribed hexagon, within a circle of radius one unit, also has a side of one unit. Thus, the hypotenuse of the circle $OAP$ in [@fig:thirty-sixty] has unit length. Moreover, the base $OP$, resulting from a bisected side, has a length of half a unit. By applying the theorem of Pythagoras, the third side, $AP$ is 
$$
\sqrt{1^2 - \left(\frac{1}{2}\right)^2} = \frac{\sqrt{3}}{2}.
$${#eq:triangle}

The next thing Archimedes needed and knew how to do was to compute $\sqrt{3}$ which figures in [@eq:triangle]. Finding square roots is a tedious process, not unlike long division, and prone to human error. The patience and doggedness of Archimedes that must have gone into the process is astounding.

### Extracting square roots by hand

Archimedes must have known how to extract square roots by hand. Perhaps, he used one of the methods described in my blog ["How Are Numbers Built?"](https://swanlotus.netlify.app/blogs/how-are-numbers-built). He should have known the value of $\sqrt{3}$ as a rational fraction.  With remarkable accuracy, he stated that:
$$\sqrt{3} \approx \frac{265}{153} \approx 1.732.
$${#eq:sqrt3}

### Numerical results

WHERE TO PUT THIS?

Evaluating the bounds given in [@tbl:variables] and [@eq:squeeze] by setting $r = 1$, $n = 6$, and $\theta = \frac{180}{n} = 30°$^[Rather than use radians with $\pi$ entering the proceedings, I decided to stick with degrees as units to avoid confusion. If one uses power series to probe further, of course, radians are called for.] gives us these values:
$$
\begin{aligned}
C_i &= 2n\sin\theta r = 12(\sin 30°) = 12(0.5) &= 6.0000.\\
C &= 2\pi r &= 6.2381.\\
C_c &= 2n\tan\theta r = 12(\tan 30°) = 12\left(\tfrac{\sqrt{3}}{3}\right) = 4\sqrt{3} &\approx 6.9282.\\
\end{aligned}
$${#eq:triple-6}

Archimedes doubled $n$ four times to compute values for regular polygons with $12$, $24$, $48$, and $96$ sides. For his last calculation with $n = 96$ and $\theta = \tfrac{180}{96}° \approx 1.875°$, we have:
$$
\begin{aligned}
C_i &= 2n\sin\theta r = 2(96)\sin{1.875°} \approx 192(0.0327) &\approx 6.2820.\\
C &= 2\pi r &= 6.2381.\\
C_c &= 2n\tan\theta r = 2(96)\tan{1.875°} \approx 192(0.0327) &\approx 6.2854.\\
\end{aligned}
$${#eq:triple-96}

Note that in the case of 96 sides, we have a _very small angle_ $\theta$ whose $\sin$ and $\tan$ are almost equal. This is what gives us tight bounds on the estimate of $\pi$. If you know the power series for $\sin\theta$ and $\tan\theta$, you will appreciate even better how the value of $\pi$ is trapped and squeezed between these two rather close limits.

Remember [@eq:triple-96] because it helps us to estimate lower and upper bounds for the value of the circumference. Archimedes's application of the [squeeze theorem](https://en.wikipedia.org/wiki/Squeeze_theorem) nineteen centuries before the calculus was invented is illustrated in the series of figures, [@fig:six-gon;@fig:twelve-gon;@fig:twenty-four-gon;@fig:forty-eight-gon;@fig:ninety-six-gon].

[Sanity check](https://en.wiktionary.org/wiki/sanity_check): Does $2\pi = 6.2820$, from a calculator, lie within the bounds of [@eq:triple-96]? Yes, indeed, and we are [home and dry](https://dictionary.cambridge.org/dictionary/english/be-home-and-dry).

Second sanity check: When $n$ is very large, we expect $n\sin\frac{180°}{n}$ to be closer and closer to the true value. Setting $n = 10^6$ and evaluating on a calculator we get $10^6\sin\frac{180°}{10^6} = 3.14159$ which is reassuring. This deep connection between the circle and the trigonometric functions also explains why they are sometimes called the _circular functions_. Indeed, the values $n\sin\frac{\pi}{n}$ and $n\sin\tan{\pi}{n}$ both converge to $\pi$ for very large $n$. The interested reader should plot these two curves.

WHERE SHOULD THIS GO?

Imagine the mathematical [fortitude](https://www.merriam-webster.com/word-of-the-day/fortitude-2019-11-21) of Archimedes to [plough on](https://www.collinsdictionary.com/dictionary/english/plough-on)---without algebra or trigonometry or the decimal number system---to establish the value of $\pi$.

Before we consider numerical results, there are two aspects of the problem and the approach taken by Archimedes that I wish to discuss.

### Recursion and Iteration

Archimedes started with regular hexagons and successively _doubled_ the number of sides, until he had the circle closely sandwiched between two 96-gons---one circumscribe; the other inscribed. Successively doubling or halving is a fast-converging technique used in numerical estimation, called the [bisection method](https://en.wikipedia.org/wiki/Bisection_method), that is applied to solving a variety of problems. That Archimedes was aware of it shows how far ahead of his time his thinking was.

When he moved from $n=6$ to $n = 12$ sides, how did Archimedes estimate the respective perimeters without the aid of trigonometry? He used geometry and the Pythagorean theorem, [as described here online](https://nonagon.org/ExLibris/archimedes-pi) [@bertrand2014] to obtain [recurrence relations](https://en.wikipedia.org/wiki/Recurrence_relation) that gave the current result from the previous one.

For an English translation of the book _Measurement of a Circle_ by Archimedes [click on this link]({attach}auxiliary/Archimedes-Circle.pdf). It is the original source material from the man himself, and will give you a sense of completeness in your understanding of his method.

He repeatedly calculated rational approximations to $\pi$ until he was satisfied with the accuracy. The principle of the method is clearly seen in [@fig:six-gon;@fig:twelve-gon;@fig:twenty-four-gon;@fig:forty-eight-gon;@fig:ninety-six-gon].

![The estimate for $\pi$ lies between $C_i = 3.0000 < \pi < C_c = 3.4641$.]({attach}images/six-gon.svg){#fig:six-gon width=70% .modal-target}

![The estimate for $\pi$ lies between $C_i = 3.1058 < \pi < C_c = 3.2153$.]({attach}images/twelve-gon.svg){#fig:twelve-gon width=70% .modal-target}

![The estimate for $\pi$ lies between $C_i = 3.1326 < \pi < C_c = 3.1596$.]({attach}images/twenty-four-gon.svg){#fig:twenty-four-gon width=70% .modal-target}

![The estimate for $\pi$ lies between $C_i = 3.1393 < \pi < C_c = 3.1460$.]({attach}images/forty-eight-gon.svg){#fig:forty-eight-gon width=70% .modal-target}

![The estimate for $\pi$ lies between $C_i = 3.1410 < \pi < C_c = 3.1427$. Notice in this sequence of images how the circumference of the circle approaches the perimeter of the inscribed and circumscribed heaxgons to the point of being indistinguishable from them. _The final estimate of Archimedes was $\frac{223}{71} < \pi < \frac{22}{7}$._]({attach}images/ninety-six-gon.svg){#fig:ninety-six-gon width=70% .modal-target}

## Is π really 22/7?

The answer is a qualified "Yes and no". Because $\pi$ is irrational, it cannot be expressed precisely in a finite number of digits. Consequently, we use rational approximations, or a decimal representation at the desired accuracy for $\pi$. Thanks to Archimedes, $\frac{22}{7}$ is a serviceable overestimate for $\pi$ that has survived for centuries.

## A closer look at π as a number

Pi is both an [irrational](https://en.wikipedia.org/wiki/Irrational_number) and a [transcendental](https://en.wikipedia.org/wiki/Transcendental_number) number. Let us see what each of these [appelations](https://www.merriam-webster.com/dictionary/appellation) mean.



Recurring decimals.

## To explore further

A well-written, accessible article on how Archimedes estimated that $\pi$ is approximately $\frac{22}{7}$ is available online: ["How Archimedes showed that pi is approximately 22 by 7"](https://publications.azimpremjiuniversity.edu.in/3356/1/02-DaminiAndAbhishek_PiIs22By7_Final.pdf). I urge you to read it.^[This article is all the more remarkable because its first author is a Grade 8 student: proof that deep mathematics is not beyond the school student.] You will then appreciate for yourselves how arduous the process must have been in an age without the benefit of:
#. Trigonometry; he used the theorem of pythagors instead;
#. Algebra; he used geometry and the ratios of the lengths of well-known triangles;
#. Decimal numbers for division; he used fractions instead;
square roots by hand; similar and congruent figures; bisection theorems; exhaustion methods





In [@fig:six-gon;@fig:twelve-gon;@fig:twenty-four-gon;@fig:forty-eight-gon;@fig:ninety-six-gon] below, which illustrate the approach Archimedes took to estimate $\pi$, we see very clearly that the perimeter of the _inscribed polygon_ $c_n$ and the perimeter of the _circumscribed polygon_ $C_n$ represent respectively the _lower bound_ and _upper bound_ of the estimated value of $\pi$. As the number of sides, $n$, of the polygon increases, the estimates become increasingly accurate.



https://publications.azimpremjiuniversity.edu.in/3356/1/02-DaminiAndAbhishek_PiIs22By7_Final.pdf

https://azimpremjiuniversity.edu.in/at-right-angles

### How did Archimedes arrive at π = 22/7?

22/7 = 3.142857 142857 142857 (recurring decimal)



## Formulae involving π

## Quest for the endless digits of π

## Buffon's Needle

## π Trivia

## Web links

https://www.pbs.org/wgbh/nova/physics/approximating-pi.html

https://demonstrations.wolfram.com/ArchimedesApproximationOfPi/
John Tucker "Archimedes' Approximation of Pi"
http://demonstrations.wolfram.com/ArchimedesApproximationOfPi/
Wolfram Demonstrations Project
Published: March 5 2009

https://math.stackexchange.com/questions/4851929/archimedes-method-to-estimate-pi

http://arxiv.org/pdf/2008.07995

https://mathsciencehistory.com/2019/10/01/archimedes-and-his-pi-the-great-numerical-hope/

https://carmamaths.org/resources/jon/pi-culture.pdf

https://nonagon.org/ExLibris/archimedes-pi

https://www.exploratorium.edu/pi/history-of-pi

https://en.wikipedia.org/wiki/Approximations_of_%CF%80

https://www.joyofpi.com/

## Book References

## Web resources

## Teaser: are of circle half radius multiplied by circumference. How?

## Appendix: Circumscribed and inscribed polygons of  circle

Archimedes devised his ingenious _squeeze_ method for computing the upper and lower bounds of the perimeter of a circle by computing instead the perimeters of the polygons that inscribe and circumscribe the circle. The approximations become more accurate as the number of sides, $n$, of the polygon is increased. [This YouTube presentation](https://www.youtube.com/watch?v=_qdnyw5Eb_Y) might help you understand the algorithm of Archimedes better, but remember that he did not have trigonometry to aid hm.

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./the-pi-of-archimedes.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/the-pi-of-archimedespdf-blog
.pdf>
:::
