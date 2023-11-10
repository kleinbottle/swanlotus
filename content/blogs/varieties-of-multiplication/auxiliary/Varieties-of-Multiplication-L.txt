# Questions & Applications

## Symbols for Multiplication

Of the symbols for the four arithmetic operations, $+$ and $-$ are used uniformly and unchanged in arithmetic and algebra. When it comes to multiplication and division, we have variety in the symbols used.

Division is denoted by $\div$ when we first encounter it. This is replaced by a *forward slash,* $/$, *solidus,* or *vinculum* when fractions are introduced. We also have the *right parenthesis,* $)$, along with a line on top or below to denote long or short division.

But of all the four, it is only the symbol for multiplication that disappears completely in some algebraic contexts as mentioned in this blog.

Explore the evolution of these symbols over time and try to conjecture why symbol elision or disappearance has occurred only for multiplication.

## Prime numbers and their applications

Prime numbers find application in secure online transactions like banking and e-commerce. Look up [encryption][encryption] on the Web to delve deeper.

Among the better known algorithms used in securing online transactions is the [RSA][rsa] algorithm. Find out more about the central role played by prime numbers in this algorithm. The name given to this science of concealment is [cryptography.][crypto]

[encryption]: http://en.wikipedia.org/wiki/Encryption
[rsa]: http://en.wikipedia.org/wiki/RSA
[crypto]: http://en.wikipedia.org/wiki/Cryptography

Testing whether a number is prime is called *testing for primality.* A famous method for doing it is the [Sieve of Eratosthenes.][sieve]

[sieve]: http://www.cut-the-knot.org/Curriculum/Arithmetic/Eratosthenes.shtml

Decomposing a given whole number into its *prime factors* is quite another---and much more demanding---task compared to testing for primality.

Encryption schemes depend on a process that is very easy one way and very difficult the other way. It is trivial to compute a large number given its prime factors, but fiendishly difficult to factorize a large number into its prime factors.

Why do you think this is so? Does it have to do with relative difficulty of multiplication and division? Or does it have to do with the properties of prime numbers? Or something else entirely?

## Zero and one

The numbers zero and one occupy a special place in all of mathematics. When we deal with the field of real numbers, they are respectively the *additive and multiplicative identities*. This means that for any real number $x$ we have:

-   $x + 0 = x$
-   $(x)(1) = x$

In addition, each real number also has an *additive and multiplicative inverse.* The additive inverse of $x$ is $-x$ whereas the multiplicative inverse of a *non-zero* number $x$ is $\frac{1}{x}.$ This is written as:

-   $x + (-x) = 0$
-   $(x)(\frac{1}{x}) = 1$ for $x \neq 0$

Comment on these statements:

a.  By using signed numbers and the concept of the additive inverse, we do not need subtraction as a separate arithmetic operation.

b.  Division by zero is prohibited in order to retain uniqueness of the multiplicative inverse. [Hint: consider the equation $(x)(0) = 0$ which is true for any $x$. Then consider $(x)(0) = (y)(0)$ for $x \neq y.$]

## Complex numbers and their applications

Complex numbers find use in many areas of physics and electrical engineering.

One application is in steady state analysis of alternating current circuits using a vector-like construct called a [phasor.][phasor]

[phasor]: http://en.wikipedia.org/wiki/Phasor

Complex numbers also find application in signal decomposition and reconstruction techniques used widely in electronic communication. The [Fourier transform][fourier] is one such example.

[fourier]: http://en.wikipedia.org/wiki/Fourier_transform

And the absolutely fundamental [Schrödinger equation][schrodinger] in quantum theory is a partial differential equation embodying the imaginary unit $i$. So, although complex numbers might seem abstract, they are vital to our electronic civilization and are applied everyday in countless contexts.

[schrodinger]: http://en.wikipedia.org/wiki/Schr%C3%B6dinger_equation

Look up whatever interests you about these or other uses of complex numbers in our civilization.

## Multiplication as rotation

Multiplication of any point on the complex plane by the imaginary unit $i$ serves to *rotate that point anti-clockwise by $90^{\circ}$.* Four such multiplications return the point to its original position. This may be stated simply as $i^{4} = (i^{2})(i^{2}) = (-1)(-1) = 1$.

This is a geometric result from an algebraic operation. Researchers in [computer graphics][cg] and developers of [video games][vg] rely on varieties of multiplications such as these to achieve on-screen rotations.

[cg]: http://www.graphics.cornell.edu/online/tutorial/
[vg]: http://en.wikipedia.org/wiki/Video_game

Look up the italicized words on the Web and find out more about the relationship between multiplication and rotation.

## The cosine rule and resultant vector

The [cosine rule][cos] for any triangle $ABC$ states that $c^{2} = a^{2} + b^{2} - 2ab\cos C.$

[cos]: http://en.wikipedia.org/wiki/Law_of_cosines

Look at the diagram illustrating the parallelogram law for vector addition and derive a similar formula relating  the magnitudes of the two vectors, the angle between them, and their sum or resultant.

[Hint: Notice that $c^{2}$ is analogous to $\lVert\mathbf{w}\rVert^{2}.$]

## Dot and cross products

The dot product is a measure of similarity in the sense of alignment of two vectors. If the dot product is zero, the two vectors are [orthogonal][orthogonal] or "at right angles." The magnitude of the dot product is a maximum if the angle between the two vectors is zero.

[orthogonal]: http://en.wikipedia.org/wiki/Orthogonality

The cross product yields a result that is always orthogonal or "at right angles" to the two vectors that produced it. The magnitude of the cross product is a maximum when the two vectors are orthogonal to each other.

How do these properties arise from the definitions of these two operations? [Hint: consider the graphs of the trigonometric functions.]

## Cross product for higher dimensions

We have defined the vector cross product for vectors of *three dimensions.* Can we have vector cross-products for vectors of any number of dimensions?

In this [paper][paper] entitled "Multi-dimensional vector product" the author states that "multi-dimensional generalization of the vector product is only possible in seven dimensional space."

His results are a cautionary note that we may not mindlessly generalize the cross product from three to arbitrary higher dimensions.

[paper]: http://arxiv.org/abs/math.RA/0204357

----------------------





