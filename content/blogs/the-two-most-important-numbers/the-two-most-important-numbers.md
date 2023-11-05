---
title: "The Two Most Important Numbers: Zero and One"
author: R (Chandra) Chandrasekhar
date: 2023-10-31
modified: 2023-11-01
category: Mathematics
tags: Mathematical Musings
summary: 'The unique properties of the numbers zero and one make them mathematically interesting and indispensable. In this slow-paced stroll though the ideas streaming out of these two numbers, we uncover well-known as well as relatively obscure facts about them. It is hoped that in the process we may discover how they cement together disparate areas of Mathematics.'
opengraphimage: 01-crop-3600-dpi-cairo.png
---

The unique properties of the numbers zero and one make them mathematically interesting and indispensable. In this slow-paced stroll though the ideas streaming out of these two numbers, we uncover well-known as well as relatively obscure facts about them. It is hoped that in the process we may discover how they cement together disparate areas of Mathematics.

## Starting at the beginning

At first, I thought I would skirt around the formal sets of numbers, and concepts like commutativity and associativity, and keep this blog very informal. But I found that each time I tried that approach, I would have to furtively sneak in a paragraph here, or a footnote there, to explain these ideas. In the end, I decided to start at the beginning, and work my way through the natural numbers, the integers, the rationals, etc., and [broach](https://www.thefreedictionary.com/broach) ideas like commutativity and associativity.

## Counting

Aeons ago, a shepherd with five sheep might have counted, "one sheep, two sheep, three sheep, four sheep, and five sheep." But wait! Since he did not have the names for numbers---nor indeed the abstract concept of a number---he could not have done that. So, what did he do? Let us speculate.

### Naming sheep

He could have given _unique_ names to each of his five sheep and developed enough familiarity with them to identify them by name. Then all he needed to do was to check that his entire flock was home by sundown. But such a method would have become cumbersome and error-prone as his sheep multiplied.

### One-to-one correspondence

The later, and more likely, alternative was to use stones to correspond to sheep. He could have taken a leather bag and dropped a stone in it---one for each sheep that he owned. He did not need to learn counting. All he needed to do was to establish a [one-to-one correspondence](https://www.encyclopedia.com/science/encyclopedias-almanacs-transcripts-and-maps/one-one-correspondence)^[One-to-one correspondence is a simple but extremely powerful idea which guided [Georg Cantor](https://www.britannica.com/science/one-to-one-correspondence) to develop his radical but consistent ideas about types of infinity.] between sheep and stone. As long as he had the right number of stones in his bag, he could account for each one of his sheep.

The Latin word for _stone_ is [calculus](https://www.etymonline.com/search?q=calculus), and from the stone has come the whole science of _calculation_.

## Measurement

When we _count_, as with sheep, where do we start? We start with one. We do not start with zero, because we cannot point to any sheep or other object and say "zero".

Nevertheless, zero has fundamental importance when we start _measuring_. When the petrol tank in a car is empty, we can fill it up and measure the volume of petrol for which we have to pay.

When we count, we start with $1$.

When we measure, we start with $0$.

## Sets of numbers

Although Mathematics has rigorous foundations, at the very bottom, its notions are not defined [explicitly](https://www.vocabulary.com/dictionary/explicitly). One such notion is that of a _set_, which is loosely defined as a collection of objects that can either be enumerated or described clearly. The _sets of numbers_ we will deal with have names, symbols, and definitions as shown below.

::: {.xsmall}
| Name | Symbol | Definition |
|:---------------------------|:-:|:-------------------------------------------------|
| Natural numbers | $\mathbb{N}$ | $\{1, 2, 3, 4, ...\}$ |
| Integers | $\mathbb{Z}$ | $\{... -3, -2, -1, 0, 1, 2, 3, ...\}$ |
| Rational numbers | $\mathbb{Q}$ | $\{x: x = \frac{p}{q} \mbox{ where } p, q \in \mathbb{Z} \mbox{ and } q \ne 0\}$ |
| Irrational numbers |  | $\{$The numbers which are not rational$\}$ |
| Real numbers | $\mathbb{R}$ | $\{$The rationals and the irrationals$\}$ |
| Complex numbers | $\mathbb{C}$ | $\{a+ib: a, b \in \mathbb{R} \mbox{ and } i^2 = -1\}$
: Sets of numbers {#tbl:sets}
:::
\
While it is premature to talk about these sets and their peculiarities in this blog, it is worth making some points about them.

#. The symbols in the second column are called [blackboard bold](https://oeis.org/wiki/Blackboard_bold) letters.

#. A set is traditionally enclosed in a pair of _braces_: $\{\}$.

#. Zero is neither positive nor negative. It is itself. As a set on its own, zero is often denoted $\{0\}$.

#. The numbers we use for counting, starting from $1$, and never ending, are---naurally enough---called the [_natural numbers_](https://mathworld.wolfram.com/NaturalNumber.html), denoted $\mathbb{N}$. There is [no agreement on whether or not to include zero](https://en.wikipedia.org/wiki/Natural_number) as a member of $\mathbb{N}$. I have chosen not to, because we start counting with one.

#. The [_integers_](https://en.wikipedia.org/wiki/Integer) are named $\mathbb{Z}$ after the German word _Zahlen_ which stands for "numbers" (singular _Zahl_). The integers include positive and negative whole numbers as well as zero.

#. The [_rational numbers_](https://mathworld.wolfram.com/RationalNumber.html) are so named because they are really _ratios_ of whole numbers with the proviso that the denominator cannot be zero. The symbol $\mathbb{Q}$ is used because it denotes _quotient_ the result of _division_.

#. There is no symbol for the [_irrationals_](https://mathworld.wolfram.com/IrrationalNumber.html), which are simply defined as numbers which are _not rational_. In fact, the set of irrationals may shown, using set notation only indirectly as $\mathbb{R}\setminus\mathbb{Q}$, which means the set of real numbers, excluding the rational numbers.

#. The [_real numbers_](https://en.wikipedia.org/wiki/Real_number), with symbol $\mathbb{R}$ for real, are glibly described as the union of the rational numbers and the irrational numbers.^[[Richard Dedekind](https://en.wikipedia.org/wiki/Richard_Dedekind) with his _Schnitt_ or cut, showed that the rationals and irrationals comprise $\mathbb{R}$, but that is [a story](https://arpita95b.medium.com/cutting-through-the-confusion-how-dedekind-cuts-build-the-real-numbers-20aeaaec021d) for another day and another blog.]

#.  The [_complex_ numbers](https://en.wikipedia.org/wiki/Complex_number) incorporate a non-real entity, called $i$ the _imaginary unit_, which is defined as $i^2 = -1$. Since every real number when squared is greater than or equal to zero, this $i$ is not a real number, and therefore demands its own symbol, arithmetic, and set, $\mathbb{C}$.

## Abstract Algebra

In the nineteenth century, mathematicians contemplated the then extant mathematical systems and recognized certain commonalities. Whether it was arithmetic or geometry, or some other branch of mathematics, they were able to distil certain underlying principles behind the common practices of mathematics. By systematizing and classifying what they observed, they were able to _invent_ names for the _classes of objects_ they discerned, along with their properties. Thus was born [abstract algebra](https://en.wikipedia.org/wiki/Abstract_algebra). The ideas of commutativity, associativity, the additive and multiplicative identities, and the additive and multiplicative inverses were born from this exercise in classification.

## The Four Arithmetic Operations

Each of the four basic arithmetic operations--addition, multiplication, subtraction, division---are [binary](https://en.wikipedia.org/w/index.php?title=Binary_operation&oldid=1182322931) operations and may _only_ be performed between _two_ numbers. The ability to _add_ multiple numbers---as in determining the total sum to be paid at the checkout counter while shopping---is made possible by the [commutativity](https://en.wikipedia.org/wiki/Commutative_property) and [associativity](https://en.wikipedia.org/wiki/Associative_property) of addition, which also applies to multiplication. Subtraction and division are neither commutative nor associative.^[For a start, subtraction is not commutative: $3 - 2 = 1 \ne -1 = 2 - 3$.]

### Commutativity and Associativity

Let us add three numbers, $2$, $3$, and $5$. It is common to write this as $2 + 3 + 5 = 10$. The sum $10$ is correct, but its correctness is derived from the commutativity and associativity of addition.

In commutativity, we have
$$
2 + 3 = 3 + 2.
$$ _The order of the two operands may be interchanged_.

In associativity, we have _three operands_. We use parentheses to denote the operation we perform first. It does not matter which pair we add first.
$$
(2 + 3) + 5 = 2 + (3 + 5).
$$
Together, commutativity and associativity allow us to be casual about the order in which  we add several numbers.

Multiplication is repeated addition. It is thus both commutative and associative. @fig:mult gives a geometric perspective of multiplication.

![The products $4\times3$ and $3\times4$ amount to repeated additions and yield the same result of 12.]({attach}images/four-by-three.png){#fig:mult width=60% .modal-target}

Talking about commutativity and associativity might seem like overkill for the addition and multiplication of real numbers. But, identifying these properties is a useful insight, as the more sophisticated mathematical objects we will encounter later may not obey either or both properties.

## The additive and multiplicative identities in $\mathbb{R}$

When zero is added to any real number, $a$, we get the original number $a$ back as the sum:
$$
a + 0 = 0 + a = a.
$${#eq:addident}
We call $0$ the _additive identity_ for $\mathbb{R}$.

Likewise, when we multiply $a$ by $1$, the original number is returned as the product:
$$
a \times 1 = 1 \times a = a
$${#eq:multident}
The number $1$ is called the _multiplicative identity_.

Zero and one enjoy their [coign of vantage](https://dictionary.cambridge.org/dictionary/english/coign-of-vantage) as the additive and multiplicative identities respectively for the real numbers in $\mathbb{R}$. But are their roles generalizable to cover a larger variety of mathematical objects?

Mathematics as a discipline tends to generalize and extend simple ideas to increasing levels of complexity, while at the same time maintaining consistency in definition and behaviour across these disparate domains. The additive and multiplicative identities may be so generalized, where applicable.

## Varieties of additive and multiplicative identities

The zero of the complex numbers is $0 + i(0) = 0$ as well. And adding it to any complex number returns the original complex number.

[Polynomials](https://mathworld.wolfram.com/Polynomial.html) are expressions like $x^2 + 3x + 1$ where $x$ is some real or complex variable. The zero polynomial is simply the constant polynomial $P(x) = 0$, and adding it to any polynomial again gives us back the original polynomial.

A [matrix](https://mathworld.wolfram.com/Matrix.html) is a rectangular array of numbers, treated as a single unit mathematically. I facetiously call matrices _numbers in teabags_. Operations on matrices follow their own definitions.

The matrix $\begin{bmatrix} 0 & 0\\0 & 0\end{bmatrix}$ is the additive identity for matrix addition for $2 \times 2$ matrices.

Let us consider an arbitrary $2 \times 2$ _square matrix_ like $\begin{bmatrix}a & b\\c & d\end{bmatrix}$. It has two horizontal rows and two vertical columns, and therefore 4 elements. The additive identity for this matrix is a $2 \times 2$ square matrix, all of whose entries are zero:
$$
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
+
\begin{bmatrix}
0 & 0\\
0 & 0
\end{bmatrix}
=
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
=
\begin{bmatrix}
0 & 0\\
0 & 0
\end{bmatrix}
+
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
$${#eq:addidmatrix}

The matrix $\begin{bmatrix}1 & 0\\0 & 1\end{bmatrix}$ is the multiplicative identity for matrix multiplication for $2 \times 2$ matrices.^[The rules of matrix multiplication are a little involved and will not detain us here. The interested reader is referred to another blog of mine for details.] Note that its elements are solely ones and zeroes, with ones on the -principal diagonal from top left to bottom right.
$$
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
\begin{bmatrix}
1 & 0\\
0 & 1
\end{bmatrix}
= %
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
=
\begin{bmatrix}
1 & 0\\
0 & 1
\end{bmatrix}
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
$${#eq:multidmatrix}

This is a simple example of how the seed ideas of the additive and multiplicative identities, sown far and wide, germinate into shoots that are surprisingly similar to the original ones. The numbers $0$ and $1$ do indeed rule the roost. Obviously, the identity matrices will change with the matrix sizes, but the principles remain the same.

## The additive and multiplicative inverses in $\mathbb{R}$

The negative integers arose from subtractions like $(3 - 5)$, whose result was not a positive integer, and therefore lay outside the confines of $\mathbb{N}$. $\mathbb{Z}$ and $\mathbb{R}$ both contain negative numbers and can therefore lay claim to an additive inverse. Simply put, the additive inverse of $a$ is the same number prefixed with a minus sign, having a value such that:
$$
a + (-a) = 0 = (-a) + a
$${#eq:addinv}
If you have heard of [particle and anti-particles annihilating each other in Science Fiction](), you can metaphorically think of $a$ and $-a$ as one such pair.


## The Arithmetic Four Revisited

## Addition

If we start with zero and add one to it, we get one. If we add one to that we get two. In this fashion, all the natural numbers may be generated successively by adding one. The _next number_ is called the _successor_. Even if we did not start with zero, but started with one, instead, we can still generate the entire set $\mathbb{N}$ by adding one successively. This method shows that there is no largest natural number. If there were such a number, say $p$, we could always add one to it and show the assumption to be false. In this sense, one helps us to understand infinity (of the countable variety).



## Subtraction

Subtracting zero from a number leaves it unchanged. Subtracting a larger natural number from a smaller one gives a negative number and this is the main reason for expanding the set $\mathbb{N}$ into the set $\mathbb{Z}$.

By convention, when a sign is not prefixed to a number, we assume it to be positive. If a negative sign is prefixed to a number, it is a negative number. This is indicated by a pair of parentheses---surrounding the number and its sign---in expressions. When the number is featured alone, these parentheses are dropped.

With signed numbers, we may convert any subtraction into an addition like this:
$$
3 - 5 = -2 = 3 + (-5) = (-5) + 3.
$${#eq:negnum}
In this way, we could convert subtractions into additions, and those additions would still be commutative. This does not mean that subtraction has suddenly become commutative; it has not. It simply means that subtraction can be morphed into the addition of signed numbers.

Every real number $a$ has an _additive inverse_, $a'$ such that:
$$
a + a' = a' + a = 0.
$$
Any guesses as to what $a'$ is? It is the signed number $a$ prefixed with a negative sign and written as $-a$, i.e., $a' = -a$. It is noteworthy, that when we subtract any real number from itself, we get zero, by the property of the additive inverse:
$$
a - a = a + (-a) = 0.
$${#eq:addinv}

## Multiplication

Multiplying any number by zero yields zero: $a \times 0 = 0 \times a = 0$. This might be a little difficult to grasp. To justify this assertion, let us try to multiply $5$ by $0$:
$$
5 \times 0 = 5 \times (2 - 2) = 5 \times (2 + (-2)) = 10 - 10 = 0.
$$
We could replace the number $2$ by the arbitrary $a \in \mathbb{R}$ and the statement would still be valid.

Zero was already a problematic number that had been introduced into Europe from India. Can imagine the effort that must have gone into understanding and justifying that multiplication of any number by zero yielded zero? Zero, one, and infinity are a daunting triad. Mastering them takes time, practice, and familiarity.

Multiplying a number by $1$ leaves it unchanged. The number $1$ is the _multiplicative identity_ element for the real numbers. So, $5 \times 1 = 1 \times 5 = 5$.

Multiplying $a$ by $-1$ yields the additive inverse of $a$, namely $-a$.

In the context of $2 \times 2$ matrices, there is a matrix that functions as the multiplicative identity as shown in @eq:matmultident.
$$
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
%
\begin{bmatrix}
1 & 0\\
0 & 1
\end{bmatrix}
=
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
=
\begin{bmatrix}
1 & 0\\
0 & 1
\end{bmatrix}
%
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
$${#eq:matmultident}

## The additive and multiplicative inverses

### Division as repeated subtraction


### Why is division by zero not allowed?



## Fundamental properties of zero

Is not a factor of any number other than itself.

Cannot be the denominator of any rational number.

Is the additive identity.

Zeroes in control theory

Zeroes of polynomials

Laplace transforms from ODE to polynomials

Galois: polynomial roots

Poles and zeroes

Division by zero functions becoming unbounded at points where division by zero is attempted

Renormaliztion theory: Quantum and Relativity: problem oc functions "blowing up" that preclude a conclusive theoer

Stability and the s-plane. The importance of zero. s = sigma + j omega exponential and the value

a ^0 = 1 etc.



## Fundamental properties of ones

Generates successor numbers and therefore the entire sets N and Z.

Multiplicative inverse.

Control systems and the number (-1, 0)

Radius of convergence and the change in powers of as number
GP

Curves of x^n for x < 1 and n -> infinity



## Binary logic and numbers


## The shy one

The number one is often [implicit](https://www.vocabulary.com/dictionary/implicit) in mathematical notation. While we may write $2x$ to denote $2\times x$, or two multiplied by $x$, we _do not_ write $1x$, even if it is literally correct, because of convention. In instances like this, the number one is implicit, and assumed to be understood by those who know. If you happen to be one of those _not_ in the know, here's your chance to join the other side.

When we write a fraction as $\frac{3}{4}$ we mean the decimal $0.75$ and matters are clear. But all whole numbers are also fractions with the denominator being $1$. So, the fraction $\frac{3}{1}$ is rarely written in that form, even if syntactically correct, because usage dictates that whole numbers are written to stand on their own, as $3$, in this case. Again, the $1$ in the denominator is assumed to be unobtrusively present: [out of sight but _not_ out of mind](https://dictionary.cambridge.org/dictionary/english/out-of-sight-out-of-mind).

When we write $4^2$, spoken out as "four squared" we mean the number obtained by multiplying $4$ by itself. This nomenclature arose because, if 4 was associated with the _length_ of, say, a piece of string, the number "four squared" was used to denote the _area_ of a square that had a side of length $4$. So, $4^2 = 4\times4 = 16$.

Likewise, the expression $7^3$ or "seven cubed" denoted the volume of a cube of side $7$. Beyond the third dimension, this naming scheme faded out, because we cannot percieve dimensions higher than three.

Therefore, $6^4$ is spoken as "six raised to the fourth (power)" or "six to the four". In such statements, the number $6$ is called the _base_ and the number $4$ is called the _exponent_.

Following this logic, we might assert that $5^1 = 5$ and that is perfectly correct. But again, convention intrudes to say that we write it simply as $5$. _Any number raised to the power of $1$ equals itself_.

The notation making $1$ implicit in these scenarios reduces clutter and simplifies notation. The absence of the implicit $1$ might trouble the heart of the sincere young mathematician, but familiarity with these conventions will make for comfort in using them.



## Zero, one, and repeated addition

All natural numbers may be generated by zero, one, and repeated addition:
$$
\begin{aligned}
0 + 1 = 1
\end{aligned}
$${#eq:success1}
$$
\begin{aligned}
1 + 1 = 2
\end{aligned}
$${#eq:success2}

The _next natural number_ is obtained by adding in the sequence is generated by adding $1$ to the current number._ By repeating this process, we can generate any desired natural number.



## Multiplication

## Division

### Why we cannot divide by zero


## Exponentiation

Exponentiation may also be called _raising (something) to a power_. It is a short form for repeated multiplication by the _same_ number. For example, if we multiply $5$ by itself three times, we write it so:
$$
5\times5\times5 = 5^1\times5^1\times5^1 = 5^{(1+1+1)} = 5^{3} = 125
$${#eq:exp}
The number $5$ is called the _base_ and the power $3$ is called the _exponent_. As noted before, $5^1 = 5$ and the exponent $1$ is omitted.

The reciprocal of an arbitrary non-zero real number $a$ is $\frac{1}{a}$. The product of the two is $1$. Written with an exponent,
$$
\frac{1}{a} = a^{-1}.
$$
Continuing with the number $5$ in our example, its reciprocal is $\frac{1}{5} = 5^{-1}$. What do we get if we multiply $5$ by its reciprocal? We areready know the answer to be $1$. Let us do the multiplication using exponents:
$$
5 \times \frac{1}{5} = 1 = 5^{1} \times 5^{-1} = 5^{1+(-1)} = 5^{0}.
$${#eq:reciprocal}
The astounding conclusion from @eq:reciprocal is that a base raised to the exponent zero is ${1}$. _By extension, any integer raised to the to the zeroth power equals $1$_. This remarkable conclusion applies to _any real number_ as well: something that will be understood better after we encounter [logarithms](https://www.britannica.com/science/logarithm) in this series of blogs or elsewhere. The consequence is that the logarithm of $1$ to any base $b$ is $0$:
$$
log_{b}1 = 0.
$${#eq:logonezero}
@eq:logonezero is yet another memorable equation linking $1$ and $0$. When the domain of mathematics expands to take on new numbers, new objects, and new notations, the need for consistency with the existing body of mathematics gives us pearls such as equation @eq:logonezero.

Application of index to polynomials; x is x^1 and 2 is 2 * x^0

## The interval $[0, 1]$

## Sequences

An ordered procession of numbers is called [sequence](https://en.wikipedia.org/w/index.php?title=Sequence&oldid=1177801065) [@wikisequence;@wolframsequence].^[The general definition replaces _numbers_ with _mathematical objects_ but the former will suffice for our limited purpose here.] Repetitions are allowed, but the order matters. The natural numbers form the sequence $(1, 2, 3, 4, 5, \ldots)$. Note that the elements of the sequence are enclosed in parentheses, $()$. There is an entire website devoted to sequences, called the [The On-Line Encyclopedia of Integer Sequences® (OEIS®)](https://oeis.org/).

Fibonacci sequence

Binomial sequence Pascals triangle

## Series

A [series](https://mathworld.wolfram.com/Series.html) is the (progressive) sum of an infinite sequence [@wikiseries;@wolframseries].

Pascal's triangle and the Binomial theorem and their origin in the number 1.

Arithmetic series (progressions)

Geometric series (progressions)

## Primes

Is one the first prime? No!



Stuff

arose out of the solutions to polynomial equations that did not have roots in the real number system. To put it in a picture, the graphs of some polynomials did not intersect the $x$-axis as many times as they should have.

https://en.wikipedia.org/wiki/Circle_group

Circle Circle_group

## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./the-two-most-important-numbers.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/the-two-most-important-numbers.pdf>
:::
