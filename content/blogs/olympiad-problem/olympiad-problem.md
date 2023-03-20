---
title: "Solving a Mathematics Olympiad problem"
author: R (Chandra) Chandrasekhar
date: 2023-03-15
modified: 2023-03-19
category: Mathematics
tags: Mathematics, IMO (International Mathematical Olympiad), equation, graph, number theory
summary: "During a casual tour of the Web, my attention was drawn to a problem that was stated so simply that it beckoned an attempt at a solution. It was purported to be from a [Mathematical Olympiad](https://www.imo-official.org/), which raised its attractiveness index, as such problems are known to strenuously exercise the grey cells, while still retaining the charm of a sport. Only later did I find out that the problem I had written down had omitted an important constraint that made the problem all the more memorable. This is an account of my escapade into the land of mathematics in search of solution."
opengraphimage: olympiad-four.png
---

## A problem that beckoned

During a casual tour of the Web, my attention was drawn to a problem that was stated so simply that it beckoned an attempt at a solution. It was purported to be from a [Mathematical Olympiad](https://www.imo-official.org/), which raised its attractiveness index, as such problems are known to strenuously exercise the grey cells, while still retaining the charm of a sport. Only later did I find out that the problem I had written down had omitted an important constraint that made the problem all the more memorable. This is an account of my escapade into the land of mathematics in search of a solution to an intriguing problem.

## The problem

The problem, as I first came across it, was posed thus:

If
$$
x + xy + y = 54
$$ {#eq:problem}
what is $x + y$?

If you are good at mathematics, or relish a challenge, do not read further until you have given this problem your very best shot. After that, do read on.

## First thoughts

At first, I thought that this problem was too easy to be featured in a Mathematics Olympiad[^1]. After all, the problem statement would be intelligible to anyone who has gone through mathematics up to middle (or secondary) school level. But after a short while, I realized that it posed some definite challenges.

In this blog, I am not setting out to expound a blazingly fast method of solution, nor am I attempting mathematical terseness. I will be discursive because I want to _savour_ the problem in all its aspects, as they suggested themselves to me. I also hope that, by so doing, I stimulate mathematical thinking in my readers, and give them an experience of the mathematical adventure, if nothing else.

[^1]: I have not checked the if, which, when, and level of the Olympiad, but simply took on the problem in good  faith.

## A pictorial approach

Mathematics may be approached through pictures, or through words, or through a combination of both. Here, I am going to try pictures first. This means graphing the curve defined by @eq:problem and wresting as many insights as possible from that representation.

How do we graph the given curve? And after that, how do we obtain the value of $x + y$, which is our ultimate goal? Let us see how this approach pans out.

For a start, I am [loath](https://www.thefreedictionary.com/loath) to graph curves by hand. So, I went to my favourite graphing destination on the Web, [Desmos](https://www.desmos.com), to experiment with the given curve. The [Desmos Graphing Calculator](https://www.desmos.com/calculator) offers the easiest and laziest route to visualize algebraic curves.

I typed in $x + xy + y = 54$ into the textbox for the first curve and got what seemed at first sight to be a pair of curves for a rectangular hyperbola of the form $xy = k$ where $k$ is some constant (or number).

![A graph of the curve $x + xy + y = 54$.]({attach}images/olympiad-one.png){#fig:one width=75% .modal-target}

From @fig:one, we can deduce the following:

(a) The curve _looks like_ a rectangular hyperbola, with its two portions lying _largely_ in the first and third quadrants.

(a) If we re-write @eq:problem to have only $y$ on the left hand side (LHS), we get:
$$
y = \frac{54-x}{x+1} = \frac{54}{x+1} -\frac{x}{x+1} \approx \frac{54}{x} - 1 \approx -1 \; \mbox{for large $x$}
$$ {#eq:hyperbola}
Wonder no more why the curve resembles a rectangular hyperbola. Its horizontal (and vertical) [asymptotes](https://en.wikipedia.org/wiki/Asymptote) equal -1. That is why it lies _largely_ in the first and third quadrants.

(a) Only those points $(x, y)$ that satisfy @eq:problem are relevant for our second condition $x + y$, i.e., our solution space is defined by the two halves of the plotted curve. The rest of the $xy$ plane does not contain the solution we seek.

(a) Since we are after the value of $x + y$, we can plot the _family of curves_ $x + y = k$ where $k$ is some real constant. This is done in @fig:two. The two straight lines that are tangent can be derived from calculation, as shown in the [Appendix](#appendix) at the end. They represent limiting cases of the values of $k$ within which a solution _cannot_ lie.

![The _family of curves_ $x + y = k$ plotted for three values of $k$. The solution _cannot_ lie within the purple region, bounded by the broken purple lines because no intersection with the nonlinear red curve is possible there. The lines are shown broken because the region does not include the two broken purple lines themselves. The green dotted line represents $x + y = 0$.]({attach}images/olympiad-two.png){#fig:two width=75% .modal-target}

Let us now look at possible solutions. For this we need to plot straight lines like $x + y = 20$ and $x + y = -30$ which will intersect the red curves as shown in @fig:three.

![Two straight lines that intersect the curve $x + xy + y = 54$. The respective solutions are $x + y = 20$ and $x + y = -30$.]({attach}images/olympiad-three.png){#fig:three width=75% .modal-target}

It should clear that there is nothing special about the numbers $20$ or $-30$. So, there is an infinity of solutions for $x + y = k$ in two disjoint sets: $x + y \geq 12.832$ and $x + y \leq -16.832$, as shown in the [Appendix](#appendix).

Although we have reached the end of the prescribed quest, there is a sense of hollowness, because there is no _unique_ solution (set), except that the solution can lie anywhere along the given curves, and is forbidden in the purple region of @fig:two.

It is appropriate now to take a breather and re-examine all assumptions. Perhaps, it is the time to ruminate philosophically about mathematical problems.

## Mathematics problems and detective novels

Mathematics problems function like detective novels. The author of a detective novel enters into an implicit understanding with the reader, that the clues will be peppered throughout the novel, which when viewed as whole,  will lead to a _single_ culprit, preferably at the end of the novel. If there were still ten possible culprits at the end of the novel, the author would have completely let down the reader's expectations, and cheated him or her of the reward of discovery for the time spent reading the novel.

A similar compact holds between the one who poses a mathematics problem and the student who is expected to solve it. If a problem has no solutions, or has countless solutions, it will not necessarily entrance the student, especially at school level. Indeed, it will be considered a breach of faith if either of these two conditions held.

It is unlikely that an Olympiad problem in mathematics will indulge in such breach of trust. What was the _exact wording_ of the problem?

## The all-important constraint

A more careful sweep of the Web unearthed a more precise statement of the problem, which included a constraint. For completeness, the problem is re-stated here:

If $x$ and $y$ are _both positive integers_, and
$$
x + xy + y = 54
$$
what is $x + y$?

By restricting the numbers to be positive, we may discard the entire solution set in the fourth quadrant, as well as any solutions that intersect near the (negative-valued) asymptotes. Moreover, by restricting the solution to integers, we are changing the domain of the solution from a quadrant of the real plane to an _integer lattice_ in the first quadrant. The solution set has changed from [uncountably infinite](https://mathworld.wolfram.com/UncountablyInfinite.html) to [countably infinite](https://mathworld.wolfram.com/CountablyInfinite.html).

If you observe @fig:three carefully, when $k$ is large and positive, the intersection with the given curve will occur near the values of the asymptotes. One way to identify the solution is to vary $k$ in the straight line $x + y = k$ by animation, and to identify cases where the intersection occurs at _integer values_ of $x$ and $y$. If you are curious how that will look like, go to [this animation at the Desmos website](https://www.desmos.com/calculator/1mklcrdbxw) to see what happens to the solution as $k$ varies between $-30$ and $30$.

But trying to identify a solution for integers $x$ and $y$, by pausing the animation every so often, and looking for whole numbers as the co-ordinates of intersection, will be like yanking a piece of luggage from a fast-moving carousel in an airport. It will be a hit or miss operation rather than a dignified mathematical solution. So, let us switch from the pictorial to the verbal. Let algebra bring to bear its considerable prowess on this problem.

## Algebra to the rescue

Let us shuffle the components of @eq:problem in an effort to introduce even more symmetry, and gain a deeper insight:
$$
\begin{aligned}
x + xy + y &= 54\\
x(1 + y) + y &= 54\; ; \mbox{add one to each side} \\
x(1 + y) + y + 1 &= 55\\
x(y + 1) + (y + 1) &= 55\\
(y + 1)(x + 1) &= 55\\
\end{aligned}
$${#eq:three}

### Why products over sums?

Take a look at @eq:three. Given that we are asked to evaluate $x + y$, why did we try to express the number 55  as a _product_ of two numbers on the LHS, rather than as the _sum_ of two numbers?

Decomposing a number $n$   into a sum of numbers is called [_additive partitioning_](https://mathworld.wolfram.com/Partition.html), and is represented by the function $p(n)$, while decomposing a number into a product of numbers is called [_multiplicative partitioning_ or _unordered factorization_](https://mathworld.wolfram.com/UnorderedFactorization.html) and is represented by the expression $f(n)$ [@brown-2017].

Consider the number $6$. We may express it as a sum, using the numbers from $1$ to $6$, in eleven different ways, i.e., $p(6) = 11$. But we may express it in only two different ways as a product, i.e., $f(n)=2$. Note that we  we are talking of _distinct_ decompositions.

It is tempting to speculate that for any positive integer $n$, $p(n) \geq f(n)$, but I have not seen any proof of this statement. For our purposes though, it is patently reasonable[^2] to claim that the number of ways in which the number $55$ may be decomposed as a product is far fewer than the number of ways in which it can be decomposed as a sum, i.e., $f(n) < p(n)$. And that is why we sought to write the LHS of the last line of @eq:three as a product rather than as a sum.

[^2]: Surprisingly, research into the multiplicative partition of a positive integer seems to be a relatively  recent endeavour [@dodd-1987]. So, I am hand-waving here.

### Multiplicative partitions of $55$

The number 55 may be decomposed into these four _unique_ factors---meaning that order does not matter: $1, 5, 11,$ and $55$[^3]. The fact that $5$ and $11$ are [prime numbers](https://mathworld.wolfram.com/PrimeFactor.html) and that their product is $55$ has helped whittle down the number of factors.

[^3]: It should be blindingly obvious that $1 \times 55 = 55$ and that $5 \times 11 = 55$ \emojifont:wink:\normalfont

Let us examine the possible solutions, one by one. If we assign the number $1$ to $x + 1$, then $x$ must be zero. But we have been told that $x$ and $y$ are both positive integers, meaning that they cannot be zero or negative. _So, the factor-pair $1$ and $55$ is not valid_.

We may now write @eq:three as:
$$
(x+1)(y+1) = 55 = 5\times 11
$${#eq:solution}
If we set $x + 1 = 5$, we get $x = 4$. Likewise, setting $y + 1 = 11$ gives $y = 10$. Therefore, $x + y = 4 + 10 = 14$. It should abundantly clear that $x$ and $y$ could interchange their values but their sum will still be the same. So, the solution to the problem is $x + y = 14$, and we are home and dry.

### The final picture

To get a sense of finality, let us see the graphical representation of our algebraic result in @fig:four below.

![The line $x + y = 14$ intersects the curve $x + xy +y = 54$ at _two_ points: $(10, 4)$ and $(4, 10)$. Thus although $x + y = 14$ is a _single_ line---and the required solution---if we had been asked for the points of intersection, we would have to enumerate _both_ points.]({attach}images/olympiad-four.png){#fig:four width=75% .modal-target}

## Appendix

The somewhat magic numbers 12.832 and -16.832 in @fig:two were not drawn out of thin air, but are the result of simple calculations. It should be clear that the straight lines in @fig:two all have a gradient of $-1$ and that when they are tangent to---or just touching---the given curve $x + xy + y = 54$, that curve should also have a gradient of $-1$ at the point of contact, or [osculation](https://en.wikipedia.org/wiki/Osculating_curve).

Rewriting the given equation as @eq:hyperbola, we want the derivative $\frac{\mathrm{d}y}{\mathrm{d}x}$. This is accomplished with little effort or thinking, by going to [Wolfram Alpha](https://www.wolframalpha.com) and asking the engine to [compute the derivative](https://www.wolframalpha.com/calculators/derivative-calculator/) so:
$$
\frac{\mathrm{d}y}{\mathrm{d}x} = \frac{\mathrm{d}}{\mathrm{d}x}\left[\frac{54 - x}{x + 1}\right] = -\frac{55}{(x + 1)^2}
$$

The points at which the gradient is $-1$ will be those satisfying
$$
\begin{aligned}
-\frac{55}{(x+1)^2} &= -1 \; \mbox{which gives}\\
x &= \pm\sqrt{55} - 1 \; \mbox{i.e.,}\\
x &\approx 6.416 \;\mbox{and}\; -8.416
\end{aligned}
$$
The corresponding $y$ values may be deduced from symmetry, or calculated from @eq:hyperbola, to be 6.416, and -8.416 respectively. The two tangents therefore touch the given curve at (6.416, 6.416) and (-8.416, -8.416) and that is why those two tangents that define the solution space were selected for @fig:two. Note that the tangents obey $x + y = k$ and the two values of $k$ are $6.416 + 6.416 = 12.832$ and $-8.416 + (-8.416) = -16.832$.

Therefore all lines with $x + y \geq 12.832$ and $x + y \leq -16.832$ will intersect the given curve and constitute the solution set for the problem as originally stated.

## Acknowledgements

The [Desmos webiste](https://www.desmos.com/) is a boon to both teachers and students of mathematics, not to mention digital artists. Surf [YouTube](desmos) and the rest of the Web to know the full extent of the largess available. My thanks to Desmos.

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./olympiad-problem.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/olympiad-problem.pdf>
:::
