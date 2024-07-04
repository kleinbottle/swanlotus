---
title: "The Wonder That Is Pi"
author: "R (Chandra) Chandrasekhar"
date: 2004-01-14
modified: 2024-06-29
category: Mathematics
tags: Numbers, Irrational, Transcendental
summary: "This blog began life more than two decades ago, as part of a series of lectures I delivered to very bright first-year engineering students at an Australian university.

The number π (pronounced 'pie') has been recognized from time immemorial because its physical significance can be grasped easily: it is the ratio of the circumference of a circle to its diameter. But who would have thought that such an innocent ratio would exercise such endless fascination because of the complexities enfolded into it?

Not surprisingly, some students I met recently wanted to know more about π. Accordingly, I have substantially recast and refreshed my original presentation to better accord with the form and substance of a blog. The online references have also been updated to keep up with a rapidly changing Web."
status: published
opengraphimage: 
---

>This blog began life more than two decades ago, as part of a series of lectures I delivered to very bright first-year engineering students at an Australian university.
>
>The number $\pi$ (pronounced "pie") has been recognized from time immemorial because its physical significance can be grasped easily: it is the ratio of the circumference of a circle to its diameter. But who would have thought that such an innocent ratio would exercise such endless fascination because of the complexities enfolded into it?
>
>Not surprisingly, some students I met recently wanted to know more about $\pi$. Accordingly, I have substantially recast and refreshed my original presentation to better accord with the form and substance of a blog. The online references have also been updated to keep up with a rapidly changing Web.
>
>If there are any errors or omissions, please [email](mailto:feedback.swanlotus@gmail.com) me your feedback.

## Circumference, diameter, and π

