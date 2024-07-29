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

![Pi expressed by two very different equations. Note that both are sums to infinity of expressions involving integers.]({attach}images/pi-equations.svg){#fig:pi-equations   width=60% .modal-target}

## The Number [Menagerie](https://www.thefreedictionary.com/menagerie)

Numbers may be compared to animals in a zoo. Each is different, and yet they all share some attributes  in common. The variety and diversity of zoo animals can be challenging. That is why the big cats are grouped together, the herbivores live in another part of the zoo, etc.

Numbers, like animals, have evolved over many centuries into what I call the _number menagerie_. A very elementary picture of this zoo is outlined in my blog ["The Two Most Important Numbers: Zero and One"](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one) in case you need to review some definitions.

To appreciate $\pi$ as a number, we need to be aware of the [taxonomy](https://www.britannica.com/science/taxonomy) in the zoo of numbers. It turns out that _$\pi$ is a real number that is transcendental and therefore also irrational_. Let us make a short detour to better understand what this means.

### Real and Complex Numbers

There are two major sets of numbers: real numbers, denoted by the set $\mathbb{R}$, and complex numbers, denoted by the set $\mathbb{C}$. The difference between the two is that while a real number is a single number, a complex number is a pair, composed of two real numbers, conjoined by the [imaginary unit](https://en.wikipedia.org/wiki/Imaginary_unit) $i$, where $i^2 = -1$. In set-theoretic notation, we write 
$$
\mathbb{C} = \{a + bi: a, b \in \mathbb{R}\}.
$$
Sometimes, the complex number $a + bi$ is written as the ordered pair $(a, b)$, provided the context is clear.

What then are the reals? The real numbers are the union of the set of rational numbers and the irrational numbers. Alternatively, the reals are the union of the algebraic numbers and the transcendental numbers.^[Since both algebraic and transcendental numbers can be complex, we need the added condition that these do not involve the imaginary unit, $i$. For example, $(1 + \frac{\sqrt{(-7)}}{2}) = (1 + \frac{\sqrt{7}}{2}i)$, and $\pi i$ are examples of algebraic and transcendental numbers respectively that involve $i$.]

We will define each of these terms below and how they relate to one another. As always, we start with the known and proceed to the unknown. 

### The Integers and Friends

The set $\mathbb{N}$ of _natural or counting numbers_ is defined as 
$$
\mathbb{N} = \{1, 2, 3, \dots, n, n+1, \dots\}.
$$ It is a [countably infinite](https://en.wikipedia.org/wiki/Countable_set) set whose members begin with $1$ and progress by the addition of $1$ to the predecessor. It is an infinite set, which means it never ends, as denoted by the [ellipsis](https://www.grammarly.com/blog/ellipsis/) or dots at the end of the definition. 

Zero is not a natural number and is assigned its own, unnamed set, $\{0\}$.^[Some folks include zero in $\mathbb{N}$.]

The set of _integers_ $\mathbb{Z}$ includes the negative numbers, zero, and the positive numbers:
$$
\mathbb{Z} = \{\ldots -3, -2, -1, 0, 1, 2, 3, \dots\}
$$ Like $\mathbb{N}$, $\mathbb{Z}$ is also a countably infinite set.

## A first dichotomy

The real numbers may be partitioned into subsets in different ways: one way is into the _rational_ and _irrational_ numbers.

Every real number is _either_ rational or irrational. If the universe of discourse is the real number set, the rational and irrational numbers are complements of each other. In other words, the _union_ of the set of rational numbers and the set of irrational numbers _is_ the set of real numbers.

## Rational Numbers

The _rational numbers_ are denoted by the set $\mathbb{Q}$ defined to be:
$$
\mathbb{Q} = \{\tfrac{a}{b} \mbox{ where } a, b \in \mathbb{Z} \mbox{ and } b \neq 0\}.
$$
The condition imposed on $b$ arises from the stricture that division by zero is not permitted among the integers and reals.^[See ["The Two Most Important Numbers: Zero and One"](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one) for the reason why.]

Let us amplify the consequences of these definitions. Is the number $25$ rational? Yes, indeed. But where is the denominator? It is _implicit_ and equals $1$. The fact that
$$
25 = \frac{25}{1}
$$ makes it clear that $25$ is a rational number. Every integer is a rational number.

And it is obvious from the definition that $\frac{2}{3}$ is a rational number. But is $-\frac{11}{16}$ a rational number? Yes, indeed, because the definition depends upon the _integer_ $a$ and the _non-zero integer_ $b$, where both integers---being drawn from $\mathbb{Z}$---can be signed.

When a rational number is expressed as a decimal, that decimal can either terminate or recur without end.

For example, the fraction $\frac{1}{3} = 0.\overline{3}$ has a recurring decimal representation as revealed by division. The line on top indicates the portion of the decimal which recurs---in this case, it is the single digit $3$.

When we look at the fraction $\frac{1}{2} = 0.5$, we have an example of a terminating decimal. We could, however, pad zeros after the first decimal place, and claim that even a terminating decimal is recurring; witness that $\frac{1}{2} = 0.5 = 0.5000 \dots = 0.5\overline{0}$. But that is not the whole story.

We can further show that:
$$
\frac{1}{2} = 0.5 = 0.5\overline{0} = 0.4\overline{9}.
$$ It does seem strange to claim that two different decimals can express the _same_ rational number $\frac{1}{2}$.

To see why, let us rewrite $0.4\overline{9}$ as
$$
\begin{aligned}
0.4\overline{9} = 0.4999\dots &= \frac{4}{10} + \frac{9}{100} + \frac{9}{1000} + \frac{9}{10000}\dots\\
&= \frac{4}{10} + 9\left[ \frac{1}{100} + \frac{1}{1000} + \frac{1}{10000} \dots\right]\\
\end{aligned}
$$ {#eq:recur}
Consider now the expression in square brackets on the right hand side (RHS) of [@eq:recur]. We can recognize it as a [geometric series](https://mathworld.wolfram.com/GeometricSeries.html) with first term $a = \frac{1}{100}$ and common ratio $r = \frac{1}{10}$. Since $r < 1$, the series is _convergent_ and its [sum to infinity](https://senecalearning.com/en-GB/revision-notes/a-level/maths/edexcel/pure-maths/4-2-9-sum-to-infinity-of-a-geometric-series) [@seneca] is given by:
$$
\begin{aligned}
\frac{a}{1 - r} &= \frac{\frac{1}{100}}{[1 - \frac{1}{10}]}\\
&= \frac{\left[\frac{1}{100}\right]}{\left[\frac{9}{10}\right]}\\
&= \left[\tfrac{1}{100}\right] \left[\tfrac{10}{9}\right]\\
& = \tfrac{1}{90}.
\end{aligned}
$$ {#eq:sum}
Substituting for the terms in square brackets in [@eq:recur], we get
$$
0.4\overline{9} = \frac{4}{10} + 9\left[\frac{1}{90}\right] = \frac{4}{10} + \frac{1}{10} = \frac{5}{10} = \frac{1}{2}.
$$
Even if it seems counter-intuitive that $0.4\overline{9} = 0.5 = 0.5\overline{0} = \frac{1}{2}$, it is mathematically consistent and correct.  One may therefore hazard a guess, and correctly so, that _every rational number may be expressed as a recurring decimal_.^[In this case either the digit $9$ or the digit $0$ recurs.]

Infinite sums have this property of upending our "intuition" about what is correct. So, we have to be extra careful when dealing with the value of a limit as some variable goes to infinity. Moreover, infinity, represented by $\infty$ is _not_ a number and cannot be treated as one. It is simply a convenient shorthand symbol. This caveat should be kept in mind when we encounter infinite sums involving $\pi$, as shown for example, in [@fig:pi-equations].

## Irrational Numbers

Irrational numbers are numbers which are _not rational_. The discovery that $\sqrt{2}$---which is the length of the diagonal of a unit square---was not rational [@HSM-SE;@clegg2004], caused the first ripples of disquiet in the ancient mathematical world, because it upset the prevailing philosophy that ratios of whole numbers alone ruled the world.

There are many celebrated proofs that $\sqrt{2}$ is not the ratio of two integers and is therefore irrational [@bogomolny2018]. Nevertheless, it took almost two millennia for $\sqrt{2}$ to be accepted into the fold of properly defined numbers [@cepelewicz2024].

An irrational number like $\sqrt{2}$ does not have any recurring sequence of digits when expressed as a decimal. But the absence of recurring sequences in the decimal representation of a number should not solely be used to identify a number as irrational, because some rationals with large denominators can and do have very long recurring sequences, which may be difficult to detect by visual inspection . For example, $\frac{8119}{5741}$---which incidentally is a rational approximation to $\sqrt{2}$---has a recurring sequence of length $5740$.^[Also called the _period_ of a repeating decimal. See <https://www.wolframalpha.com/input?i=8119%2F5741>.]

### The irrationals exceed in number the rationals

If you are curious, you might wonder which are the more numerous: the rationals or the irrationals. You might guess that the familiar rationals are more numerous than the obscure irrationals. But you would be mistaken.

In fact, [the irrationals far exceed in number the rational numbers](https://socratic.org/questions/58c80a37b72cff29df40c794) [@socratic]. This fact is stated baldly here, because going into the whys and wherefores of this claim will lead us too far astray from our focus on $\pi$. It is an interesting fact, though, that you should stash away for future use.

## A second dichotomy

The real numbers may also be split another way into two mutually exclusive sets: the _algebraic numbers_ and the _transcendental numbers_. Every real number is _either_ an algebraic number or a transcendental number; it cannot be both.

It bears noting though, that both the algebraic and the transcendental numbers may be complex, i.e, have an imaginary part. But in this blog, we have restricted our universe to the real numbers. In this blog, we will not consider algebraic or transcendental numbers that embody the imaginary unit.

## The Algebraic Numbers

An algebraic number is the root of a non-zero polynomial with integer or rational coefficients. Things have gotten abstract enough thus far for eyes to be glazed. So, let us invoke some examples to revive attention.

The simplest algebraic number is an integer. Let us take $5$ as an example. If the polynomial $p(x) = x - 5$, its root is when $p(x) = 0$, i.e., when $x - 5 = 0$. This implies $x = 5$ and we have shown that $5$ is algebraic _by definition_.

Note that we could have used any other polynomial with the same root, such as $q(x) = 2x - 10$. All we need do is find _one_ polynomial whose root equals the number and we have shown that the number is algebraic. 

Likewise, the rational number $-(\frac{2}{3})$ is the root of the polynomial $3x + 2$ and is therefore algebraic.

We may assert that _every rational number is algebraic and therefore not transcendental_.

But what about an irrational number like $\sqrt{2}$? Is it algebraic? The polynomial $(x^2 - 2)$ has a zeros at $\pm\sqrt{2}$, thereby demonstrating that both $\pm\sqrt{2}$ are algebraic.

Can an algebraic number be a complex root of a real polynomial? Let us find the roots for the real  polynomial $x^2 - 10x +34$:
$$
\begin{aligned}
x^2 - 10x + 34 &= 0\\
(x^2 -10x + 25) + 9 &= 0\\
(x - 5)^2 + 9 = 0\\
(x - 5)^2 &= -9\\
(x - 5) &= \pm3i\\
x &= 5 \pm 3i\\
\end{aligned}
$$
We have just shown that an algebraic number can be a complex root of a real polynomial. While we will not consider complex algebraic numbers in this blog, it is useful to know that they do exist.

## The Transcendental Numbers

Transcendental numbers are _not algebriac_. But proving that a particular number is transcendental is no mean task. When mathematicians have already proven a particular number is transcendental, we will accept their assertion even if we do not understand the proof.  Numbers like [$\pi$](https://www.wolframalpha.com/input?i=is+pi+transcendental), [$e$](https://www.wolframalpha.com/input?i=is+e+transcendental), and [$\ln 2$](https://www.wolframalpha.com/input?i=is+ln%282%29+transcendental) are transcendental.

_All transcendental numbers are perforce irrational_.

Transcendental numbers can also be complex, but we will steer clear of that category here, because we don't want to get more dizzy (mathematically) than we already are right now! \emojifont :wink: \normalfont\.

## Taxonomy via Tetrachotomy

We have established a [tetrachotomy](https://www.collinsdictionary.com/dictionary/english/tetrachotomy) among the real numbers. But the four parts are not mutually exclusive. They overlap. There are two non-overlapping dichotomies: the rationals and irrationals as one pair, and the algebraic and transcendental numbers on the other.

It is noteworthy that irrational numbers like $\sqrt{2}$ and transcendental numbers like $\pi$ and $e$  are denoted with the aid of _symbols_.

This classification of the real numbers seems to be crying out for a Venn diagram to depict it visually. Before we do that, let us marshal the facts we have gathered so far:

#.  The real numbers are the union of the rational and the irrational numbers.

#.  The real numbers are also the union of the algebraic and transcendental numbers that do not embody the imaginary unit $i$.

#.  Algebraic numbers can be either rational or irrational.

#.  All rational numbers are algebraic.

#.  No rational number is transcendental.

#.  All real transcendental numbers are irrational.

#.  The irrational numbers contain _all_ transcendental numbers and a subset of the algebraic numbers, again excluding those that embody $i$.

## Enter π

We have gone through all this huffing and puffing to place $\pi$ contextually among the real numbers. Pi is a transcendental number which is automatically irrational. This means:

#. $\pi$ cannot be expressed in closed form as a decimal.

#. There is no periodic sequence that recurs in the decimal representation of $\pi$, regardless of how long the decimal is.

#. Rational approximations for $\pi$ are used in practice.
 
#. When Pi is used in equations, the placeholder symbol $\pi$ is used.

One could almost say that $\pi$ is not numerically friendly. And you would not be too wrong. Nevertheless, with the aid of ideas like the sum to infinity of a series, and the limit as some variable approaches infinity, etc., mathematicians have derived starkly simple formulae relating integers to $\pi$ as well as mystifying formulae that seem to miraculously relate to $pi$; both these cases are shown in [@fig:pi-equations].

## Madhava-Gregory series

What does the equality sign mean for an infinite sum? How can a sum of rationals equal and irrational number? A transcendental number? The meaning of $=$ is therefore not in the sense of $2 + 2 = 4$ or even of $x - 5 = 0$. It is something similar and yet something different, because, despite Cantor, we have not tamed the idea of infinity yet.

## Acknowledgements

Wolfram Alpha for several results.

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


Real Rational Integer Irrational Algebraic Transcendental Complex etc.

Hark back to 

Venn diagram showing the number taxonomy can be challenging [Venn diagram is shown here](https://mathmonks.com/transcendental-numbers). This Venn diagram is flawed.

https://www.quora.com/Why-cant-we-draw-a-Venn-diagram-for-4-sets-with-circles-and-how-can-we-solve-it

https://www.gauthmath.com

https://tex.stackexchange.com/questions/668565/how-can-i-draw-a-shape-with-overlapping-regions-with-opacity

https://www.cut-the-knot.org/proofs/sq_root.shtml


https://news.ycombinator.com/item?id=40750230
