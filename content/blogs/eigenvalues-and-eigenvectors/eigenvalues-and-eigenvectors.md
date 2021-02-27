---
title: Eigenvalues and Eigenvectors---Why are they important?
author: R (Chandra) Chandrasekhar
date: 2015-12-13
modified: 2020-12-01
category: Mathematics
tags: eigenvalues, eigenvectors, linear algebra, invariants, diagonalization, applied mathematics, Mathematical Musings
summary: "A university academic friend of mine recently remarked that it was not easy to motivate students to study [eigenvalues and eigenvectors,][lambda] let alone appreciate their importance: the subject itself was abstract, and the applications tended to be domain-specific and somewhat arcane."
opengraphimage: "eigenvalue-equation.png"
---

## Stimulating interest in an arcane topic

A university academic friend of mine recently remarked that it was not easy to motivate students to study [eigenvalues and eigenvectors,][lambda] let alone appreciate their importance: the subject itself was abstract, and the applications tended to be domain-specific and somewhat arcane.

[lambda]: https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors

A cursory Web search turned up results that confirmed his assertions and concerns. There have been [pro][pro] and [con][con] views about motivating students to learn about eigenvalues and eigenvectors, and especially to convey [intuitively][intuitively] their [importance][importance].

[pro]: http://matheducators.stackexchange.com/questions/520/what-is-a-good-motivation-showcase-for-a-student-for-the-study-of-eigenvalues
[con]: http://matheducators.stackexchange.com/questions/8586/too-much-motivation
[intuitively]: http://matheducators.stackexchange.com/questions/3983/what-is-the-best-way-to-intuitively-explain-what-eigenvectors-and-eigenvalues-ar
[importance]: http://math.stackexchange.com/questions/23312/what-is-the-importance-of-eigenvalues-eigenvectors

I then asked, "Can I explain to _myself_ what eigenvalues and eigenvectors are, and why they are important?". It also occurred to me that the harried and hurried students of today might derive some benefit from my efforts; hence this blog. It is a brief, largely qualitative, and mathematically non-rigorous article on eigenvalues and eigenvectors that aims to provide meaning and motivation for their study. Corrections and suggestions for improvement are most welcome. \emojifont :slightly_smiling_face: \normalfont

## Eigenvalues and eigenvectors

 As a general rule, the more powerful an idea, the more prevalent it becomes. Think about words and numbers, and you will see what I mean.

Eigenvalues and eigenvectors are one such powerful idea. It is no surprise that they appear in different guises in different contexts: in oscillating electronic circuits, in dynamical systems, in computer games, in the spectra of atoms, and in Google searches, to name just a few.

![]({attach}images/eigenvalue-equation.png){width=50%}

The word [_eigen_ ][eigen] is German in origin and means "inherent, characteristic, natural, own, or peculiar (to)". So the prefix "eigen" captures the natural essence of the noun it qualifies. Perhaps the word "idiosyncratic" comes closest to conveying its import.

[eigen]: https://en.wikipedia.org/wiki/Talk:Eigenvector

## Matrices

Eigenvalues and eigenvectors are associated traditionally with [ _matrices_][matrices].  If numbers are like tea-leaves, matrices are like tea-bags. They are rectangular arrays of numbers, whether real or complex, that have been hijacked by mathematicians to serve as a shorthand in a variety of contexts. What they mean depends on context and level of abstraction. They can represent geometric transformations in Euclidean space, or systems of linear equations, or systems of linear differential equations with constant coefficients, or linear transformations in vector spaces. Note the recurrence of the word _linear_ here.

[matrices]: https://en.wikipedia.org/wiki/Matrix_%28mathematics%29

## Invariance and identity elements

