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

At first, I thought I would skirt around the formal sets of numbers, and concepts like commutativity and associativity, and keep this blog very informal. But I found that each time I tried that approach, I would have to furtively sneak in a paragraph here, or a footnote there, as explanation of these ideas. In the end, I decided to start at the beginning, and work my way through the natural numbers, the integers, the rationals, etc., and [broach](https://www.thefreedictionary.com/broach) ideas like commutativity and associativity.

## Counting

Aeons ago, a shepherd with five sheep might have counted, "one sheep, two sheep, three sheep, four sheep, and five sheep." But wait! Since he did not have the names for numbers---nor indeed the abstract concept of a number---he could not have done that. So, what did he do? Let us speculate.

### Naming sheep

He could have given _unique_ names to each of his five sheep and developed enough familiarity with them to identify them by name. Then all he needed to do was to check that all his named sheep were home by sundown. But such a method would have become cumbersome and error-prone as his flock multiplied.

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
:::

\
While it is premature to talk about these sets and their peculiarities in this blog, it is worth making some points about them.

#. The symbols in the second column are called [blackboard bold](https://oeis.org/wiki/Blackboard_bold) letters.

#. A set is traditionally enclosed in a pair of _braces_: $\{\}$.

#. There is [no agreement on whether or not to include zero](https://en.wikipedia.org/wiki/Natural_number) as a member of $\mathbb{N}$. I have chosen not to because I consider $\mathbb{N}$ the set of _counting numbers_. <!--XXX Two references here plus one generic link-->

#. Zero is neither positive nor negative. It is itself and, as a set, is often denoted $\{0\}$.

#. The _integers_ are named $\mathbb{Z}$ after the German word _Zahlen_ which stands for "numbers" (singular _Zahl_). The integers include positive and negative whole numbers as well as zero.

#. The _rational numbers_ are so named because they are really _ratios_ of whole numbers with the proviso that the denominator cannot be zero. The symbol $\mathbb{Q}$ is used because it denotes _quotient_ the result of _division_.

#. There is no symbol for the _irrationals_, which are simply defined as numbers which are _not rational_. In fact, the set of irrationals may shown, using set notation only indirectly as $\mathbb{R}\setminus\mathbb{Q}$, which means the set of real numbers, excluding the rational numbers.

#. The _real numbers_, with symbol $\mathbb{R}$ for real, are glibly described as the union of the rational numbers and the irrational numbers.^[[Richard Dedekind](https://en.wikipedia.org/wiki/Richard_Dedekind) with his _Schnitt_ or cut, showed that the rationals and irrationals comprise $\mathbb{R}$, but that is [a story](https://arpita95b.medium.com/cutting-through-the-confusion-how-dedekind-cuts-build-the-real-numbers-20aeaaec021d) for another day and another blog.]

#.  The _complex_ numbers incorporate a non-real entity called $i$ the _imaginary unit_, which is defined as $i^2 = -1$. Since every real number when squared is greater than or equal to zero, this $i$ is not a real number, and therefore demands its own symbol, arithmetic, and set, $\mathbb{C}$.

## The Four arithmetic operations

Each of the four basic arithmetic operations--addition, multiplication, subtraction, division---are [binary](https://en.wikipedia.org/w/index.php?title=Binary_operation&oldid=1182322931) operations and may only be performed between _two_ numbers. The ability to _add_ multiple numbers---as in determining the total sum to be paid at the checkout counter while shopping---is made possible by the [commutativity](https://en.wikipedia.org/wiki/Commutative_property) and [associativity](https://en.wikipedia.org/wiki/Associative_property) of addition, which also applies to multiplication. Subtraction and division are neither commutative nor associative.

### Commutativity and Associativity

Let us add three numbers, $2$, $3$, and $5$. It is common to write this as $2 + 3 + 5 = 10$. The sum $10$ is correct, but it is derived from the commutativity and associativity of addition.

In commutativity, we have
$$
2 + 3 = 3 + 2.
$$ _The order of the two operands may be interchanged_.

In associativity, we have _three operands_. We use parentheses to denote the operation we perform first. It does not matter which pair we add first.
$$
(2 + 3) + 5 = 2 + (3 + 5).
$$
Together, commutativity and associativity allow us to be casual about the order in which add several numbers.

Talking about commutativity and associativity might seem like overkill for addition. But, identifying these properties is a useful insight, as the more sophisticated mathematical objects we will encounter later may not obey either or both properties.^[For a start, subtraction is not commutative: $3 - 2 \ne 2 - 3$.]

## Addition

If we start with zero and add one to it, we get one. If we add one to that we get two. In this fashion, all the natural numbers may be generated successively by adding one. The _next number_ is called the _successor_. Even if we did not start with zero, but started with one, instead, we can still generate the entire set $\mathbb{N}$ by adding one successively.

Zero is the _additive identity_, meaning that if we add zero to any number, the result is the original number again. Henceforth, let us denote an arbitrary real number by $a$, i.e., $a \in \mathbb{R}$. Then,
$$
a + 0 = a.
$$

This is also true of other mathematical objects. The zero of the complex numbers is $0 + i(0) = 0$ as well. And adding it to any complex number also gives us the original complex number.

A [matrix](https://mathworld.wolfram.com/Matrix.html) is mathematical object which I facetiously call _numbers in teabags_. They may come in different shapes and sizes. Let us consider a general $2 \times 2$ square matrix like $\begin{bmatrix}a & b\\c & d\end{bmatrix}$ which has two horizontal rows and two vertical columns. The additive inverse for this matrix is a $2\times2$ square matrix all of whose entries are zero:
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
$$

[Polynomials](https://mathworld.wolfram.com/Polynomial.html) are expressions like $x^2 + 3x + 1$ where $x$ is some real variable. The zero polynomial is simply the number zero, and adding it to any polynomial also gives us a zero.

### Multiplication as repeated addition


### Subtraction


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

## The additive and multiplicative identities

When mathematicians in the nineteenth century contemplated the then extant mathematical systems, they recognized certain commonalities. Whether it was arithmetic or geometry, or some other branch of mathematics, they were able to distil certain underlying principles behind the common practices of mathematics. By systematizing and classifying what they observed, they were able to _invent_ names for the _classes of objects_ they discerned, along with their properties. Thus was born [abstract algebra](https://en.wikipedia.org/wiki/Abstract_algebra). The ideas of the additive and multiplicative identity were born from this exercise in classification.

The numbers we use for counting, starting from $1$, and never ending, are called the _natural numbers_. The collection or _set_ of these numbers is denoted $\mathbb{N}$. We can add and multiply these numbers.

For example, we have seen that multiplying $5$ by $1$ gives the original number $5$. The number $1$ is called the _multiplicative identity_ because multiplying any natural number by $1$ preserves the original number.

What do you think is the additive equivalent, the _additive identity_? We know that if we add $0$ to any number, we get the original number again. So, $0$ _preserves_ the original number intact after addition. But is $0$ in the set $\mathbb{N}$? Not as we have defined it here.^[Some folks do include $0$ in the set $\mathbb{N}$.] Nevertheless, we may posit that under appropriate conditions, the additive identity is $0$.

Zero and one enjoy their [coign of vantage](https://dictionary.cambridge.org/dictionary/english/coign-of-vantage) because they are the additive and multiplicative identities respectively:
$$
\begin{aligned}
a + 0 = a\\
a \times 1 = a
\end{aligned}
$$
where $a$ is an arbitrary number, of the sort we are familiar with^[This is an easy-to-read blog; so I will not belabour the reader with the finer points of different types of numbers, but will reserve them for a later blog.].

Mathematics as a discipline tends to generalize and extend simple ideas to increasing levels of complexity, while at the same time maintaining consistency in definition and behaviour across these disparate domains.

It should come as no surprise that some objects called matrices^[I facetiously call them numbers in teabags] (singular matrix) also have their additive and multiplicative identities, _where applicable_. We will consider an arbitrary _square matrix_ $\begin{bmatrix} a & b\\c & d \end{bmatrix}$ having four elements, and called a $2 \times 2$ matrix. Then,
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
$${#eq:multidmatrix}
and $\begin{bmatrix} 1 & 0\\0 & 1 \end{bmatrix}$ is the multiplicative identity for matrix multiplication.^[The rules of matrix multiplication are a little involved and will not detain us here. The interested reader is referred to another blog of mine for details.]

Likewise,
$$
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
+ %
\begin{bmatrix}
0 & 0\\
0 & 0
\end{bmatrix}
= %
\begin{bmatrix}
a & b\\
c & d
\end{bmatrix}
$${#eq:addidmatrix}
and $\begin{bmatrix} 0 & 0\\0 & 0 \end{bmatrix}$ is the additive identity for matrix addition.

Do you see how the seed ideas of the additive and multiplicative identities, sown far and wide, germinate into shoots that are surprisingly similar to the original ones. The numbers $0$ and $1$ do indeed rule the roost. Obviously, the identity matrices will change with the matrix sizes, but the principles remain the same.

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


## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here](./the-two-most-important-numbers.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/the-two-most-important-numbers.pdf>
:::
