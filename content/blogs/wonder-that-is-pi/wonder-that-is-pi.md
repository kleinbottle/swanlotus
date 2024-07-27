---
title: "The Wonder That Is Pi"
author: "R (Chandra) Chandrasekhar"
date: 2004-01-14
modified: 2024-07-25
category: Mathematics
tags: pi
summary: This is a sequel to the blog ["The Pi of Archimedes"](https://swanlotus.netlify.app/blogs/the-pi-of-archimedes). We look at π as a number rather than the ratio of two lengths, and try to unravel how and why it is ubiquitous in mathematics.
opengraphimage: pi-equations.png
---

This is a sequel to the blog ["The Pi of Archimedes"](https://swanlotus.netlify.app/blogs/the-pi-of-archimedes). Here, we look at π as a number---without explicit reference to its geometric tethering---and explore its remarkable ubiquity in mathematics. As an appetizer, see [@fig:pi-equations], where the symbol for Pi is surmounted by two very disparate equations defining it. How in all the world could these two different-looking equations be true? But they are indeed!

![Pi expressed by two very different equations.]({attach}images/pi-equations.svg){#fig:pi-equations   width=60% .modal-target}

## The Number [Menagerie](https://www.thefreedictionary.com/menagerie)

Numbers may be compared to animals in a zoo. Each is different, and yet they all share some things in common. The variety and diversity of zoo animals can be challenging. That is why the big cats are grouped together, the herbivores live in another part of the zoo, etc.

Numbers, like animals, have evolved over many centuries into what I call the _number menagerie_. A very elementary picture of this zoo is outlined in my blog ["The Two Most Important Numbers: Zero and One"](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one) in case you need to review some definitions.

To appreciate $\pi$ as a number, we need to be aware of the [taxonomy] in the zoo of numbers. It turns out that $\pi$ is a real number that is transcendental and therefore also irrational. Let us pause for a while to better understand what this means.

### Real and Complex Numbers

Broadly speaking, there are two classes of numbers: real numbers, denoted by the set $\mathbb{R}$, and complex numbers, denoted by the set $\mathbb{C}$. The difference between the two is that while a real number is a single number, a complex number is a pair, composed of two real numbers, conjoined by the [imaginary unit](https://en.wikipedia.org/wiki/Imaginary_unit) $i$, where $i^2 = -1$. In set-theoretic notation, we write 
$$\mathbb{C} = \{a + ib: a, b \in \mathbb{R}\}.
$$

What then are the reals? We will leave that question aside for the moment, and look instead into what undivided or whole numbers are.

### The Integers and Friends

The set $\mathbb{N}$ of _natural or counting numbers_ is defined as 
$$
\mathbb{N} = \{1, 2, 3, \dots, n, n+1, \dots\}.
$$ It is a _countably infinite_ set whose members begin with $1$ and progress by the addition of $1$ to the  predecessor. It goes on without end.

Zero is not a natural number and is assigned its own unnamed set, $\{0\}$.^[Some folks include zero in $\mathbb{N}$.]

The set of _integers_ $\mathbb{Z}$ includes the negative numbers, zero, and the positive numbers:
$$
\mathbb{Z} = \{\dots -3, -2, -1, 0, 1, 2, 3, \dots\}
$$ Like $\mathbb{N}$, $\mathbb{Z}$ is also a countably infinite set.

### Rational and Irrational Numbers

Every real number is _either_ rational or irrational. If the universe of discourse is the real number set, the rational and irrational numbers are complements of each other. In other words, the _union_ of the set of rational numbers and the set of irrational numbers _is_ the set of real numbers.

The rational numbers are denoted by the set $\mathbb{Q}$ defined to be:
$$
\mathbb{Q} = \{\frac{a}{b} \mbox{ where } a, b \in \mathbb{Z} \mbox{ and } b \neq 0\}.
$$
The condition imposed on $b$ arises from the stricture that division by zero is not permitted among the integers and reals.^[See ["The Two Most Important Numbers: Zero and One"](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one) for the reason why.]

A number that is not rational is an irrational number.

Let us amplify the consequences of these definitions. Is the number $25$ rational? Yes, indeed. But where is the denominator? It is _implicit_ and equals $1$. The fact that
$$
25 = \frac{25}{1}.
$$ makes it clear that $25$ is a rational number.

And it is obvious from the definition that $\frac{2}{3}$ is a rational number. But is $-\frac{11}{16}$ a rational number? Indeed, because the definition draws upon the _integer_ $a$ and the _non-zero integer_ $b$, where an integer can be signed.

Irrational numbers are numbers which are _not rational_. The discovery that $\sqrt{2}$---which is the length of the diagonal of a unit square---was not rational, caused the first ripples of disquiet in the ancient mathematical world, because it upset the prevailing philosophy that whole numbers alone ruled the world.

Let us also be aware that when a number is expressed in decimal form, the rationals take the form of terminating decimals or of recurring decimals. For example, 
$$
\frac{1}{2} = 0.5 = 0.4\overline{9}.
$$ The expression $0.4\overline{9}$ means that the digit $9$ keeps repeating indefinitely. It might seem strange that two slightly different decimals express the same rational number $\frac{1}{2}$.

Let us rewrite $0.4\overline{9}$ as
$$
\begin{aligned}
0.4\overline{9} = 0.4999\dots &= \frac{4}{10} + \frac{9}{100} + \frac{9}{1000} + \dots\\
&= \frac{4}{10} + 9\left[ \frac{1}{100} + \frac{1}{1000} + \dots\right]\\
\end{aligned}
$$ {#eq:recur}
Consider now the expression in square brackets in [@eq:recur]. We can recognize it as a [geometric series](https://mathworld.wolfram.com/GeometricSeries.html) with first term $a = \frac{1}{100}$ and common ratio $r = \frac{1}{10} < 1$. The [sum to infinity](https://senecalearning.com/en-GB/revision-notes/a-level/maths/edexcel/pure-maths/4-2-9-sum-to-infinity-of-a-geometric-series) of this _convergent_ geometric series is given by 
$$
\begin{aligned}
\frac{a}{1 - r} &= \frac{\frac{1}{100}}{[1 - \frac{1}{10}]}\\
&= \frac{\left[\frac{1}{100}\right]}{\left[\frac{9}{10}\right]}\\
&= \left[\tfrac{1}{100}\right] \left[\tfrac{10}{9}\right]\\
& = \tfrac{1}{90}.
\end{aligned}
$$ {#eq:sum}
Substituting for the second term in [@eq:recur], we get
$$
0.4\overline{9} = \frac{4}{10} + 9\left[\frac{1}{90}\right] = \frac{4}{10} + \frac{1}{10} = \frac{5}{10} = \frac{1}{2}.
$$
Even if it seems counter-intuitive that $0.4\overline{9} = 0.5 = 0.5\overline{0} = \frac{1}{2}$, it is mathematically consistent and correct. For another example, the fraction $\frac{1}{3} = 0.\overline{3}$ also has a recurring decimal representation. One may therefore hazard a guess, and correctly so, that _every rational number may be expressed as a recurring decimal_.^[In this case either the digit $9$ or the digit $0$ recurs.]

Infinite sums have this property of upending our "intuition" about what is correct. So, we have to be extra careful when dealing with the value of a limit as some variable goes to infinity. Moreover, infinity, represented by $\infty$ is _not_ a number and cannot be treated as one. It is simply a convenient shorthand symbol. This caveat should be kept in mind when we encounter infinite sums involving $\pi$, as shown for example, in [@fig:pi-equations].

An irrational number like $\sqrt{2}$ does not have any recurring sequence of digits when expressed as a decimal. But the absence of recurring sequences in the decimal representation of a number should not solely be used to identify a number as irrational, because some rationals with large denominators can and do have very long recurring sequences, which may be difficult to detect by visual inspection. For example, $\frac{8119}{5741}$, which is a rational approximation to $\sqrt{2}$, has a recurring sequence of length $5740$.^[Also called the _period_ of a repeating decimal.]

### Algebraic and Transcendental Numbers

Another dichotomy that may be applied to the real numbers is to segregate them into two classes of numbers: the algebraic numbers and the transcendental numbers. There is one complication: both algebraic and transcendental numbers may be complex. But if we restrict our universe to the real numbers, then these two sets are disjoint, i.e., they do not overlap.

An algebraic number is the root of a non-zero polynomial with integer or rational coefficients. Things have gotten abstract enough thus far for eyes to be glazed. So, let us invoke some examples to revive attention.






We will steer clear of transcendental numbers that are complex because we don't want to get dizzy right at the beginning \emojifont :wink: \normalfont\.

Real Rational Integer Irrational Algebraic Transcendental Complex etc.

Hark back to 

Venn diagram showing the number taxonomy can be challenging [Venn diagram is shown here](https://mathmonks.com/transcendental-numbers). This Venn diagram is flawed.

### Taxonomy

#.  The real numbers are a union of the algebraic and transcendental numbers.

#.  The algebraic numbers can be either rational or irrational.

#.  All rational numbers are algebraic.

#.  No rational number is transcendental.

#.  All real transcendental numbers are irrational.

#.  The irrational numbers contain _all_ transcendental numbers ad a subset of the algebraic numbers.

## Madhava-Gregory series

What does the equality sign mean for an infinite sum? How can a sum of rationals equal and irrational number? A transcendental number? The meaning of $=$ is therefore not in the sense of $2 + 2 = 4$ or even of $x - 5 = 0$. It is something similar and yet something different, because, despite Cantor, we have not tamed the idea of infinity yet.

## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

<!--\noindent A PDF version of this article is [available for download here]({attach}./wonder-that-is-pi.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/wonder-that-is-pi.pdf>
:::-->

https://math.stackexchange.com/questions/4675933/is-the-equal-symbol-in-an-infinite-series-misleading-notation

https://mathmonks.com/transcendental-numbers

https://gfredericks.com/blog/

https://www.quora.com/How-do-you-draw-a-Venn-diagram-showing-the-relationship-of-the-set-of-real-rational-irrational-integers-and-non-integer-numbers

https://www.reddit.com/r/math/comments/725nxu/how_would_you_improve_this_types_of_numbers_venn/

https://i.pinimg.com/736x/57/db/7f/57db7fb6dd9a4f2649b0d8ae5689ff98--math-teacher-math-class.jpg


https://study.com/skill/learn/how-to-construct-a-venn-diagram-to-classify-real-numbers-explanation.html