[Invariance][invariant] is a central concept in mathematics and physics. Adding zero to a number leaves it unchanged. Multiplying a number by one again leaves it unchanged. And zero and one are important numbers, usually called the _additive_ and _multiplicative identity elements_ respectively. Consider now the matrix equivalent of multiplying by $1$, an example of which is:
$$
\begin{bmatrix}1 & 0\\0 & 1\end{bmatrix}\begin{bmatrix}v_{1}\\v_{2}\end{bmatrix}
= 1\begin{bmatrix}v_{1}\\v_{2}\end{bmatrix} = \begin{bmatrix}v_{1}\\v_{2}\end{bmatrix}
$${#eq:identity}

[invariant]: http://mathworld.wolfram.com/Invariant.html

The $2 \times 2$ matrix on the extreme left of +@eq:identity is the _identity matrix_ of dimension $2$, analogous to the multiplicative identity. We could write this equation more succinctly as:
$$
I\boldsymbol{v} = 1\boldsymbol{v}
$$ {#eq:succinct}
$I$, on the left, is the _identity matrix_, the number $1$ on the right is called an _eigenvalue_ and the vector $\boldsymbol{v}$ is called an _eigenvector_. Note that there are no strictures on $\boldsymbol{v}$. So, in this particular case, _all_ vectors $\boldsymbol{v}$ are eigenvectors but there is only _one_ eigenvalue, namely $1$. This example, however, is both unusual and contrived, because the identity matrix is a _special_ type of _square matrix_ with ones on its principal diagonal and zeros elsewhere.

*@eq:succinct is a particular case of the general equation for eigenvalues and eigenvectors, which is written:
$$
M\boldsymbol{v} = \lambda \boldsymbol{v}
$$ {#eq:eigen}
where $M$ is a _general square matrix_, ${\lambda}$ is a _real or complex scalar_ called an _eigenvalue_, and $\boldsymbol{v}$ is a _non-zero vector_ called an _eigenvector_. The matrix $M$ is assigned meaning according to context. Geometrically, the _orientation_ of the vector $\boldsymbol{v}$ is unchanged by the transformation $M$, although if $\lambda$ is negative, the direction is reversed. Specifically, the eigenvector corresponding to an eigenvalue of $1$ remains unchanged by the transformation---an example of invariance.

## Calculus

The operation of taking a derivative may be denoted by the _differential operator,_ $D$. We know that
$$
\frac{d}{dt}e^{t} = D(e^{t}) = e^{t}
$$
and further that
$$
\frac{d}{dt}e^{st} = D(e^{st}) = se^{st}
$$
where $s$ is a scalar and $t$ is the independent variable, usually time. Although $D$ is not a matrix here, it is nevertheless a linear transformation that operates on _functions._ And in place of a vector, we have a function, $e^{st}$, which is therefore called an _eigenfunction_ of the differential operator, with eigenvalue $s$. The importance of the complex exponentials in signal and system analysis cannot be over-emphasized: just recall the [Laplace][laplace] and [Fourier][fourier] transforms.

[laplace]: https://en.wikipedia.org/wiki/Laplace_transform
[fourier]: https://en.wikipedia.org/wiki/Fourier_transform

## Differential Equations

Linear homogeneous _differential equations_ with constant coefficients may be written using the $D$ notation already introduced. A second order homogeneous equation with independent variable $t$ and dependent variable $y$ may be written as $a_2D^2(y) + a_1D(y) + a_0(y) = 0$. Plugging in a solution of the form $y = e^{st}$, we get $(a_2s^2 + a_1s + a_0)e^{st} = 0.$ Since $e^{st}$ can never be zero, we may divide by it to get the _characteristic polynomial_
$$
a_2s^2 + a_1s + a_0 = 0.
$$ {#eq:cp}

The _roots_ of this characteristic polynomial give us the
eigenvalues of the system. Perhaps, the prefix "eigen" came to be used because of the adjective "characteristic".

These ideas masquerade under different terminology in linear system and control theory where [transfer function][transfer], [poles and zeros][pole-zero], [natural frequency and resonance][natural], and [stability][stability] are encountered.

[transfer]: https://en.wikipedia.org/wiki/Transfer_function
[pole-zero]: http://web.mit.edu/2.14/www/Handouts/PoleZero.pdf
[natural]: https://www.youtube.com/watch?v=hcXbyS2Cf2o
[stability]: https://en.wikibooks.org/wiki/Control_Systems/Stability

## Characteristic polynomial of a square matrix

The characteristic polynomial of a square matrix is obtained likewise. The equation $M\boldsymbol{v} = \lambda \boldsymbol{v}$ may be re-written as $(M -\lambda I)\boldsymbol{v}=\boldsymbol{0}$, where the right hand side is the _zero vector_. Since the eigenvector $\boldsymbol{v}$ is non-zero, this implies that the matrix $(M -\lambda I)$ is [singular][singular] or non-invertible, which in turn implies that its [determinant][determinant] is zero. So, the characteristic polynomial is the equation
$$\det(M - \lambda I) = 0
$$ {#eq:cp-matrix}
and its roots are the eigenvalues of $M$. The determinant of a square matrix is a _number_ associated with it, obtained by adding and subtracting products of its elements in a specific order.

[singular]: https://en.wikipedia.org/wiki/Invertible_matrix
[determinant]: https://en.wikipedia.org/wiki/Determinant

## Linear transformations and vector spaces

A [vector space][vector-space] is a powerful mathematical abstraction that allows us to unify many disparate branches of mathematics under a uniform taxonomy. [Linear transformations][linear-trans] are a particular type of mapping between two vector spaces over a scalar field, satisfying:
$$
\begin{aligned}
T(\boldsymbol{u} + \boldsymbol{v}) &= T(\boldsymbol{u}) + T(\boldsymbol{v})\\
T(\alpha\boldsymbol{u}) &= \alpha T(\boldsymbol{u})\\
\end{aligned}
$$ {#eq:linear}
where $T$ is the transformation, $\boldsymbol{u}$ and $\boldsymbol{v}$ are two vectors, and $\alpha$ is a scalar.

[vector-space]: https://en.wikipedia.org/wiki/Vector_space
[linear-trans]: http://mathworld.wolfram.com/LinearTransformation.html

$T$ may be represented by a matrix, and under certain conditions, its eigenvalues and eigenvectors can characterize the transformation _completely._ This happens when (a) all the eigenvectors are _linearly independent,_ i.e., no two eigenvectors are parallel, and (b) when they _span_ the vector space, i.e., any vector within the space can be constructed from a linear combination of the eigenvectors. The eigenvectors are then said to form a [_basis_][basis] for the space.

[basis]: https://en.wikipedia.org/wiki/Basis_%28linear_algebra%29

As a case in point, let us say $T$ is a $3 \times 3$ matrix whose eigenvectors $\boldsymbol{e_{1}}$, $\boldsymbol{e_{2}}$, and $\boldsymbol{e_{3}}$ are linearly independent and form a basis. Then, if $\boldsymbol{v} = \alpha_{1}\boldsymbol{e_{1}} + \alpha_{2}\boldsymbol{e_{2}} + \alpha_{3}\boldsymbol{e_{3}}$, where the $\alpha_{i}$s are scalars, by virtue of the fact that $T$ is a linear transformation, we have
$$
\begin{aligned}
T(\boldsymbol{v}) & = T(\alpha_{1}\boldsymbol{e_{1}} + \alpha_{2}\boldsymbol{e_{2}} + \alpha_{3}\boldsymbol{e_{3}})\\
& = T(\alpha_{1}\boldsymbol{e_{1}}) + T(\alpha_{2}\boldsymbol{e_{2}}) + T(\alpha_{3}\boldsymbol{e_{3}})\\
& = \alpha_{1}T(\boldsymbol{e_{1}}) + \alpha_{2}T(\boldsymbol{e_{2}}) + \alpha_{3}T(\boldsymbol{e_{3}})\\
& = \alpha_{1}\lambda{_1}\boldsymbol{e_{1}} + \alpha_{2}\lambda_{2}\boldsymbol{e_{2}} + \alpha_{3}\lambda_{3}\boldsymbol{e_{3}}
\end{aligned}
$$
Notice how the right hand side is now expressed _purely as a sum of scaled eigenvectors._ This is the essence of why eigenvalues and eigenvectors are so important: they are _sufficient_ to describe what is taking place. _Eigenvalues and eigenvectors encode the transformation succinctly, just as DNA encodes biological information._

If, in addition, $T$ is [_symmetric_][symmetric], its eigenvectors form an [_orthonormal basis_][orthonormal]. Such basis vectors confer *parsimony* (think low bandwidth) when images or audio signals need to be deconstructed for transmission and reconstructed on reception. Eigenvectors are also useful in techniques like [_principal component analysis_][pca] which is used in statistical pattern recognition.

[symmetric]: https://en.wikipedia.org/wiki/Symmetry_in_mathematics
[pca]: https://en.wikipedia.org/wiki/Principal_component_analysis
[orthonormal]: https://en.wikipedia.org/wiki/Orthonormality

The applications of eigenvalues and eigenvectors in linear algebra run far and deep. Suffice it here to merely mention that an extension, fortuitously called [_spectral theory,_][spectral-theory] even explains the observed spectra of atoms in quantum theory!

[spectral-theory]: https://en.wikipedia.org/wiki/Spectral_theory

<!--In this section I have given some links to reference material that is freely available online. As with everything on the Web, please check for quality and accuracy before accepting something as correct.-->

### A property of eigenvectors

I will here belabour a point that might seem blindingly obvious to some but frustratingly obscure to others. Let $\boldsymbol{v}$ be an eigenvector associated with a distinct eigenvalue $\lambda$ as in +@eq:eigen, and let $k$ be a non-zero scalar. Then, using the second of the equation-pair +@eq:linear, we have
$$
M(k\boldsymbol{v}) = k(M\boldsymbol{v}) = k(\lambda\boldsymbol{v}) = \lambda(k\boldsymbol{v}),
$$ {#eq:scaled-eigenvector}
 which means that if $\boldsymbol{v}$ is an eigenvector, any non-zero scalar multiple of $\boldsymbol{v}$ is also an eigenvector for that same eigenvalue. So, strictly speaking, we really should be referring to _an_ eigenvector---rather than _the_ eigenevctor---corresponding to any given eigenvalue.

## Worked example

A worked example would normally have made its way here at this point in the article. But because the example is long and might not interest everyone, I have relegated it to the end of the article. Stay tuned if you are enthused.

## Resources

I hope that this article has not been so brief as to be cryptic and off-putting. To those in search of greater rigour or a more formal exposition, I would recommend a good linear algebra textbook. The venerable tome that I used at university went by the acronym "KKOP" after the initials of the surnames of the four authors^[Kreider, Kuller, Ostberg, and Perkins.]. Fortunately, it is freely available online in a variety of formats, and its actual title is [_An Introduction to Linear Analysis_][kkop] [@kkop1966].

[kkop]: https://archive.org/details/AnIntroductionToLinearAnalysis

For something more contemporary, I would recommend the textbooks and lectures of Professor Gilbert Strang of MIT. They are attuned to those who _apply_ mathematics, like engineers and scientists. There is an [archived video of his lecture on eigenvalues and eigenvectors.][strang-eigen-video] There are also links to [his MIT Open Course Ware (OCW) page for Course 18.06 of Spring 2010][strang-ocw-mit], [his linear algebra textbook home page][strang-latext] [@strang2016], and [his academic home page.][strang-academic]

[strang-eigen-video]: https://archive.org/details/MIT18.06S05_MP4
[strang-ocw-mit]: http://ocw.mit.edu/courses/mathematics/18-06-linear-algebra-spring-2010/
[strang-latext]: http://math.mit.edu/~gs/linearalgebra/
[strang-academic]: http://www-math.mit.edu/~gs/

Many academics make their lecture notes freely available online: [google][google] for them. [You Tube][you-tube] videos of lectures are another source of information and knowledge, which offer the immediacy of a classroom lecture with the convenience of instant rewind in case you need to catch something you missed.

[google]: https://www.google.com/
[you-tube]: https://www.youtube.com/

Online forums offer a slightly more interactive learning experience but again, their depth and quality varies. The [Mathematics StackExchange][maths-SE] and [Quora][quora] are two sites that you might explore.

[maths-SE]: http://math.stackexchange.com/
[quora]: https://www.quora.com/
<!--[aops]: http://artofproblemsolving.com/-->

Examples of all the above types of resources have been tucked away within the various links in this article: try them out to get a flavour of what is available.

## Importance and applications

If, after all this, you are still unconvinced about the utility of eigenvalues and eigenvectors, think of this analogy. Crystals have natural [_cleavage planes_][cleavage]  that allow them to be fractured easily along specific directions. This exploits the _symmetry_ in the crystals. Likewise, eigenvalues and eigenvectors exploit the naturally occurring symmetries of mathematical structures and transformations to allow us to view them more simply and insightfully. Without eigenvalues and eigenvectors, we would have neither radios nor lasers.

[cleavage]: https://en.wikipedia.org/wiki/Cleavage_%28crystal%29

To get an idea of the broad sweep of eigenvalues and their applicability, I strongly recommend that you should read a charming article entitled ["Favourite Eigenvalue Problems".][favourite] Another article that takes a breezy look at the subject of this writeup is ["What the Heck are Eigenvalues and Eigenvectors?".][heck] It has a disputed explanation (see comments on the article) of how a bridge collapsed---so take that [_cum grano salis_](https://www.thefreedictionary.com/cum+grano+salis). It also contains a link to a PDF paper interestingly entitled ["The 25,000,000,000.00 Dollar Eigenvector: The Linear Algebra Behind Google",][google-eigen] which, in good faith, I think is not a spoof! Indeed, the [citation to the original Stanford InfoLab technical report][citation] and the [actual report][report] are both available online.

[favourite]: http://people.maths.ox.ac.uk/trefethen/dec11.pdf
[heck]: http://hubpages.com/education/What-the-Heck-are-Eigenvalues-and-Eigenvectors
[google-eigen]: http://www.rose-hulman.edu/~bryan/googleFinalVersionFixed.pdf
[citation]: http://ilpubs.stanford.edu:8090/422/
[report]: http://ilpubs.stanford.edu:8090/422/1/1999-66.pdf

## Worked example: modelling weather with a transition matrix

Now for the promised example of eigenvalues at work---in a simplified real-life situation, modelling the weather. Let us assume that yesterday's weather influences the _probability_ of today's weather, and today's weather influences the _probability_ of tomorrow's weather. Each day's weather depends only on the previous day's weather, i.e., the weather has a "memory" of one day.

To keep it simple, let us have only three weather states: sunny, cloudy, and rainy, with the stipulation that each day can only be _one_ of these three. Further, in our matrix, let the ordering be sunny, cloudy, and rainy, both left to right, and top to bottom. Then, the column headings represent _today's weather_ and the row headings represent _tomorrow's  weather._  We then have the [_state-transition matrix_][transition] or _Markov matrix_ $M$ given in +@eq:state:
$$
M = \begin{bmatrix}
0.65 & 0.30 & 0.10\\
0.25 & 0.45 & 0.40\\
0.10 & 0.25 & 0.50
\end{bmatrix}
$$ {#eq:state}

[transition]: https://en.wikipedia.org/wiki/Stochastic_matrix

Note that each _column_ of $M$ represents the probabilities of [_mutually exclusive_][mutually-exclusive] events, which must therefore sum to one. The matrix element $m_{ij}$ is the probability that today's weather is in column $j$ and that tomorrow's weather is in row $i$. For example, The probability of today being rainy and tomorrow cloudy is given by $m_{23} = 0.40$.

[mutually-exclusive]: https://en.wikipedia.org/wiki/Mutual_exclusivity

Let the column-vector $\boldsymbol{w}_{k}$ represent the probabilities for a particular day's weather and the column-vector $\boldsymbol{ w}_{k+1}$, the next day's weather. The two are then related by:
$$
\boldsymbol{w}_{k+1} = M\boldsymbol{w}_{k}
$$ {#eq:recurrence}
*@eq:recurrence) is called a [_recurrence relation_][recurrence] or _difference equation_, and in our case, it represents the evolution of a dynamical system in time, namely the weather. Just for completeness, let the initial condition be given by:
$$
\boldsymbol{w}_{0} = \begin{bmatrix}0.55\\0.34\\0.11\end{bmatrix}
$$ {#eq:initial}

[recurrence]: https://en.wikipedia.org/wiki/Recurrence_relation

We want to know whether, for this model, there will be an equilibrium or steady-state in the weather, represented by a probability vector with values that remain steady with temporal evolution. The question is how do we find that out?

One obvious way is to compute the downstream weather one day at a time: think of forging a chain one link at a time because the weather has a memory of only one day. From +@eq:recurrence we can compute the following:
$$
\begin{aligned}
\boldsymbol{w}_{1} &= M\boldsymbol {w}_{0}\\
&= \begin{bmatrix}0.47050\\ 0.33450\\0.19500\end{bmatrix}\\
\boldsymbol{w}_{2} &= M\boldsymbol{w}_{1}\\
&= M(M\boldsymbol{w}_{0})\\
&= M^{2}\boldsymbol{w}_{0}\\
&= \begin{bmatrix}0.42568\\0.34615\\0.228180\\\end{bmatrix}
\end{aligned}
$$

By induction, the weather vector $n$ days downstream is given by
$$
\boldsymbol{w}_{n} = M^{n}\boldsymbol{w}_{0}.
$$ {#eq:Mn}

In this manner, we can trace the time evolution of the weather and, if desired, draw a three-dimensional parametric plot of the successive weather vectors in $\mathbb{R}^{3}$ with time as parameter. This could be insightful, but it is a laborious and time-consuming way to find out the steady-state weather vector if there is one. Could we do better?

A rough and ready method would be to evaluate +@eq:Mn with $n$ set to large numbers, say $50$ and $100$, and check if the resulting weather vectors, $\boldsymbol{w}_{50}$ and $\boldsymbol{w}_{100}$ were equal. If they were, we might hazard a guess that this unchanging value is the steady-state weather vector.

But computing the fiftieth or one-hunderdth power of a matrix is tedious and error-prone if done by hand, and computationally expensive if done by machine, especially if the matrix in question is large.

To devise a better solution, we need to digress briefly to examine diagonal matrices and the  diagonalization of square matrices.

### Diagonal matrix raised to a power

Suppose that $D$ is a $3 \times 3$ diagonal matrix with non-zero entries on its principal diagonal and zeros elsewhere:
$$
D = \begin{bmatrix}
\lambda_{1} & 0 & 0\\
0 & \lambda_{2} & 0\\
0 & 0 & \lambda_{3}
\end{bmatrix}.
$$

Observe that:
$$
D^{n} = \begin{bmatrix}
\lambda_{1}^{n}& 0 & 0\\
0 & \lambda_{2} ^{n}& 0\\
0 & 0 & \lambda_{3}^{n}
\end{bmatrix}.
$$ {#eq:D-to-the-n}

If we could somehow decompose $M$ into a matrix product where a diagonal matrix was featured, we might be able to circumvent the matrix-raised-to-a large-power problem.

### Matrix diagonalization or eigen decomposition

We need to [_diagonalize_][diagonalize] the transition matrix---a procedure called [_eigen decomposition._][eigen-decomp] A square matrix with non-repeating eigenvalues and therefore, linearly independent eigenvectors, can be diagonalized. We demonstrate how this is done for the $3 \times 3$ case below.

[diagonalize]: http://mathworld.wolfram.com/MatrixDiagonalization.html
[eigen-decomp]: http://mathworld.wolfram.com/EigenDecomposition.html

Let the three eigenvectors be so denoted:
$$
\boldsymbol{e}_{k} = \begin{bmatrix}
e_{k1}\\
e_{k2}\\
e_{k3}
\end{bmatrix} ; k = 1, 2, 3.
$$
The matrix $P$ whose _columns_ are the eigenvectors is therefore
$$
P = \begin{bmatrix}
e_{11} & e_{21} & e_{31}\\
e_{12} & e_{22} & e_{32}\\
e_{13} & e_{23} & e_{33}
\end{bmatrix}
= \begin{bmatrix}
\boldsymbol{e}_{1} & \boldsymbol{e}_{2} & \boldsymbol{e}_{3}\\
\end{bmatrix}
$$
Now,
$$
\begin{aligned}
MP &= M\begin{bmatrix}
\boldsymbol{e}_{1} & \boldsymbol{e}_{2} & \boldsymbol{e}_{3}
\end{bmatrix}\\
&= \begin{bmatrix}
M\boldsymbol{e}_{1} & M\boldsymbol{e}_{2} & M\boldsymbol{e}_{3}
\end{bmatrix}\\
&= \begin{bmatrix}
\lambda_{1}\boldsymbol{e}_{1} & \lambda_{2}\boldsymbol{e}_{2} & \lambda_{3}\boldsymbol{e}_{3}
\end{bmatrix}\\
&= \begin{bmatrix}
e_{11} & e_{21} & e_{31}\\
e_{12} & e_{22} & e_{32}\\
e_{13} & e_{23} & e_{33}
\end{bmatrix}
\begin{bmatrix}
\lambda_{1} & 0 & 0\\
0 & \lambda_{2} & 0\\
0 & 0 & \lambda_{3}
\end{bmatrix}\\
&= PD
\end{aligned}
$$ {#eq:diag1}
To get only $M$ on the left-hand side of +@eq:diag1, we post-multiply both sides by $P^{-1}$, the inverse of $P$:
$$
MPP^{-1} = MI = M = PDP^{-1}
$$ {#eq:eigendecomp}
If we now square $M$, we get
$$
\begin{aligned}
M^{2} &= (PDP^{-1})(PDP^{-1})\\
&= PD(P^{-1}P)DP^{-1}\\
&= P(DID)P^{-1}\\
&= PD^{2}P^{-1}
\end{aligned}
$$ {#eq:D-squared}

By induction,
$$
M^{n} = PD^{n}P^{-1}
$$ {#eq:M-to-the-n}
The role of eigenvalues and eigenvectors in the plot of raising a square matrix to a power is now fully revealed: recall that in +@eq:M-to-the-n, $P$ is the matrix whose columns are the  eigenvectors, and $D$ is the diagonal matrix whose non-zero elements are the corresponding eigenvalues, and $P^{-1}$ is the inverse of $P$.

## Software Implementation

To get numerical results, I initially tried implementing the above steps with the free open-source mathematics software system [SageMath,][sagemath] but found it less than convenient for my purpose.

I then experimented with [GNU Octave,][octave] which is a free, platform-neutral, open source, high-level interpreted language, primarily intended for numerical computations. It was better suited to the task at hand, and I easily obtained the results discussed below.

[sagemath]: http://www.sagemath.org/
[octave]: https://www.gnu.org/software/octave/

The self-explanatory file, [`weather.m`]({attach}auxiliary/weather.m), may be downloaded and executed on the command line in the Octave command window. The discussion below will make better sense after you have thus executed the file `weather.m`. Instructions on how to download and set up Octave are given [here](https://www.gnu.org/software/octave/download).

## Discussion of results from `weather.m`

The roots of the characteristic polynomial of $M$ are first evaluated, and compared to the eigenvalues and eigenvectors obtained from an Octave function designed for that explicit purpose.

There are _three_ distinct eigenvalues for the transition matrix, $M$. Moreover, [it may be proved][proof] that $1$ is an eigenvalue of any transition matrix. The eigenvalues we get are:
$$
\begin{aligned}
\lambda_{1} &= 1.00000\\
\lambda_{2} &= 0.48028\\
\lambda_{3} &= 0.11972
\end{aligned}
$$

[proof]: http://www.math.cornell.edu/~mec/Winter2009/RalucaRemus/Lecture1/lecture1.html

From +@eq:M-to-the-n we may surmise that the contributions from $\lambda_{2}$ and $\lambda_{3}$, being both less than one, will diminish progressively as $n$ increases, and in the limit, only the eigenvalue $1$ will dominate the steady-state behaviour.

The eigenvectors associated respectively with these eigenvalues, as spewed out by Octave, are:
$$
\boldsymbol{e}_{1} = \begin{bmatrix}
-0.65375\\
-0.61639\\
-0.43895\\
\end{bmatrix}
\quad
\boldsymbol{e}_{2} = \begin{bmatrix}
-0.80430\\
0.28039\\
0.52391\\
\end{bmatrix}
\quad
\boldsymbol{e}_{3} = \begin{bmatrix}
0.37921\\
-0.81582\\
0.43662\\
\end{bmatrix}
$$

None of the column sums of these eigenvectors sums to one. Indeed, the column sums of $\boldsymbol{e}_{2}$ and $\boldsymbol{e}_{3}$ are close to zero, whereas the column sum of $\boldsymbol{e}_{1}$ is negative. We will return to the eigenvector $\boldsymbol{e}_{1}$, to wrest meaning out of it, a little later. In any case, we confirm that $M\boldsymbol{e}_{1} = \boldsymbol{e}_{1}$.

Assembling the matrices $P$ and $P^{-1}$ from the eigenvectors is trivial, as is putting together $D$ as the diagonal matrix of the corresponding eigenvalues. With these numerical values, the truth of +@eq:eigendecomp is also easily demonstrated.

The time evolution of the initial weather vector is then tracked with 1, 10, 20, 50, and 100 iterations of +@eq:recurrence. In this case, the weather vector stabilizes after about twenty iterations to a steady-state vector, $\boldsymbol{w}_{\infty}$,
given by
$$
\boldsymbol{w}_{\infty} = \begin{bmatrix}
0.38251\\
0.36066\\
0.25683\\
\end{bmatrix}
$$ {#eq:steady-state}

When we track the same temporal evolution for eigenvector $\boldsymbol{e}_{1}$, the result after each iteration is $\boldsymbol{e}_{1}$ itself. This is the expected behaviour for an eigenvector associated with an eigenvalue of $1$.

What may be disconcerting, though, is that we now seem to have _two_ steady-state vectors, $\boldsymbol{w}_{\infty}$ and $\boldsymbol{e}_{1}$.

Observe, however, that $\boldsymbol{e}_{1}$ is not a probability vector whose columns sum to one. To convert it to a probability vector, we _normalize_ $\boldsymbol{e}_{1}$ by dividing it by its column sum, to get the _normalized eigenvector:_
$$
\boldsymbol{n}_{1} = \begin{bmatrix}
0.38251\\
0.36066\\
0.25683\\
\end{bmatrix}
$$ {#eq:normalized-eigenvector-1}

Lo and behold! $\boldsymbol{n}_{1}$ and $\boldsymbol{w}_{\infty}$ are one and the same, and all is well. Recalling from +@eq:scaled-eigenvector that non-zero scalar multiples of eigenvectors are also eigenvectors themselves, this result, even if a little magical, really should not surprise us.

We do not bother normalizing the eigenvectors associated with $\lambda_{2}$ and $\lambda_{3}$ because their column sums almost vanish, and moreover, their contribution to the steady state decreases with increasing number of iterations.

To round things off, we substitute a random initial weather vector in place of $\boldsymbol{w}_{0}$, and view its evolution over time for twenty iterations, and find that it too converges to the steady-state weather vector after about 15 iterations.

This means that regardless of what initial weather vector we start with, in about two weeks we will end up with a vector that represents the steady-state.

Observations like these suggest that our inferences are only as good as our assumptions and models. Oversimplification could lead to absurd results, and weather prediction over time is a seriously non-trivial problem.

One general hypothesis that we could examine is whether it is generally true that the normalized eigenvector associated with an eigenvalue of $1$ does indeed represent the steady state of the system represented by any transition matrix. If so, we would have a theorem on our hands.

#### Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here.]({attach}./eigenvalues-and-eigenvectors.pdf)

\noindent{\small Copyright © 2006 – 2021, R (Chandra) Chandrasekhar}
