---
title: "From Calculus to Analysis: Limits"
author: "R (Chandra) Chandrasekhar"
date: 2024-03-24
modified: 2024-05-20
category: Mathematics
tags: 
summary: 
status: draft
opengraphimage: matryoshka-open.jpg
---

::: {.flushright .xsmall}
| The fundamental concept on which the whole of mathematical 
| analysis ultimately rests is that of the limit of an infinite sequence $a_{n}$.

| [Richard Courant and Fritz John]{.smallcaps}
| _Introduction to Calculus and Analysis_, Volume I, p 60.
:::

> This is the first of several blogs that are devoted to the transition from calculus to analysis. The focus in this blog is the concept of limits, as applied to an infinite real sequence.
>
>Parts of this blog have been lifted from the chapter entitled "Mathematics at University" from my book, [_Secrets of Academic Success_](https://swanlotus.netlify.app/sas), which is [available as a free PDF download](https://swanlotus.netlify.app/sas-manuscript/SAS-partial.pdf). However, since that chapter was written, I have myself gained greater understanding on why calculus at high school needed to morph into analysis at university. Accordingly, the material has been augmented, but kept simple enough to be accessible to a high school student just entering university.
>
>I am not a professional mathematician, and make no claim to rigour in this blog. Rather, I hope to demystify analysis from the grip of symbols by explaining its [_raison d'être_](https://www.thefreedictionary.com/raison+d+etre) in plain English. In the process, I hope analysis appears less forbidding and more friendly.

## The transition from high school to university

At high school you were taught how to integrate and differentiate. You were exposed to all sorts of tricks and special techniques---such as the chain rule for differentiation, and integration by parts for integration. If you revelled in mastering and applying such techniques, you might find that what succeeds high school _calculus_, is a horse of an entirely different colour, called _analysis_, at university.

You might even be alarmed that rather than having to solve routine problems for the value of some quantity, or simply to work through and demonstrate a fact in a straightforward fashion, you are now required to _prove_ theorems: something that requires a different mindset and skill set.

## Why the change?

High school calculus appeals to intuition and the visual sense, through _geometric_ ideas like slopes and areas. Words like "approaches", "tends to", etc., signify motion and resonate with our sense of space and time.

Analysis, on the other hand, is logically precise and uses _arithmetic_ as the basis for deriving results. Intuition has given way to logical precision, and pictures have yielded to symbols. The implicit scaffolding of familiar ideas like space and time---borrowed from our everyday experience---has been replaced with the clinical precision of inequalities and universal and existential quantifiers.

The logically indefensible infinitesimals of calculus have given way to the rigorously justifiable limits and infinite sums of analysis. Numbers alone provide the foundation, and this required the idea of a number itself to be strengthened as an abstraction beyond question or doubt.

 All this takes some getting used to. We have moved from an innocent nature-hewn cave to a fabricated apartment block that reaches for the sky. Questions such as, "Is this change really necessary?" and "If it ain't broke, why fix it?" arise in consequence.

But the sober truth is that high school calculus _is_ "broke". It is fun-filled, but nevertheless, a convenient fiction by mathematical standards. Two centuries passed between the discovery of the calculus as a magical computing machine and the recognition of the need to fix it so that it would work robustly in all circumstances.

In this sense, the progression from calculus to analysis is similar to the accretion of zero and the negative numbers to the natural numbers, or the introduction of imaginary numbers to account for roots of certain polynomials. All such changes were resisted at first, just like a new pair of shoes that initially pinch, but time and usage have borne testament to the wisdom behind the change. The somewhat painful transition from calculus to analysis will prove to be the same.

## Geometry's fall from favour

Mathematics texts at high school level are generously and often colorfully illustrated, especially when dealing with geometry. But, if you look at any university-level analysis textbook, colour would have taken heel, and pictures will be the exception rather than the norm. For those who think in pictures, this will come as a letdown, accompanied by the puzzling question, "Why?"

Geometric intuition, upon which Greek mathematics rested securely for well nigh two centuries, was not infallible.  The development of new [non-Euclidean geometries](https://en.wikipedia.org/wiki/Non-Euclidean_geometry) in the nineteenth century robbed mathematics of its innocent certitude in geometric foundations. And the resulting revolution, called the [Erlangen program](https://en.wikipedia.org/wiki/Erlangen_program), made algebra the basis of classifying geometry itself.

Our everyday experience is rooted in our sense of space and time. So, I will attempt to illustrate the ideas of analysis using pictures wherever I can, so that the alien syntax and symbology of analysis is buttressed by the reassuring presence of equivalent pictures. Unfortunately, many introductory analysis books are illustrated scantily if at all.

## Holes in the real number line: irrational numbers

What do irrational numbers have to do with analysis? Quite a lot, really.

Real analysis lives on the real number line. From the time of the Pythagoreans, the irrational numbers have caused mathematicians' hearts to skip a beat. "Are irrational numbers really numbers? If so, where do they live?"

The Greeks circumvented this by limiting the irrational numbers to geometric contexts. The ratio of the circumference of a unit circle to its diameter is $\pi$. The diagonal of a unit square is $\sqrt{2}$. "Let them live geometrically as _lengths_, but let us remain silent about their existence elsewhere." It was a dichotomy between _counting_ and _measurement_ or between the _discrete_ and the _continuous_. 

Even today, the sets for the _natural numbers_, the _integers_, the _rational numbers_ all have their own symbols, $\mathbb{N}$, $\mathbb{Z}$, $\mathbb{Q}$, respectively, but not the irrational numbers. That should be clue enough to indicate that the irrationals were more than a handful for mathematicians to contend with, especially if they were unsure where they rightfully belonged.

The rational numbers, when expressed as decimals, either have a finite decimal representation, like $\frac{1}{2} = 0.5$^[To muddy matters even more, $\frac{1}{2} = 0.4999\dots$ is an equally a valid representation!], or an infinitely recurring decimal representation like $\frac{1}{3} = 0.333\dots$.

The irrational number $\sqrt{2}$---when expressed as a decimal---neither terminates nor recurs without end. Its unpredictable digits go on and on and on. So, where exactly does it sit on the real line? This troubling question went unanswered until [Richard Dedekind](https://plato.stanford.edu/entries/dedekind-foundations/) skilfully introduced the [Dedekind cut](https://www.britannica.com/science/Dedekind-cut) to legitimately accommodate the irrationals as first-class citizens of the real number line, fully capable of undergoing all the arithmetic operations of the rational numbers.

The inclusion of the irrational numbers into the fold of real numbers along with the rational numbers $\mathbb{Q}$, [completes](https://en.wikipedia.org/wiki/Completeness_of_the_real_numbers) the set of real numbers, $\mathbb{R}$, and helps lay the foundation for rigour in analysis.

## Approximation of an irrational

When we use a calculator to key in $\sqrt{2}$, we see a sequence of digits on the display. But that sequence is an _approximation_. _The exact decimal representation of an irrational number does not exist_. So, when we calculate or compute with irrationals, we are using _rational approximations_ in their stead. And for real world purposes, that approximation suffices.

A real sequence $S(n)$, also written as $S_{n}$, is a function from the set of natural numbers to the set of real numbers. Symbolically, this is stated as $S: \mathbb{N} \to \mathbb{R}$.

My calculator gives me the following approximation for $\sqrt{2}$: $1.414213562\dots$. Suppose we form the sequence
$$
S = (s_n) = 1, 1.4, 1.41, 1.414, 1.4142, 1.41421, 1.414213, 1.4142135, 1.41421356, 1.414213562 \dots
$$ obtained by truncating the decimal representation, with $s_{1} = 1$, $s_{2} = 1.4$, until $s_{9} = 1.41421356$. Note that $S$ is an _infinite_, real sequence. The successive terms in the sequence are successive approximations to the value $\sqrt{2}$---each more accurate than the previous one---but with the proviso that there is no decimal representation for the _exact_ value of $\sqrt{2}$ except via the symbol itself.

Note the following points:

#.  The sequence $S$ goes on without end.

#.  The sequence $S$ has been constructed, one digit at a time, to approximate the value of $\sqrt{2}$. Its terms therefore represent _rational approximations_ to $\sqrt{2}$.

#.  We may assert---by virtue of the construction of $S$---that a later term in the sequence is a more accurate approximation to $\sqrt{2}$ than an earlier term. The sequence [converges](https://en.wikipedia.org/wiki/Convergent_series) to $\sqrt{2}$.

#.  $s_{n}$  _tends to_ the value $\sqrt{2}$, as we keep on adding successive terms of the sequence.

#.  Because $s_{n}$ can never equal $\sqrt{2}$, we _cannot equate_ $s_{n}$ to $\sqrt{2}$ for any _finite_ $n \in \mathbb{N}$.

#.  The [limit](https://en.wikipedia.org/wiki/Limit_(mathematics)) in this case, $\sqrt{2}$, is therefore not a member of the sequence.

In symbols, we write $s_{n} \to \sqrt{2} \text{ as } n \to \infty$.^[Infinity is not a natural number.] Alternatively, we may write 
$$\lim_{n \to \infty}s_{n} = \sqrt{2}.
$$ But the equality sign here pertains to an _infinite process_ and cannot be treated in the same cavalier way as we would the garden variety equality sign in $2 + 3 = 5$.

But this is imprecise because we are handwaving with the words "tends to" indicated by $\to$. We will re-visit the issue of how to make precise and watertight the idea of a limit when we shed intuitive notions like "tends to" and replace it with a strict arithmetical criterion.

## Ordered Archimedean field

Two properties of real numbers are highlighted as being essential for real analysis:

a. The [trichotomy](https://en.wikipedia.org/wiki/Law_of_trichotomy) of the real numbers, which states that every real number is either positive, zero, or negative. Given any two real numbers, $x$ and $y$, _only one_ of the following three statements is true: $x < y$, or $x = y$, or $x > y$.

a. The [Archimedean property](https://planetmath.org/archimedeanproperty) which forbids [infinities](https://en.wikipedia.org/wiki/Infinity) and [infinitesimals](https://en.wikipedia.org/wiki/Infinitesimal) from being real numbers. It states that:
    (i) For _any_ real number $x$, there is a natural number $n$ such that $n > x$.^[$\forall x \in \mathbb{R}, \exists n \in \mathbb{N} \text{ such that } n > x.$]
    (ii) For _any positive_ real number $y$, there is a natural number $n$ such that $\frac{1}{n} < y$.^[$\forall y \in \mathbb{R}, y > 0, \exists n \in \mathbb{N} \text{ such that } \frac{1}{n} < y$.]

## Inequalities and distances

Calculus problems are generally concerned with _evaluating_ some quantity and are therefore centred around _equalities_.

Analysis, on the other hand, relies heavily on logical statements about quantities whose exact values may not be known, but about whom statements of _relative size_ need to be made. This is where _inequalities_ enter the discourse.^[You would have already seen from above how inequalities are used to define an Archimedean field.]

This change in emphasis can be disconcerting. Students seeking to familiarize themselves with manipulations of inequalities should consult entry-level texts dealing with this subject [@kazarinoff-1961; @beckenbach-bellman-1962; @alsina-nelsen-2009].

When the derivative was defined geometrically as the value of the slope of a tangent to the graph of the function at a particular point, the geometrical relationship alone sufficed to encapsulate the definition and to help compute the value. XXX FIG

However, when the derivative is defined as a [_limit_](https://en.wikipedia.org/wiki/Limit_(mathematics)), using arithmetic instead of geometry, we do not have _intuitive_ markers to guide us. And such markers are serviceable, but not infallible. Therefore, we need some symbols and operations to contend with ideas like the "closeness" of two points, etc. 

This is where we encounter two mathematical devices quintessential to analysis and much of modern mathematics:

a. Inequalities: by understanding and manipulating the symbols $>$ and $<$, we can work toward watertight definitions that serve to constrain what we are talking about. See [Spider in a matchbox]() later on.

b. Distance: by using a sensible definition of the distance between two points, we may measure their  "closeness". Geometry and intuition have been replaced by arithmetic and precision.

    If there are two _distinct_ real numbers $x$ and $y$, $|x - y|$ defines the positive number that quantifies their separation or distance. Since we are on the real line, the [_absolute value function_](https://mathworld.wolfram.com/AbsoluteValue.html) is used for this purpose. XXX FIG

    The "arbitrarily close" condition of calculus is couched more precisely thus:

    >"For arbitrary $\varepsilon > 0$ and $| x - y | < \varepsilon$".

This incantation will become so familiar that it will become unremarkable when you devote time and practice to analysis. And notice the usefulness of inequalities here.

## Approximation for $\sqrt{2}$ revisited

We now have a quantitative description for a measure of closeness. Let us put it to use in the example from [Approximation of an irrational](#approximation-of-an-irrational) above. We know that our approximation becomes better as $n$ increases.

Let us _fix the admissible error_ to be some positive real number $\varepsilon$. This means that the error is never zero: which is as should be. We may then say that as long as $n$ is larger than some number, say $m$, the error or difference between between $s_{n}$ and $\sqrt{2}$ will be less than $\varepsilon$.

To express this with few words and many symbols, we take recourse to two ideas from logic:

a. The [universal quantifier](https://en.wikipedia.org/wiki/Universal_quantification), $\forall$, which is spoken as "for all", "for any", or "given any".

a.  The [existential quantifier](https://en.wikipedia.org/wiki/Existential_quantification), $\exists$, which is spoken, as "there exists", "there is at least one", or "for some". 

Strangely, these symbols generalize rather than particularize. So, how do they tighten up and make  more precise statements whose truth we wish to establish? Along with inequalities, how do they help make precise the notions that were handwaved away in calculus?

We may now precisely state:

$$
\forall \varepsilon \in \mathbb{R}, \varepsilon > 0, \exists m \in \mathbb{N} \text{ such that } n > m \implies |S_{m} - \sqrt{2}| < \varepsilon.
$${#eq:epsilon}

This definition of a limit starts out with the error variable $\varepsilon$ rather than with the index $m$, above which the error is not exceeded. This may appear counter-intuitive, but if you think of it like a shepherd does, you would want to corral your flock before counting it.

The following points are noteworthy:

#.  Apart from the limit, which in our case is $\sqrt{2}$, there is no other specific value used in the definition.

#.  We use an inequality in $|s_{n} - \sqrt{2}| < \varepsilon$ because no term of $S_{n}$ actually equals $\sqrt{2}$.

#.  By being silent on the value of $\varepsilon$, except to require it to be positive, we may squeeze the error to as small as we want, and still not run afoul of any constraints regarding non-equality of any $s_{n}$ with $\sqrt{2}$. This formulation neatly encapsulates the notion of "tends to", or "approaches", "but does not equal", with a distance measure that may be made arbitrarily small, but not equal zero.^[In hindsight, analysis started off as tidying up the loose ends of calculus, but ended up strengthening the whole edifice of mathematics, as its very foundations were impacted.]

#.  The need for $\mathbb{R}$ to be an [Ordered Archimedean field](#ordered-archimedean-field) is apparent here. We have arbitrarily small numbers, but no infinitesimals, and there is no upper bound on the natural numbers.

A pictorial illustration is given in @fig:nested of what is happening on the real number line as we progressively approximate $\sqrt{2}$. The 

![Nested sequences $[a_i, L]$ vis-a-vis the limit $L$, which represents $\sqrt{2}$ in this case.]({attach}images/nested-intervals.svg){#fig:nested width=90% .modal-target}

Note that this figure is not to scale and is not of the actual values given in [Approximation of an irrational](#approximation-of-an-irrational) but is rather an illustration of what happens as successive approximations become progressively closer to the limit^[This is purely didactic; otherwise, the later ticks would be overwitten and the later labels would obscure each other.].

We know the the limit is $\sqrt{2}$ because we constructed the sequence so. Moreover, we are not approaching the limit from _above_ but rather only from _below_ by using the successive digits that the calculator spewed out.

The following observations apply to the [closed intervals](https://mathworld.wolfram.com/ClosedInterval.html), $[a_1, L]$, $[a_2, L]$, $[a_3, L]$, $[a_4, L]$:

a. $L$, representing $\sqrt{2}$, is the _upper bound_ of all the intervals. We do not exceed $L$ as we are approaching it from below. Note also that we may include $\sqrt{2}$ as the end point of a closed interval in the real line, like $[a_1, \sqrt{2}]$, because the irrationals are first-class citizens of the real line.

a.  As we move from $a_1$ to $a_4$, the intervals $[a_i, L]$, keep getting smaller.

a.  The intervals are [nested](https://en.wikipedia.org/wiki/Nested_intervals): $[a_1, L] \supset [a_2, L] \supset [a_3, L] \supset [a_4, L]$.

## Nested sequences

When a limit is approached from above as well as below---as illustrated in @fig:nested-bilateral---there is a nested sequence of _closed intervals_, $[a_1, b_1]$, $[a_2, b_2]$, $[a_3, b_3]$, and $[a_4, b_4]$, each of which contains the limit $L$. Since each each interval $[a_{i+1}, b_{i+1}]$ is contained in its predecessor, $[a_{i}, b_{i}]$, the limit $L$ is contained in the innermost interval, which also happens to be the _intersection set_ of all the intervals.

![Nested intervals $[a_i, b_i]$ where the limit $L$ lies within the innermost interval, and therefore within all intervals.]({attach}images/nested-bilateral.svg){#fig:nested-bilateral width=90% .modal-target}

For those seeking a concrete image for this abstract "nested intervals on the real line" idea, [Matryoshka dolls, or Russian dolls](https://en.wikipedia.org/wiki/Matryoshka_doll), are a very serviceable, accurate, and unforgettable metaphor, as shown in @fig:matryoshka.

![Nested matryoshka dolls, or Russian dolls, serve as a memorable metaphor for nested intervals.^[From [Wikimedia](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Russian-Matroshka_no_bg.jpg/1024px-Russian-Matroshka_no_bg.jpg) by user [Fanghong](https://commons.wikimedia.org/wiki/User:Fanghong) GFDL.]]({attach}images/matryoshka-open.jpg){#fig:matryoshka width=80% .modal-target}

## Cauchy sequence

A [Cauchy sequence](https://en.wikipedia.org/wiki/Cauchy_sequence) is a sequence of numbers whose successive terms are spaced apart more and more closely as the sequence progresses. In symbols, if the sequence is denoted by $S = (a_n)$, then for a Cauchy sequence, 
$$
\forall \varepsilon > 0, \exists N \in \mathbb{N} \text{ such that } n > N \text{ and } m > N \implies |a_n - a_m| < \varepsilon.
$$ This "bunching" property of later terms in the sequence is intuitively reassuring, as it is what we would expect when a sequence converges. It is also a necessary and sufficient condition for a sequence to converge to a limit.

## Epilogue

There has been a fair bit of huffing and puffing to get to this point. Has it been worth it? 

We have laid a strong foundation for the real numbers by including the irrationals, circumventing  infinitesimals, and defining a limit without using ideas from time and space, but rather using measures of distance, and inequalities to denote vanishingly small quantities that, nevertheless, do not ever equal zero. If you think that this is all [much ado about nothing](https://www.powerthesaurus.org/much_ado_about_nothing/synonyms) then, you are unlikely to appreciate analysis any further. [Adios Amigo!](https://www.spanishdict.com/translate/adios%20amigo)

But if you think that the view from the top was worth the slog of the climb, you will be better placed to appreciate how differentiation, integration, and Fourier analysis benefited from the thorough renovation of the foundations of mathematics that led to analysis. These will be the subjects of future blogs.

We have considered the limit of a real sequence in this blog. We will move from the discrete to the continuous, from sequence to function in a future blog and see what that augurs for the concept of limit. We will then consider differentiation and integration and try to fathom why the changed basis offered by analysis for these two pivotal operations of calculus is the way to go.

A useful metaphor is the renovation of a decrepit house. Renovating while living in it is tedious and inconvenient. But one the renovation has been completed, the pleasure of occupying a solidly built house knows no end. That is how I view this transition.


two sided limits and matryoshka dolls

Cauchy sequences

Achilles and the tortoise

Examples of limits

Others lleft for another day.

## Cauchy sequences



## Derivative: comparison of two approaches

## Integrals: comparison of two approaches

## Limits: conceptually and rigorously

One interesting feature of limits for functions is that _a limit at a point may exist even if the function is not defined at that particular point_. The definition of a limit therefore requires closeness to the point but _not equality_ to the point. 

## Nested intervals leading to √2

[Nested sequences](https://en.wikipedia.org/wiki/Nested_intervals)
https://www.google.com/imgres?q=diagram+of+nested+intervals&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F4%2F48%2FIllustration_nested_intervals.svg&imgrefurl=https%3A%2F%2Fen.wikiversity.org%2Fwiki%2FReal_numbers%2FCompleteness%2FNested_intervals%2FRoots%2FSection&docid=TlBa4PxurDlF5M&tbnid=vVCgBnHPmb70JM&w=522&h=191&hcb=2

## Cauchy sequences

[Augustin Cauchy](https://en.wikipedia.org/wiki/Augustin-Louis_Cauchy)



## Convergence



## Recommended core texts on analysis

I am aware of three classic two-volume texts that are held in high esteem by the mathematical community. The authors of these texts have taken pains to make the material accessible to students commencing analysis courses. The texts are:

1. Richard Courant and Fritz John: _Introduction to Calculus and Analysis, Volumes I and II_, 1989. This is a classic from a different vintage that has stood the test of time. It is more generously illustrated than most analysis texts [@courant-john-one; @courant-john-two].

2. Terence Tao: _Analysis I_ and _Analysis II_, 2022. This text, especially the first volume, was especially written to ease students into analysis. It could have as well been called "Analysis from Scratch". It is a well-paced, student-friendly text, where the author has taken pains to explain issues, as if talking to a beginner student. [@tao-one-2022; @tao-two-2022].

3. Vladimir A Zorich: _Analysis I_ and _Analysis II_, 2015 and 2016. These are translations of the original texts in Russian. Besides rigour, these texts are grounded in actual applications of analysis, and should appeal to physicists and engineers [@zorich-one-2015; @zorich-two-2016].

You, the student must find out which author's writing resonates best with you, and use that text as your anchor text. For instance, I used Maxwell Rosenlicht's _Introduction to Analysis_ [@rosenlicht1986] when I encountered analysis for the first time, because I found it easier to follow than the recommended text. Choose whatever book serves you best to achieve your goals.

## Irrational numbers as reals
 Irrationals were never properly integrated into the real numbers until  That is not a story we will visit today, except to say that strengthening the foundations of the real numbers was a necessary prerequisite that laid the foundations of analysis. Numbers such as $\pi$ and $\sqrt{2}$ arising from the simplest plane geometry can now be accommodated legitimately as first-class citizens of the real number line.

\subsection{Recommended texts}

Several texts have been written to highlight the differences between calculus and analysis and to ease the transition from the one to the other. \citeauthor*{gardiner1982}'s book \citetitle*{gardiner1982} \cite{gardiner1982} gives an eminently readable account of the rationale for analysis that is accessible to someone familiar with calculus. This book has been slightly expanded, given a new title, and reprinted in an inexpensive edition \cite{gardiner2002}: read it if you can.

Another very readable and fascinating recountal of the reasons why analysis \textit{had to arise} is given in \citeauthor*{bressoud2007}'s text \citetitle*{bressoud2007} \cite{bressoud2007}. The time spent reading it will be well rewarded with a quantum jump in your mathematical understanding and maturity.

\citeauthor*{abbott2001}'s lucid \citetitle*{abbott2001} \cite{abbott2001} is another text which gives clear, comprehensible motivations and explanations without losing rigour.

Other, more recent books that bridge the calculus-analysis divide include the texts by \citeauthor{ghorpadelimaye2006} \cite{ghorpadelimaye2006}, \citeauthor{brannan2006} \cite{brannan2006}, \citeauthor{beyer2010} \cite{beyer2010} and \citeauthor{schinazi2012} \cite{schinazi2012}.

My favourite text on introductory analysis is \citeauthor*{rosenlicht1986}'s \citetitle*{rosenlicht1986} \cite{rosenlicht1986}. It is a marvel of clarity that is not too expensive to own. Read and work through it if you can.

\subsection{Clarifying doubts}

If you have a specific but recalcitrant doubt, you might need to consult more than one book before the \enquote{eureka moment} or epiphany occurs. Often it is the earlier texts with their careful expositions and more leisurely pace that facilitate such understanding. Let me illustrate with an example.


## Nested sequences in the real line and Matrioshka dolls


## Spider in a matchbox

## Why epsilon before delta

## Examples of non-limits: 1/x

## Limit, continuity, smoothness, differentiability

## Nested intervals and Matrioshka dolls: [also wavelets]

## Infinite processes and infinities

## The idea of _closeness_ in arithmetic terms: $| a_n - a_m | < \varepsilon$




#.  Real numbers: holes in the number line
#.  Infinite Processes and Infinities
#.  No geometry
#.  No algebra
#.  But arithmetic
#.  Squeezing something from below and above: Archimedes
#.  Archimedean Field
#.  Epsilon-Delta matchbox to confine the Limit spider
#.  Continuity
#.  Differentiability
#.  But most books: no pictures
#.  Pathological functions
#.  Fourier Series: how can a curvy function produce a square wave?
#.  My selection of books
#.  Extract from chapter
#.  Order in the field of real numbers; Is the Complex field ordered?
#.  Modulus function to define length
#.  Approximation rather than Computation
#.  Why Differentiation need s to be re-defined
#.  Why Integration needs to be redefined
#.  What happens at Infinity? Is the equals sign really valid?

Tao I: Quote
Since differential
and integral calculus is also intimately tied up with geometry—think of slopes of
tangents, or areas under a curve—calculus also requires the real number system in
order to function properly.

## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./from-calculus-to-analysis.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/from-calculus-to-analysis.pdf>
:::

https://mercedesbernard.com/blog/recursion-and-nesting-dolls/

https://www.studysmarter.co.uk/explanations/math/pure-maths/cauchy-sequence/

https://math.libretexts.org/Bookshelves/Analysis/Mathematical_Analysis_(Zakon)/03:_Vector_Spaces_and_Metric_Spaces/3.13:_Cauchy_Sequences._Completeness

https://math.stackexchange.com/questions/471615/archimedean-property-concept

https://www.britannica.com/science/limit-mathematics
