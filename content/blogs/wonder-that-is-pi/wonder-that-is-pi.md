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
Even if it seems counter-intuitive that $0.4\overline{9} = 0.5 = 0.5\overline{0} = \frac{1}{2}$, it is mathematically consistent and correct. One may therefore hazard a guess, and correctly so, that _every rational number may be expressed as a recurring decimal_.^[In this case either the digit $9$ or the digit $0$ recurs.]

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

Numbers which are _not algebraic_ are assigned the rather exalted title of transcendental numbers. Numbers like [$\pi$](https://www.wolframalpha.com/input?i=is+pi+transcendental), [$e$](https://www.wolframalpha.com/input?i=is+e+transcendental), and [$\ln 2$](https://www.wolframalpha.com/input?i=is+ln%282%29+transcendental) are transcendental. But proving that a particular number is transcendental is no mean task. We will accept $\pi$ as transcendental if it has been [proved to be so by professional mathematicians](https://fermatslibrary.com/s/the-transcendence-of-pi) [@niven1939;  @chow2024; @morris-jones-pearson-2022]. 

_All transcendental numbers are perforce irrational_.

Transcendental numbers can also be complex, e.g., $e^{i}$, but we will steer clear of that category here, because we don't want to get more dizzy (mathematically) than we already are right now! \emojifont :wink: \normalfont\.

## Taxonomy via Tetrachotomy

We have established a [tetrachotomy](https://www.collinsdictionary.com/dictionary/english/tetrachotomy) among the real numbers. But the four parts are not mutually exclusive. They overlap. There are two non-overlapping dichotomies: the rationals and irrationals as one pair, and the algebraic and transcendental numbers as the other.

It is noteworthy that irrational numbers like $\sqrt{2}$ and transcendental numbers like $\pi$ and $e$  are denoted, not by values, but by _symbols_.

This classification of the real numbers seems to be crying out for a Venn diagram to depict it visually. But before we do that, let us marshal the facts we have gathered so far:

#. The real numbers are represented by the standard set $\mathbb{R}$.

#. The rationals are represented by the standard set $\mathbb{Q}$. 

#. There is no assigned symbol for the set of irrationals. Because it is the set difference between the reals and the rationals, it is often denoted as $\mathbb{R}\setminus\mathbb{Q}$. But this notation is cumbersome. So, let us define a non-standard set $\mathbb{I}$ and let it stand for the irrationals: $\mathbb{I} = \mathbb{R}\setminus\mathbb{Q}$.

#. Let us introduce the non-standard symbol $\mathbb{A_{\mathbb{R}}}$ for the set of real algebraic numbers.

#. Let us introduce the non-standard symbol $\mathbb{T_{\mathbb{R}}}$ for the set of real transcendental numbers.

#. The real numbers are the union of the rational and the irrational numbers: $\mathbb{R} = \mathbb{Q} \cup \mathbb{I}$.

#. The real numbers are also the union of the algebraic and transcendental numbers that do not embody the imaginary unit $i$: $\mathbb{R} = \mathbb{A_{\mathbb{R}}} \cup \mathbb{T_{\mathbb{R}}}$

#. Algebraic numbers can be either rational or irrational: $\mathbb{A_{\mathbb{R}}} \subseteq (\mathbb{Q} \cup \mathbb{I})$.

#. All rational numbers are algebraic: $\mathbb{Q} \subset \mathbb{A_{\mathbb{R}}}$

#. No rational number is transcendental: $\mathbb{Q} \cap \mathbb{T_{\mathbb{R}}} = \emptyset$

#. All real transcendental numbers are irrational: $\mathbb{T_{\mathbb{R}}} \subset \mathbb{I}$.

#. The irrational numbers contain _all_ transcendental numbers and a subset of the algebraic numbers, again excluding those that embody $i$: $(\mathbb{T_{\mathbb{R}}} \subset \mathbb{I})
\wedge (\mathbb{A}_{\mathbb{R}} \cap \mathbb{I} \neq \emptyset)$.

That was quite  mouthful even with mathematical symbols. We are now ready to draw the Venn diagram for the tetrachotomy of the real numbers.

And surprise! surprise! There are only _three_ regions in the Venn diagram that are populated. So, taking mathematical liberties, we may say that our tetrachotomy was not "linearly independent".

![Venn diagram showing the rationals, $\mathbb{Q}$, the irrationals, $\mathbb{I}$, the real algebraics, $\mathbb{A_{\mathbb{R}}}$, and the real transcendentals $\mathbb{T_{\mathbb{R}}}$. From this diagram, we may assert that $\mathbb{R} = \mathbb{A_{\mathbb{R}}} \cup \mathbb{I}$. Note where $\pi$ resides, and also that there are only _three_ populated regions in the Venn diagram: $\mathbb{Q}$, $(\mathbb{A_{\mathbb{R}}} \cap \mathbb{I})$, and $\mathbb{T_{\mathbb{R}}}$.]({attach}images/venn-tetra.svg){#fig:venn-tetra width=90% .modal-target}

## Enter π

We have gone through all this huffing and puffing to place $\pi$ contextually among the real numbers. Let us list its characteristics:

#. It is not a rational number, which means that it cannot be expressed as the ratio of two whole numbers, the denominator being non-zero.

#. Its decimal representation is neither finite nor does it contain a recurring segment, regardless of how long the decimal is.

#. It is also not the root to any non-zero polynomial equation whose coefficients are integers or rational numbers.

#. When Pi is used in equations, the placeholder symbol $\pi$ is used. 

These properties have earned for $\pi$ the rather exalted title of transcendental number, which it shares with other pivotal numbers like $e$. Pi is not only important, it is also tantalizing. Pi is like a beautiful butterfly that cannot be caught in the net of finitude. It is like a rainbow that is beautiful to behold from afar, but can never be reached. 

One could almost say that $\pi$ is not numerically friendly. And you would not be too wrong. Rational approximations for $\pi$, like $\frac{22}{7}$, are used in practice. And the matter would have rested there were it not for the human quest for beauty.

The unpredictability of successive decimal places of $\pi$ has enchanted mathematicians and still continues to engross them. Pi has been calculated to an unprecedented number of decimal places, and such a quest is certainly driven, not by practical necessity, but possibly by the need for aesthetic fulfilment.

The search for increasingly more accurate values for $\pi$ has resulted in many approaches to solve the problem. Geometric^[See the ["Pi of Archimedes"](https://swanlotus.netlify.app/blogs/the-pi-of-archimedes).] and analytical approaches to estimate $\pi$ have both borne fruit. Interestingly, $\pi$ may also be estimated by repeatedly performing a random---or probabilistic---experiment, whose precise outcome cannot be predicted, but whose average behaviour may be estimated. Such an experiment is called a [Monte Carlo simulation](https://www.ibm.com/topics/monte-carlo-simulation). Thus the quest for $\pi$ brings together the mathematical sub-fields of geometry, analysis, and probabilistic simulation.

This quest for the unattainable---but supremely beautiful---has engaged human minds to seek $\pi$ in countless infinite sums, such are shown in [@fig:pi-equations]. These equations are sometimes starkly simple and at other times thoroughly mystifying, and embody the paradox that is $\pi$ more succinctly than all the words in the world.

## Ludolph van Ceulen and François Viète

Before we set sail to explore other methods for estimating $\pi$, let us indulge in one last glance at [The Pi of Archimedes](https://swanlotus.netlify.app/blogs/the-pi-of-archimedes) and how the work of two mathematicians---who lived in the latter half of the 1500s---formed a bridge from the polygon method of Archimedes to newer infinite series methods for estimating $\pi$.

[Ludolph van Ceulen](https://en.wikipedia.org/wiki/Ludolph_van_Ceulen) [@van-ceulen] is one of the unsung heroes in the quest for ever more digits to estimate $\pi$. He faithfully and heroically followed in the exact footsteps of Archimedes and spent almost _twenty-five years_ of his life to evaluate $\pi$ to 35 places^[The final polygon he used had almost 500 million sides!] [@van-ceulen;@van-ceulen-memorial]. It is fitting that his restored tombstone in [Leiden](https://en.wikipedia.org/wiki/Leiden) is inscribed with the upper and lower bounds of $\pi$ [@van-ceulen-memorial,@tombstone] that he so painstakingly computed:

<div style="text-align: center; margin-bottom: 1em;">
```
π > 3.14159265358979323846264338327950288
π < 3.14159265358979323846264338327950289
```
</div>

![An image of the restored tombstone in Leiden celebrating Ludolph van Cuelen's signal achievement in calculating $\pi$ to 35 places. Image is taken from <https://www.history-of-mathematics.org/artifacts/pi-tombstone> [@tombstone].]({attach}images/van-ceulen-restored-tombstone.jpg){#fig:memorial width=50% .modal-target}

[François Viète](https://en.wikipedia.org/wiki/Fran%C3%A7ois_Vi%C3%A8te) not only emulated the polygonal approach of Archimedes to estimate $\pi$, but also introduced algebraic notation [@viete;@maor1998] to allow for greater abstraction. Even more significantly, he introduced---for the first time---an explicit, infinite product formula for for the _exact_ value of $\pi$, now known as [Viète's formula](https://en.wikipedia.org/wiki/Vi%C3%A8te%27s_formula) [@viete-formula;@maor1998], consisting of a product of nested radicals:
$$
\begin{aligned}
\frac2\pi &= \frac{\sqrt 2}2 \cdot \frac{\sqrt{2+\sqrt 2}}2 \cdot \frac{\sqrt{2+\sqrt{2+\sqrt 2}}}2 \cdots\\
\frac2\pi &= \prod_{n=1}^{\infty} \cos \frac{\pi}{2^{n+1}}.
\end{aligned}
$${#eq:viete}
Maor has observed that

>"Viète's formula marks a milestone in the history of mathematics: it was the first time an infinite process was explicitly written as a succession of algebraic operations. … By adding the three dots at the end of his product, Viète, in one bold stroke, declared the infinite a bona fide part of mathematics. This marked the beginning of mathematical analysis in the modern sense of the word." [@maor1998].

While van Cuelen's work displayed superhuman effort and dedication, it also demonstrated that the method of Archimedes did not converge rapidly to $\pi$. Viète's formula bridges the divide between the ancient and the modern by embodying $\pi$ and infinity for the first time in an explicit and exact equation, allowing more and more efficient estimates of $\pi$ to be uncovered in due course.

## The Madhava-Gregory-Leibniz (MGL) series

It must be obvious by now that trigonometry, circles, and the number $\pi$ are inextricably entwined.^[If this sounds unfamiliar, I invite you to read my blogs ["A tale of two measures: degrees and radians"](https://swanlotus.netlify.app/blogs/a-tale-of-two-measures-degrees-and-radians) and ["The Pi of Archimedes"](https://swanlotus.netlify.app/blogs/the-pi-of-archimedes).] The quest for more  accurate values of $\pi$ continued to fascinate mathematicians in the centuries after Archimedes. This time though, rather than geometric iteration, _sums of successive terms_ were used to approximate $\pi$.

For our purposes, a _sequence_ is an _ordered_ procession of numbers, and a _series_ is a sum of successive terms that obey some specific rule.  If the summation stops at some particular term, we have a _partial sum_; if the summation goes on indefinitely, we have an _infinite series_.  If this infinite sum approaches ever closer to a finite value, the series is said to _converge_. To see what all this means in practice, let us look at the Madhava-Gregory-Leibniz series.

### Why a triple-barrelled name?

The series we are about to look at was originally called the _Gregory series_. Leibniz evaluated the Gregory series for a specific value and came up with a formula for $\pi$, and that series was called the _Leibniz series_.

The accomplishments of medieval Indian mathematicians---whose discoveries antedated those of Gregory and Leibniz---remained unknown to the larger world. But recent scholarship has accorded [priority](https://en.wikipedia.org/wiki/Scientific_priority) to the leading Indian mathematician-astronomer of that period, Madhava, who anticipated both the Gregory series and the Leibniz series by more than 250 years [@roy1990; @joseph2009; @roy2011; @joseph2011; @madhava-wiki]. This explains the triple-barrelled name for the series. Thumbnail sketches are given in the links below for all three mathematicians.

[James Gregory](https://en.wikipedia.org/wiki/James_Gregory_\(mathematician\)) was the first Professor of Mathematics at the University of Edinburgh and in 1671, he published the series that was called the the [arctangent series](https://en.wikipedia.org/wiki/Arctangent_series), or the Gregory series.

[Gottfried Wilhelm Leibniz](https://www.google.com/search?q=Leibniz) evaluated the arctangent series at $\frac{\pi}{4}$ to get an estimate of $\frac{\pi}{4}$; the result was known as the Gregory-Leibniz series or the Leibniz Formula.

[Madhava of Sangamagrama](https://en.wikipedia.org/wiki/Madhava_of_Sangamagrama) was a mathematician-astronomer who pursued research in trigonometric power series. In this, he showed remarkable prescience in defining angular measure as the ratio of arc length $s$ to radius, $r$, thus establishing the _naturalness_ of radian measure for serious work in trigonometry.^[See also ["A tale of two measures: degrees and radians"](https://swanlotus.netlify.app/blogs/a-tale-of-two-measures-degrees-and-radians). Some papers attribute the results of Madhava to Nilakantha---a student in the lineage of Madhava---but more recent papers cite Madhava correctly as the fountainhead of this research.]

### Derivation

Rather than draw the Madhava-Gregory-Leibniz (here abbreviated as the MGL) series out of a hat, we will sketch its derivation, according to Gregory, and show its origins in integral calculus.

We assert that 
$$
\int_{0}^{x}\frac{1}{1+ t^2}{\mathrm{d}} t = \arctan{x}
$$ {#eq:invtan}

This integral should be familiar to most high school students. If it is not, try substituting $t = \tan \theta$:
$$
\begin{array}{rcl}
t & = & \tan \theta \quad \mbox{ which gives} \\
\displaystyle \frac{\mathrm{d}t}{\mathrm{d}\theta} & = & \displaystyle \frac{\mathrm{d}}{\mathrm{d}\theta}\left[ \tan \theta \right] \\
& = & \sec^2 \theta \\
& = & 1 + \tan^2 \theta \\
& = & 1 + t^2\\
\mbox{Therefore}\quad\frac{1}{1 + t^2}\mathrm{d} t & = & \mathrm{d}\theta\\
\end{array}
$$

The integral of [@eq:invtan] now becomes
$$
\begin{array}{rcl}
\displaystyle \int_{0}^{x}\frac{1}{1+ t^2}\mathrm{d}t %
& = & \displaystyle \int_{\arctan0}^{\arctan x} \mathrm{d}\theta\\[1em]
& = & \big[ \theta\big]^{\arctan x}_{\arctan0} \\[1em]
& = & \arctan x
\end{array}
$$ {#eq:right}

This takes care of the right hand side of [@eq:invtan].  If we performed long division on the left hand side of the same equation, we get:
$$
\begin{array}{rcl}
\displaystyle \int_{0}^{x}\frac{1}{1+ t^2}\mathrm{d}t %
& = & \displaystyle \int_{0}^{x}%
\left[ 1 - t^2 + t^4 - t^6 +\dots \right] \mathrm{d}t \\[1em]
& = & \displaystyle \left[ t - \frac{t^3}{3} + \frac{t^5}{5} - \frac{t^7}{7}+ \dots \right]_{0}^{x}\\[1em]
& = & \displaystyle x - \frac{x^3}{3} + \frac{x^5}{5} - \frac{x^7}{7}+ \dots
\end{array}
$$ {#eq:left}

Using [@eq:right; @eq:left], we get the Madhava-Gregory series
$$
\arctan x = x - \frac{x^3}{3} + \frac{x^5}{5} - \frac{x^7}{7} + \dots
$$ {#eq:mgseries}
Notice that it is only a small step from here to substitute $x = 1$---because $\tan\frac{\pi}{4} = 1$---to get the equation
$$
\begin{array}{ccccc}
\arctan 1 & = & \frac{\pi}{4} & = & 1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \dots \\[0.5em]
&  & \pi & = & 4(1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \dots)
\end{array}
$$ {#eq:mglseries}
which is the  MGL series, that is also shown at the top of [@fig:pi-equations]. Strangely, Gregory did not publish the special case of [@eq:mglseries], and it was Leibniz who discovered both [@eq:mgseries; @eq:mglseries] in 1674, and published them in 1682. For details of Madhava's terminology and approach, do consult the literature [@roy1990; @roy2011; @joseph2009; @joseph2011]. It is noteworthy that [@eq:mglseries] was the first infinite series ever found for $\pi$. However, it converges very slowly. "Calculating π to 10 correct decimal places using direct summation of the series requires precisely five billion terms..." [@leibniz-pi].

![The blog from here on is _under construction_ and not fit to be read yet. Kindly excuse me.^[Photo by Fernando Arcos: https://www.pexels.com/photo/under-construction-signage-on-laptop-keyboard-211122/.]]({attach}images/under-construction.jpg){#fig:under-construction width=60% .modal-target}

## Detour: What does arctan mean?

We know from high school that the isosceles right-angled triangle and the 30/60/90 right triangle give rise to these identities, where angles are expressed in radians:
$$
\begin{aligned}
\tan\frac{\pi}{3} &= \sqrt{3} &\implies &\arctan\sqrt{3} &= \frac{\pi}{3}\\
\tan\frac{\pi}{4} &= 1 &\implies &\arctan 1 &= \frac{\pi}{4}\\
\tan\frac{\pi}{6} &= \frac{\sqrt{3}}{3} &\implies &\arctan\frac{\sqrt{3}}{3} &= \frac{\pi}{6}\\
\end{aligned}
$$ {#eq:arctan}
Note in [@eq:arctan] that we have an irrational tangent $\frac{\pi}{4}$ giving rise to the rational values $1$. The other commonly known tangents have both angles and values as irrational. This is why the angle $\frac{\pi}{4}$ is so special in algorithms involving arctangents.

It is my suspicion that the the prefix _arc_ is applied to the tangent to denote the arc or angle corresponding to a tangent. Recall that the angle in radians is proportional to arc length: $\theta = \frac{s}{r}$ where $\theta$ is the angle, $s$ the length of arc subtending the angle, and $r$ the radius.^[See ["A tale of two measures: degrees and radians"](https://swanlotus.netlify.app/blogs/a-tale-of-two-measures-degrees-and-radians).]

In formulae for computing $\pi$ efficiently and accurately, mathematicians have been on the lookout for _linear combinations of rational arctangents that sum to a multiple of $\frac{\pi}{4}$_. Once this guiding principle has been grasped, we will be better equipped to assess different formulae that have been developed for evaluating $\pi$ better, especially those based on $\arctan$.

### Rational points on the unit circles


### Rational fractions of π


### How to choose the intersection set?



## Sums of angles

The $\arctan$ function in [@eq:madgregleib] holds the key to a more solid understanding of what is happening in infinite series involving $\pi$. The expression $\arctan 1$ refers to the _angle_ whose tangent is $1$, with the implicit understanding that the angle lies in the interval $[-\frac{\pi}{2}, \frac{\pi}{2}]$.

The next great breakthrough occurred when the single angle $\arctan 1$ could be split into sums or differences of other angles. You might think that adding more terms to the computation would increase computation time and lower accuracy. But if the sum is _judicously contrived_ with numbers that are either large and whose terms decay rather fast, or whose powers are easily computed, then accurate and speedy computation by hand become feasible. And the whole subject of _Machin-like_ formulae--the Holy Grail---of the [Pi-Chasers]() is simply the quest for parsimony in calculation coupled with accuracy in result.

And it all amounts to splitting an angle, $\frac{\pi}{4}$ to be precise, into smaller fragments to our advantage.

## The Quest for faster convergence

Over the last 370 years, by far the most effort has been expended in discovering series that _converge rapidly_ to $\pi$, so that even a partial sum of only a few terms will provide an accurate estimate of $\pi$. We now consider a selection of famous formulae from mathematicians who have bequeathed series for calculating $\pi$ efficiently.



## 





## Machin's Formula

The [Machin formula](https://en.wikipedia.org/wiki/Machin-like_formula2) [@schwartz-2012] is usually written as 
$$
\arctan{1} = \frac{\pi}{4} = 4\arctan\left[ \frac{1}{5} \right] - \arctan\left[ \frac{1}{239} \right]
$$ {#eq:machin-formula}
Contemporary mathematicians have dropped this notation in favour of using the $\arccot$ function, to avoid fractions, and a bracket notation for conciseness [@lehmer-1938]:
$$
\begin{aligned}
\arccot{1} &= \frac{\pi}{4} = 4\arccot{5} - \arccot{239}\\[0.75em]
[1] &= 4[5] - [239].
\end{aligned}
$$ {#eq:machin-formula-cot}

-------------- CLEAN UP FROM HERE ---------------

The three $\arctan$ arguments in [@eq:machin-formula] are all rational. If we substitute the arguments in the RHS of [@eq:machin-formula] into the variable in [@eq:madgregleib], we get:
$$
\begin{aligned}
\pi &= 16\left[\frac{1}{1\cdot5^1} - \frac{1}{3\cdot5^3} + \frac{1}{5\cdot5^5} - \frac{1}{7\cdot5^7} + \dots \right]\\
&+ 4\left[\frac{1}{1\cdot239^1} - \frac{1}{3\cdot239^3} + \frac{1}{5\cdot239^5} - \frac{1}{7\cdot239^7} + \dots \right]
\end{aligned}
$$ {#eq:machin-pi-series}
We have deliberately used a notation that brings out the pattern: a term raised to the power one is explicitly shown as so.

Observe that $\left[{\frac{1}{p}}\right]^n = \frac{1}{p^n}$. Having a unit numerator and large integers as denominators assists in computation because fewer terms have to be evaluated for a good estimate.

#. Substituting

Rational arguments for acrtan

Sum and difference formula, where we seek rational numbers with large denominators

Experimental for 10 by 10 square grid

"Prime factorization of Gaussian integers" as the basis for further derivations.

Examples

[John Machin](https://en.wikipedia.org/wiki/John_Machin) followed in the footsteps of the Madhava-Gregory-Leibniz series, but he used the difference in the arctangents of _two_ values to arrive at a more rapidly convergent series for $\pi$. To better understand his method, let us recall that if $\tan A = \frac{a_1}{b_1}$ and $\tan B = \frac{a_2}{b_2}$, then [@libre-inv-trig-deriv]:
$$
\begin{aligned}
\tan(A + B) &= \frac{\tan A + \tan B}{1 - \tan A\tan B}\\
&= \frac{\frac{a_{1}}{b_{1}} + \frac{a_{2}}{b_{2}}}{1 - \frac{a_{1}a_{2}}{b_{1}b_{2}}}\\
&= \frac{a_{1}b_{2} + a_{2}b_{1}}{b_{1}b_{2} - a_{1}a_{2}}\\
\end{aligned}
$$
Notice that
$$
\begin{aligned}
\arctan\tan(A+B) &= (A + B) \mbox { which implies}\\
\arctan\frac{a_1}{b_1}  + \arctan\frac{a_2}{b_2} &= \arctan\left[\frac{a_{1}b_{2} + a_{2}b_{1}}{b_{1}b_{2} - a_{1}a_{2}}\right]\\
\end{aligned}
$$ {#eq:machin-arc}

Suppose we set $a_{1} = a_{2} = 1$, then, [@eq:machin-arc] we get these sum and difference formulae:
$$
\begin{aligned}
\arctan\frac{1}{b_1}  + \arctan\frac{1}{b_2} &= \arctan\left[\frac{b_{1} + b_{2}}
{b_{1}b_{2} - 1}\right]\\
\arctan\frac{1}{b_1}  - \arctan\frac{1}{b_2} &= \arctan\left[\frac{b_{1} - b_{2}}
{b_{1}b_{2} + 1}\right]
\end{aligned}
$$ {#eq:sum-diff-arct}
To get $\pi$ correct to ten decimal places, we need to evaluate only X partial sums when using the Machin formula.


[@eq:machin-arc] is at the root of the Machin Formula [@machin-like-wiki]:


But what made Machin use these particular numbers in [@eq:machin-formula]? The answer to this vital question will take us a little far afield into the factorization of [Gaussian Integers](https://en.wikipedia.org/wiki/Gaussian_integer) and related ideas. Those interested in the details should consult [this dedicated paper](https://www2.oberlin.edu/faculty/jcalcut/gausspi.pdf) [@calcut2009] or refer to these discussions [@mse-machin-one; @mse-machin-two].

The Machin formula's claim to fame is that it converges faster than the abysmally slow Madhava-Gregory-Leibniz series. Indeed it inspired formulae that were the basis for approximating $\pi$ more accurately for a century or two.

## Newton's approach to estimating π

When he needed to estimate $\pi$ accurately, Newton extended his own pathbreaking binomial theorem to develop the binomial power series. For a fascinating account of how this happened, Read [this online article[(https://www.quantamagazine.org/how-isaac-newton-discovered-the-binomial-power-series-20220831/) [@strogatz-newton-2022].




## Gauss's contribution

Arithmetic-Geometric Mean AGM




## Ramanujan and the Chudnovskys



## Acknowledgements

Wolfram Alpha for several results.

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

<!--\noindent A PDF version of this article is [available for download here]({attach}./wonder-that-is-pi.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/wonder-that-is-pi.pdf>
:::-->


