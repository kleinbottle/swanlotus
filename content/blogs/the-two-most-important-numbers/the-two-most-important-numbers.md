---
title: "The Two Most Important Numbers: Zero and One"
author: R (Chandra) Chandrasekhar
date: 2023-10-31
modified: 2023-10-31
category: Mathematics
tags: Mathematical Musings
summary: 'The unique properties of the numbers zero make them mathematically indispensable. In this slow-paced stroll though the ideas streaming out of these two numbers, we uncover well-known as well as relatively obscure facts about them. It is hoped that in the process we may discover how they cement disparate areas of Mathematics.'
opengraphimage: 01-crop-3600-dpi-cairo.png
---

The unique properties of the numbers zero and one make them mathematically indispensable. In this slow-paced stroll though the ideas streaming out of these two numbers. we uncover well-known as well as relatively obscure facts about them. It is hoped that in the process we may discover how they cement disparate areas of Mathematics.

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
where $a$ is an arbitrary number, of the sort we are familiar with^[This is an easy-to-read blog; so I will not belabour the reader with the finer points of different types of number, but will reserve them for a later blog.].

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


## Multiplication

## Division

### Why we cannot divide by zero


## Exponentiation

Exponentiation may also be called _raising (something) to a power_. It is a short form for repeated multiplication by the _same_ number. For example, if we multiply $5$ by itself three times, we write it so:
$$
5\times5\times5 = 5^1\times5^1\times5^1 = 5^{(1+1+1)} = 5^{3} = 125
$${#eq:exp}
The number $5$ is called the _base_ and the power $3$ is called the _exponent_. As noted before, $5^1 = 5$ and the exponent $1$ is omitted.



## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./the-two-most-important-number.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/the-two-most-important-numbers.pdf>
:::