The straight line or [geodesic](https://mathworld.wolfram.com/Geodesic.html) is the shortest distance between any two points on a plane, sphere, or other space. The circle is the [locus](https://en.wikipedia.org/wiki/Locus_(mathematics)) traversed by a moving point that is [equidistant](https://en.wikipedia.org/wiki/Equidistant) from another fixed point on a two-dimensional plane. It is the most [symmetrical](https://mathworld.wolfram.com/Symmetry.html) figure on the plane. The [diameter](https://en.wikipedia.org/wiki/Diameter) is the name given both to any straight line passing through the centre of the circle---intersecting it at two points---as well as to its length. When we divide the [perimeter](https://en.wikipedia.org/wiki/Perimeter) of circle, more properly called its [circumference](https://en.wikipedia.org/wiki/Circumference), $C$, by its diameter, $d$, we get the enigmatic constant  $\pi$, which has a value between $3.141$ and $3.142$: 
$$
\frac{C}{d} = \pi.
$${#eq:pi-Cd}
The diameter $d$ is twice the radius $r$, and substituting for $d$ into @eq:pi-Cd, we get the well-known school formula:
$$
C = \pi d = 2\pi r \approx 2\left[\frac{22}{7}\right]r \approx 6.28r.
$${#eq:two-pi-r}
Note, however, that $\pi$ is _not exactly equal_ to $\frac{22}{7}$. This value is a convenient _rational fraction approximation_ for $\pi$ that serves well in elementary contexts.^[See ["A tale of two measures: degrees and radians"](https://swanlotus.netlify.app/blogs/a-tale-of-two-measures-degrees-and-radians).]

You might reasonably wonder whether the ratio of the circumference to the diameter of _any_ circle is _always_ $\pi$. The answer is "Yes", because _all circles are similar_. The ratios of corresponding lengths of similar figures are equal. This idea is also covered in my blog ["A tale of two measures: degrees and radians"](https://swanlotus.netlify.app/blogs/a-tale-of-two-measures-degrees-and-radians).

The symbol [$\pi$](https://en.wikipedia.org/wiki/Pi) is the lowercase version of the sixteenth letter of the Greek alphabet. For the history of its use in mathematics, see [adoption of the symbol π in Wikipedia](https://en.wikipedia.org/wiki/Pi#Adoption_of_the_symbol_%CF%80).

![The ratio of the circumference to the diameter of _any_ circle is $\pi$.]({attach}images/C-over-d.svg){#fig:pi-circle width=70% .modal-target}

@fig:pi-circle shows the relationships in @eq:pi-Cd and @eq:two-pi-r pictorially. The circumference of a circle is about 6.28 times its radius. Why this should be so is a secret, a mystery of Nature.

## Is π really equal to 22/7?

Is $\pi$ really equal to $\frac{22}{7}$, as it has been drummed into our heads at school? A wonderfully revealing story lies behind this mysterious relationship, and it is due to the [labours](https://www.collinsdictionary.com/dictionary/english/labours) of one man, in the days when calculators could not be dreamed of, and when neither the decimal system of numbers nor trigonometry were known. That is the story we look at next.

## Archimedes of Syracuse

[Archimedes of Syracuse](https://en.wikipedia.org/wiki/Archimedes) (Ἀρχιμήδης, 287--212 BCE) was a [polymath](https://www.vocabulary.com/dictionary/polymath#:~:text=Definitions%20of%20polymath,of%20great%20and%20varied%20learning) and genius of the ancient world. He was one of the greatest mathematicians the world has ever known. By today's standards, he would be called a mathematician, physicist, engineer, and astronomer, [all rolled into one](https://www.ldoceonline.com/dictionary/all-rolled-into-one). He is perhaps most famous for running out of his bathtub naked exclaiming ["Eureka"](https://www.dictionary.com/browse/eureka)---Greek for "I have found it"---oblivious of those around him. The principle that he had then discovered---that the upthrust on a body submerged in a fluid is equal to the weight of fluid displaced---is known as [Archimedes' Principle](https://www.britannica.com/science/Archimedes-principle).

![Archimedes of Syracuse.^[Domenico Fetti's 1620 painting entitled _Archimedes Thoughtful_. Public domain.]]({attach}images/Domenico-Fetti_Archimedes_1620.jpg){#fig:archimedes width=70% .modal-target}

Among the many accomplishments of Archimedes is his method for estimating $\pi$, which was the best approximation for almost 1900 years. And it was not based on using a length of string, superimposing it on a circle, and getting an estimate! What is even more remarkable is that Archimedes made his discovery without the benefit of either trigonometry, decimal (positional) notation, or calculators. Instead he applied the theorem of Pythagoras and extracted square roots laboriously by hand. His method is also an excellent geometrical illustration of the idea of a limit, with which he was doubtless familiar. It is known that Archimedes was familiar with what we now know as integral calculus, and it is possible that he may have anticipated differential calculus as well.

He devised an ingenious method for estimating the circumference of a circle. He used a sophisticated algorithm that allowed him to obtain successively more accurate values for the circumference of a circle, and therefore of $\pi$.

### Principles used by Archimedes

The method that Archimedes devised is instructive because it is a synthesis of several principles by which the greatest human minds have furthered scientific progress over time. The abstract principles that Archimedes used to estimate $\pi$ were these:

#. Start with the known and progress to the unknown;

#. Initialize variables;

#. Devise a method of increasing the accuracy of the estimate by recursion or iteration;

#. Stop when the desired accuracy is reached.

These principles constitute what is known as an [algorithm](https://www.merriam-webster.com/dictionary/algorithm). Once such a systematic framework has been put in place, it can be applied in many research domains to aid rapid scientific progress.

### Of polygons and circles

Archimedes considered a circle with an [inscribed](https://mathworld.wolfram.com/Inscribed.html) by a regular polygon with $n$ sides along with a [circumscribed](https://mathworld.wolfram.com/Circumscribed.html) regular polygon with the same $n$ sides. @fig:two-limits illustrates this for the case $n = 6$, i.e., with a regular [hexagon](https://www.britannica.com/science/hexagon).

It is obvious that the _area_ of the inscribed hexagon is smaller than the _area_ of the circle, while the _area_ of the circumscribed hexagon exceeds that of the circle. In symbols, with $A_i$ representing the area of the inscribed hexagon, $A$ representing the area of the circle, and $A_c$ representing the area of the circumscribed hexagon, we may say:
$$
A_i < A < A_c.
$${#eq:area-inequality}

But can we say the same thing about the _perimeters_ of these three objects? This is where the choice of _regular_ hexagons makes matters more tractable. A regular hexagon is composed of six equilateral triangles, where the length of each side equals the radius. And each triangle has an area that is the product of half its base multiplied by its height. But the base equals the radius $r$ and the height, called the [apothem](https://www.mathopenref.com/apothem.html) is $h$. Therefore the area of one triangle $A_{\Delta} = \frac{1}{2}rh$. Now six such triangles sum up to $\frac{1}{2}6rh$. But $6r$ is the perimeter of the hexagon. _Therefore, the area of the regular hexagon is $\frac{1}{2}Ph$ where $P$ is the perimeter of the hexagon, and $h$ its apothem_.^[This statement is true of any _regular polygon as well.]

Since the area is proportional to the perimeter, we are justified in claiming that the magnitudes of the perimeters accord with the magnitudes of the areas. Therefore, 
the circumference of the circle, $C$, must lie between the perimeter of the inscribed polygon, $P_i$, (limit from below) and the perimeter of the circumscribed polygon, $P_c$, (limit from above):
$$
P_i < C < P_c.
$${#eq:perimeter-inequality} Remember this equation because it helps us to estimate lower and upper bounds for the value of the circumference. Archimedes's application of the [squeeze theorem](https://en.wikipedia.org/wiki/Squeeze_theorem) nineteen centuries before the calculus was invented is illustrated in @fig:two-limits and later figures.

![The circumference of the circle in darkolivegreen is bounded from below by the perimeter of the inscribed hexagon in maroon and bounded from above by the perimeter of the circumscribed hexagon in midnightblue. The circumference of the circle must lie between the perimeters of these two hexagons.]({attach}images/two-limits.svg){#fig:two-limits width=70% .modal-target}

### The thirty, sixty, ninety right triangle

Archimedes applied the same principle "of starting from the known" to initiate his algorithm using a regular hexagon, which is a mosaic of six juxtaposed equilateral triangles. We know from symmetry that each angle of an equilateral triangle is $60°$. When an equilateral triangle is bisected, we get two right angled triangles with angles of thirty and sixty degrees, as shown in @fig:thirty-sixty.

![This right-angled, obtained by bisecting an equilateral triangle, must be familiar to all school students. These lengths---obtainable from symmetry and the theorem of Pythagoras---allowed Archimedes to start off his process for estimating $\pi$.]({attach}images/thirty-sixty.svg){#fig:thirty-sixty width=40% .modal-target}

The inscribed hexagon, within a circle of radius one unit, also has a side of one unit. Thus, the hypotenuse of the circle $OAP$ in @fig:thirty-sixty has unit length. Moreover, the base $OP$, resulting from a bisected side, has a length of half a unit. By applying the theorem of Pythagoras, the third side, $AP$ is 
$$
\sqrt{1^2 - \left(\frac{1}{2}\right)^2} = \frac{\sqrt{3}}{2}.
$$

### Extracting square roots by hand

Archimedes knew how to extract square roots by hand, and the value of $\sqrt{3}$ was one whose value he knew as a rational fraction. Perhaps, he used one of the methods described in my blog ["How Are Numbers Built?"](https://swanlotus.netlify.app/blogs/how-are-numbers-built). With remarkable accuracy, he stated that 
$$\sqrt{3} \approx \frac{265}{153} \approx 1.732.
$${#eq:sqrt3}

### Recursion and Iteration

Archimedes started with regular hexagons and successively doubled the number of sides, until he had the circle sandwiched between two 96-gons. Successively doubling or halving is a fast-converging technique used in numerical estimation when mathematics is applied to solving a variety of problems. That Archimedes was aware of it shows how far ahead of his time his thinking was.

He repeatedly calculated rational approximations to $\pi$ until he was satisfied with the accuracy. The principle of the method is clearly seen in @fig:six-gon to @fig:ninety-six-gon.

![The estimate for $\pi$ lies between $C_i = 3.0000 < \pi C_c < = 3.4641$.]({attach}images/six-gon.svg){#fig:six-gon width=70% .modal-target}

![The estimate for $\pi$ lies between $C_i = 3.1058 < \pi C_c < = 3.2153$.]({attach}images/twelve-gon.svg){#fig:twelve-gon width=70% .modal-target}

![The estimate for $\pi$ lies between $C_i = 3.1326 < \pi C_c < = 3.1596$.]({attach}images/twenty-four-gon.svg){#fig:twenty-four-gon width=70% .modal-target}

![The estimate for $\pi$ lies between $C_i = 3.1393 < \pi C_c < = 3.1460$.]({attach}images/forty-eight-gon.svg){#fig:forty-eight-gon width=70% .modal-target}

![The estimate for $\pi$ lies between $C_i = 3.1410 < \pi C_c < = 3.1427$. Notice in this sequence of images how the circumference of the circle approaches the perimeter of the inscribed and circumscribed heaxgons to the point of being indistinguishable from them.The final estimate of Archimedes was $\frac{223}{71} < \pi < \frac{22}{7}$.]({attach}images/ninety-six-gon.svg){#fig:ninety-six-gon width=70% .modal-target}






A well-written, accessible article on how Archimedes estimated that $\pi$ is approximately $\frac{22}{7}$ is available online: ["How Archimedes showed that pi is approximately 22 by 7"](https://publications.azimpremjiuniversity.edu.in/3356/1/02-DaminiAndAbhishek_PiIs22By7_Final.pdf). I urge you to read it.^[This article is all the more remarkable because its first author is a Grade 8 student: proof that deep mathematics is not beyond the school student.] You will then appreciate for yourselves how arduous the process must have been in an age without the benefit of:
#. Trigonometry; he used the theorem of pythagors instead;
#. Algebra; he used geometry and the ratios of the lengths of well-known triangles;
#. Decimal numbers for division; he used fractions instead;
square roots by hand; similar and congruent figures; bisection theorems; exhaustion methods

## Iteration, recursion, bisection, squeeze, etc.

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

In the series @fig:six to @fig:forty-eight below, which illustrate the approach Archimedes took to estimate $\pi$, we see very clearly that the perimeter of the _inscribed polygon_ $c_n$ and the perimeter of the _circumscribed polygon_ $C_n$ represent respectively the _lower bound_ and _upper bound_ of the estimated value of $\pi$. As the number of sides, $n$, of the polygon increases, the estimates become increasingly accurate.



https://publications.azimpremjiuniversity.edu.in/3356/1/02-DaminiAndAbhishek_PiIs22By7_Final.pdf

https://azimpremjiuniversity.edu.in/at-right-angles

### How did Archimedes arrive at π = 22/7?

22/7 = 3.142857 142857 142857 (recurring decimal)

## A closer look at π

Pi is both an [irrational](https://en.wikipedia.org/wiki/Irrational_number) and a [transcendental](https://en.wikipedia.org/wiki/Transcendental_number) number. Let us see what each of these [appelations](https://www.merriam-webster.com/dictionary/appellation) mean.


## Rational, Irrational, Algebraic, and Transcedental Numbers

Recurring decimals.

## Formulae involving π

## Quest for the endless digits of π

## Buffon's Needle

## π Trivia

## Book References

## Web resources

## Teaser: are of circle half radius multiplied by circumference. How?

## Appendix: Circumscribed and inscribed polygons of  circle

Archimedes devised his ingenious _squeeze_ method for computing the upper and lower bounds of the perimeter of a circle by computing instead the perimeters of the polygons that inscribe and circumscribe the circle. The approximations become more accurate as the number of sides, $n$, of the polygon is increased. [This YouTube presentation](https://www.youtube.com/watch?v=_qdnyw5Eb_Y) might help you understand the algorithm of Archimedes better, but remember that he did not have trigonometry to aid hm.

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./the-wonder-that-is-pi.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/the-wonder-that-is-pi.pdf>
:::
