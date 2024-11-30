---
title: "Machin-like formulae"
author: "R (Chandra) Chandrasekhar"
date: 2024-11-30
modified: 2024-07-25
category: Mathematics
tags: pi
summary: 
opengraphimage: 
status: draft
---



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
Note in [@eq:arctan] that we have an irrational angle $\frac{\pi}{4}$ giving rise to the rational tangent $1$. The other commonly known tangents have both angles and values as irrational. This is why the angle $\frac{\pi}{4}$ is so special in algorithms involving arctangents.

It is my suspicion that the the prefix _arc_ is applied to the tangent to denote the arc or angle corresponding to a tangent. Recall that the angle in radians is proportional to arc length: $\theta = \frac{s}{r}$ where $\theta$ is the angle, $s$ the length of arc subtending the angle, and $r$ the radius.^[See ["A tale of two measures: degrees and radians"](https://swanlotus.netlify.app/blogs/a-tale-of-two-measures-degrees-and-radians).]

In formulae for computing $\pi$ efficiently and accurately, mathematicians have been on the lookout for _linear combinations of rational arctangents that sum to a multiple of $\frac{\pi}{4}$_. Once this guiding principle has been grasped, we will be better equipped to assess different formulae that have been developed for evaluating $\pi$ better, especially those based on $\arctan$.

### Rational points on the unit circles


### Rational fractions of π


### How to choose the intersection set?



## Sums of angles

The $\arctan$ function in [@eq:madgregleib] holds the key to a more solid understanding of what is happening in infinite series involving $\pi$. The expression $\arctan 1$ refers to the _angle_ whose tangent is $1$, with the implicit understanding that the angle lies in the interval $[-\frac{\pi}{2}, \frac{\pi}{2}]$.

The next great breakthrough occurred when the single angle $\arctan 1$ could be split into sums or differences of other angles. You might think that adding more terms to the computation would increase computation time and lower accuracy. But if the sum is _judicously contrived_ with numbers that are either large and whose terms decay rather fast, or whose powers are easily computed, then accurate and speedy computation by hand become feasible. And the whole subject of _Machin-like_ formulae--the Holy Grail---of the [Pi-Chasers]() is simply the quest for parsimony in calculation coupled with accuracy in result.

And it all amounts to splitting an angle, $\frac{\pi}{4}$ to be precise, into smaller fragments to our advantage.


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


