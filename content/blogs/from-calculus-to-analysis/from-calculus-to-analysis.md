---
title: From Calculus to Analysis
author: "R (Chandra) Chandrasekhar"
date: 2024-03-24
modified: 2024-05-15
category: Mathematics
tags: 
summary: 
status: draft
opengraphimage: 
---

>Portions of this blog have been taken from the chapter entitled "Mathematics at University" from my book, [_Secrets of Academic Success_](https://swanlotus.netlify.app/sas), which is [available as a free PDF download](https://swanlotus.netlify.app/sas-manuscript/SAS-partial.pdf). Since that chapter was written, I have gained greater understanding on why calculus at high school needed to morph into analysis at university. Accordingly, the material has been augmented, but kept simple enough to be accessible to a high school student just entering university.
>
>I am not a professional mathematician, and make no claim to rigour in this blog. Rather, I hope to demystify analysis from the grip of symbols by explaining its [_raison d'être_](https://www.thefreedictionary.com/raison+d+etre) in plain English. In the process, I hope analysis appears less forbidding and more friendly.

## The transition from high school to university

At high school you were taught how to integrate and differentiate. You were exposed to all sorts of tricks and special techniques to compute specific integrals, especially those involving inverse trigonometric functions, and so on. If you revelled in mastering and applying such techniques, you might find that what succeeds high school _calculus_, is a horse of an entirely different colour, called _analysis_, at university.

You might even be alarmed that rather than have to solve routine problems for the value of some quantity, or simply to work through and demonstrate a fact in a straightforward fashion, you are now required to prove theorems: something that requires a different mindset and skill set.

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

Our everyday experience is rooted in our sense of space and time. So, I will attempt to illustrate the ideas of analysis using pictures wherever I can, so that the alien syntax and symbology of analysis is buttressed by the reassuring presence of equivalent pictures. Unfortunately, many introductory analysis books do not generously make this student-friendly concession, if at all.

## Holes in the real number line: irrational numbers

What do irrational numbers have to do with analysis? Quite a lot, really.

Real analysis lives on the real number line. From the time of the Pythagoreans, the irrational numbers have caused mathematicians' hearts to skip a beat. "Are irrational numbers really numbers? If so, where do they live?"

The Greeks circumvented this by limiting the irrational numbers to geometric contexts. The ratio of the circumference of a unit circle to its diameter is $\pi$. The diagonal of a unit square is $\sqrt{2}$. "Let them live geometrically as _lengths_, but let us remain silent about their existence elsewhere." It was a dichotomy between _counting_ and _measurement_ or between the _discrete_ and the _continuous_. 

Even today, the sets for the _natural numbers_, the _integers_, the _rational numbers_ all have their own symbols, $\mathbb{N}$, $\mathbb{Z}$, $\mathbb{Q}$, respectively, but not the irrational numbers. That should be clue enough to indicate that the irrationals were more than a handful for mathematicians to contend with, especially if they were unsure where they rightfully belonged.

The rational numbers, when expressed as decimals, either have a finite decimal representation, like $\frac{1}{2} = 0.5$^[To muddy matters even more, $\frac{1}{2} = 0.4999\dots$ is an equally a valid representation!], or an infinitely recurring decimal representation like $\frac{1}{3} = 0.333\dots$.

The irrational number $\sqrt{2}$---when expressed as a decimal---neither terminates nor recurs without end. It simply goes on and on and on. So, where exactly does it sit on the real line? This troubling question went unanswered until [Richard Dedekind](https://plato.stanford.edu/entries/dedekind-foundations/) skilfully introduced the [Dedekind cut](https://www.britannica.com/science/Dedekind-cut) to legitimately accommodate the irrationals as first-class citizens of the real number line, fully capable of undergoing all the arithmetic operations of the rational numbers.

The inclusion of the irrational numbers into the fold of real numbers along with the rational numbers $\mathbb{Q}$, [completes](https://en.wikipedia.org/wiki/Completeness_of_the_real_numbers) the set of real numbers, $\mathbb{R}$, and helps lay the foundation for rigour in analysis.

## Ordered Archimedean field

Two properties of real numbers are highlighted as being essential for real analysis:

a. The [trichotomy](https://en.wikipedia.org/wiki/Law_of_trichotomy) of the real numbers, which states that every real number is either positive, zero, or negative. Given any two real numbers, $x$ and $y$, _only one_ of the following three statements is true: $x < y$, or $x = y$, or $x > y$.

a. The [Archimedean property](https://planetmath.org/archimedeanproperty) which forbids infinities and infinitesimals from being real numbers. It states that:
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


## Limits: conceptually and rigorously

One interesting feature of limits for functions is that _a limit at a point may exist even if the function is not defined at that particular point_. The definition of a limit therefore requires closeness to the point but _not equality_ to the point. This "arbitrarily close" condition is couched thus: 

>"For arbitrary $\varepsilon > 0$ and $| x - y | < \varepsilon$".

This incantation will become so familiar that it will become unremarkable when you devote time and practice to analysis. And notice the usefulness of inequalities here.



## Approximations to $\sqrt{2}$ as a Cauchy sequence

[Augustin Cauchy](https://en.wikipedia.org/wiki/Augustin-Louis_Cauchy)




## Irrational numbers as reals
 Irrationals were never properly integrated into the real numbers until  That is not a story we will visit today, except to say that strengthening the foundations of the real numbers was a necessary prerequisite that laid the foundations of analysis. Numbers such as $\pi$ and $\sqrt{2}$ arising from the simplest plane geometry can now be accommodated legitimately as first-class citizens of the real number line.

## The reals as an ordered Archimedean field
 
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

## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./from-calculus-to-analysis.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/from-calculus-to-analysi.pdf>
:::

https://mercedesbernard.com/blog/recursion-and-nesting-dolls/

https://www.studysmarter.co.uk/explanations/math/pure-maths/cauchy-sequence/

https://math.libretexts.org/Bookshelves/Analysis/Mathematical_Analysis_(Zakon)/03:_Vector_Spaces_and_Metric_Spaces/3.13:_Cauchy_Sequences._Completeness

https://math.stackexchange.com/questions/471615/archimedean-property-concept
