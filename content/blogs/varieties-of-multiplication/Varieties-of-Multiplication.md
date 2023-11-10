---
title: "Varieties of Multiplication"
author: R (Chandra) Chandrasekhar
date: 2012-05-14
modified: 2023-11-10
category: Mathematics
tags: Mathematical Musings
summary: 'I want to look at some of the varieties of multiplication that mathematicians have developed over time. It is a survey that will serve as a pinhole through which we can view how a single, simple mathematical idea has been expanded and elaborated into uses far beyond its historical moorings.'
opengraphimage:
---

> This was my first blog---written in 2012---under the [_Mathemtical Musings_](https://swanlotus.netlify.app/tag/mathematical-musings) tag. The intention was to re-visit topics in mathematics that caused concern or disquiet in the earnest student of the subject. My hope was that ideas that appeared puzzling or forbidding at first sight could be coaxed to become friendly and helpful. Unhurried explanations and a different perspective would underpin the approach. I have retained, substantially unchanged, what I first wrote, to maintain the freshness, flavour, and vintage of the blog.

## Prologue

This blog is experimental in three ways.

First, this is my maiden attempt to display mathematics on a web page. It  might look simple, but believe me, it is no mean task. Thanks to the concerted efforts of many generous people, I am using [MathJax](https://www.mathjax.org/) to render the mathematics via [Pandoc](https://pandoc.org/), and its flavour of [Markdown](https://garrettgman.github.io/rmarkdown/authoring_pandoc_markdown.html).

The second experimental feature is what I have called "slicing the orange of knowledge with a different cut" in my book [_Secrets of Academic Success_](https://swanlotus.netlify.app/sas). The idea of multiplication runs like a thread through much of mathematics, from the most elementary stages of counting to what constitutes cutting edge research. Unfortunately, in the way mathematics is taught at present, multiplication is bundled with each stage of mathematics and viewed separately as an operation in that context.

By concentrating on the single unifying *idea* of multiplication, and viewing it across the whole of mathematics, we are indeed "slicing the orange of knowledge with a different cut". Even if you have not encountered some of the varieties of multiplication mentioned here, this exposure will help you grasp those varieties better when you do encounter them. Please [send me feedback](mailto:feedback.swanlotus@gmail.com) on whether this approach works for you.

Third, this is an _extremely long_ blog. In fact, I call it a [_slog_](https://www.vocabulary.com/dictionary/slog) \emojifont :wink: \normalfont. It took me some weeks to write it. So, take your time reading it. It is unlikely that you will finish it at one reading. _Read it in parts at your own pace_. After having read it once, cast your eyes and mind over the whole to get an overall view of the main ideas.

I thought of splitting the blog onto three or four manageable parts, but decided against it because I wanted the evolution of multiplication as an idea to be left whole in a single post. [Tell me](mailto:feedback.swanlotus@gmail.com) if it put you to sleep \emojifont :smile: \normalfont.

With that out of the way, let us begin. I want to look at some of the varieties of multiplication that mathematicians have developed over time. It is a survey that will serve as a pinhole through which we can view how a single, simple mathematical idea has been expanded and elaborated into uses far beyond its historical moorings.

# Multiplication as a binary operation

Consistency is valued more in mathematics than in other disciplines. _The idea is not to upset the apple cart but to expand it_. Definitions, conventions, rules, facts, and fallacies---once established---are usually above argument, and do not vary with time or place. So, let us start by defining some terms.

Multiplication is a *binary* operation: it is something that we do with *two* mathematical objects, whatever they might be. Usually, the two are *similar* objects or at least *compatible* objects.  The whole numbers are an example. We can and do multiply two whole numbers.

# Multiplication as repeated addition

Practically and historically, multiplication arose as an arithmetic convenience for repeated addition. If we add the number $3$ four times, we have
$$
3 + 3 + 3 + 3 = (3 + 3) + (3 + 3) = 6 + 6 = 12
$$
The reason for adding $3$ in _pairs_, as shown above, is that addition is a binary operation, just like multiplication. Using the shorthand of multiplication, we write this as $4 \times 3 = 12$. _So, multiplication is a shorthand for repeated addition._

When we see the arithmetic expression $4 \times 3$, we say "four times three" in English.  Or, we could equally well say "four threes", as I was taught at school, which is less ambiguous and much clearer. Think of four lots of three being added together like we have seen above:
$$
\begin{array}{c c c l}
4 &\times &3 &= 3 + 3 + 3 + 3 = (3 + 3) + (3 + 3) = 6 + 6 = 12\\
\uparrow & & \uparrow & \\
\mbox{multiplier} & & \mbox{multiplicand} & \\
\end{array}
$${#eq:multiplier}
The number $4$ is the [multiplier](https://www.thefreedictionary.com/multiplier) and the number $3$ is the [multiplicand](https://mathworld.wolfram.com/Multiplicand.html). This is the standard definition.

We say that the "something" which is repeatedly added, is the *multiplicand.* The number of times that "something" is added is the *multiplier.* And the result of this operation is the *product.* Thus far we are in perfect harmony with accepted usage.

## Commutativity and multiplication

Multiplication of numbers is [commutative](), i.e., the multiplier and multiplicand can change roles without affecting the result.
$$
4 \times 3 = 3 \times 4 = 12.
$${#eq:comm}
Note that at the very left of @eq:comm, $4$ is the multiplier, and $3$ the multiplicand, whereas in the middle of @eq:comm, $3$ is the multiplier and $4$ the multiplicand. To labour the point,
$$
\begin{array}{c c c l}
3 &\times &4 &= 4 + 4 + 4 = (4 +4) + 4 = 4 + (4 + 4) = 12\\
\uparrow & & \uparrow & \\
\mbox{multiplier} & & \mbox{multiplicand} & \\
\end{array}
$${#eq:multiplicand}
Although the two numbers have changed their names and roles from @eq:multiplier to  @eq:multiplicand, the result is the same because the multiplication of numbers is commutative.

To accommodate our [zeitgeist](https://www.thefreedictionary.com/zeitgeist), the distinction between multiplier and multiplicand is fading away, in favour of the symmetrical  and neutral term _factor_. The result of multiplying two _factors_ is still the _product_, as before.

## Rectangular numbers

Historically, stones were used to count. And the stones representing any number may be arranged in geometric shapes, like lines, triangles, rectangles, and so on. This gives us a geometrical or pictorial representation of numbers.

All numbers which are the products of two whole numbers, neither of which is one, may be expressed as *rectangular numbers*. The symbolic operation $4 \times 3$ may be shown pictorially as a series of $12$ icons arranged four across and three high. Because we may swap the order of multiplication, we may also show it as $12$ rectangles three across and four high. As we have seen, multiplication of numbers is commutative. The image below shows this equivalence.

![The multiplier is the number of rows, and the multiplicand is the number of columns.]({attach}images/four-by-three.png){#fig:four-by-three width=70% .modal-target}

## Factorization is not unique

There is a subtle point to grasp here. The number $12$ is called a *composite* number and its *factors* in the illustrated representation are $4$ and $3$. _But this factorization is not unique._ We could have equally correctly claimed that $2 \times 6 = 12$ leading to a different factorization. While we may assert that both $4 \times 3$ and $2 \times 6$ lead to the same unique composite number, we cannot reverse the process and claim uniqueness of factors for any particular composite number.

![Twelve is a composite number.]({attach}images/six-by-two.png){#fig:six-by-two width =70% .modal-target}

# Square numbers

<!--Insert three-square.png here.-->

[caption id="attachment_85" align="alignright" width="121"]<a href="http://swanlotus.org/wp-content/uploads/three-square.png"><img src="http://swanlotus.org/wp-content/uploads/three-square.png" alt="Why we say three times three is three squared." width="121" height="121" class="img-responsive size-full wp-image-85" /></a> Why we say three times three is three squared.[/caption]

A square is a special case of a rectangle whose length and width are equal. When we write $3 \times 3 = 9$, and we arrange the resulting nine icons in a rectangle, we get a *square number* of three by three icons. This is why we say that when we multiply a number by itself, we are *squaring* it.

One could carry this analogy further and move into three dimensions to represent a number like $3 \times 3 \times 3 = 27$ with icons arranged in a *cube.*^[Try this with toy blocks to convince yourself of its truth.] Again, this is why we say we are *cubing* a number when we multiply it by itself twice.

# Prime numbers

A number which cannot be expressed as the product of two numbers other than one and itself is called a *prime number.* Prime numbers can only be arranged in a line, never in a rectangle. Seven is a prime number as illustrated below.

<!--Insert seven.png here-->

[caption id="attachment_84" align="aligncenter" width="383"]<a href="http://swanlotus.org/wp-content/uploads/seven.png"><img src="http://swanlotus.org/wp-content/uploads/seven.png" alt="Seven is a prime number. Its seven icons cannot be re-arranged in a rectangle." width="383" height="43" class="img-responsive size-full wp-image-84" /></a> Seven is a prime number. Its seven icons cannot be re-arranged in a rectangle.[/caption]

Try to rearrange the seven icons into a rectangle to convince yourself that it is not possible and that seven is prime. Experimenting like this will help you better understand what testing for primality entails.

## Prime factorization is unique

Let us look at the number $12$ again, breaking it down this time into its *prime factors* so: $12 = 2 \times 2 \times 3$. There are two instances of the number $2$ and one instance of the number $3$. These numbers cannot be decomposed any further because they are prime. If we disregard the order of arrangement of these prime factors, i.e., we do not distinguish between $2 \times 2 \times 3$ and $2 \times 3 \times 2$ and so on, we may assert that *the prime factors of a composite number are unique.*

# Fractions and negative numbers

Negative numbers arose when loans had to be given and taken. They also find use in describing the depth of an ocean trench as being so much *below* sea level. Other applications arise naturally with  temperatures below the freezing point or with electric charges of a negative type, etc.

If you have no qualms accepting negative numbers, you might still be confounded by what we could mean by multiplying two negative numbers. The answer, which might startle you, is that _the product of two negative numbers is a positive number._

I have dealt with the arithmetic of fractions and negative numbers in my freely downloadable chapter ["Arithmetic Revisited"][arithmetic] from [_Secrets of Academic Success_.][sas] I urge you to read it if you feel the need. For now, it will suffice if you can accept the fact that $(-1)(-1) = +1 = 1$.

[arithmetic]: http://swanlotus.org/wp-content/uploads/arithmetic-revisited.pdf

# Laws of arithmetic

We now return to the assertion made at the start of this blog that multiplication is a *binary* operation: something that happens with *two* mathematical objects. You might object that we can and do multiply three numbers. For example, $2 \times 3 \times 5 = 30$ and no one would doubt the veracity of that assertion. Why then is multiplication classified as a binary operation and how might it be reconciled with what we know about the multiplication of three or more numbers?

Early mathematics was eminently practical, concerned with computing areas and volumes, profit and loss, and so on. In the course of time, mathematicians started to systematize their body of knowledge by introducing logic and rigour into their subject. They wanted to construct an intellectual edifice that was stable and durable.

Classifying all four arithmetic operations as binary and identifying the laws they obeyed was one of these foundational reforms.

The numbers we encounter on a daily basis are called the [real numbers,][real] although this is not their mathematically rigorous definition. :-)

The multiplication of real numbers obeys certain laws, of which we list only three here:

#.  [Commutativity:][commutativity] $ab = ba$.

#.  [Associativity:][associativity] $a(bc) = (ab)c$.

#.  [Distributivity of multiplication over addition:][distributivity] $a(b+c) = ab + ac$ and $(b+c)a = ba + ca$.

[real]: http://mathworld.wolfram.com/RealNumber.html
[commutativity]: http://mathworld.wolfram.com/Commutative.html
[associativity]: http://mathworld.wolfram.com/Associative.html
[distributivity]: http://mathworld.wolfram.com/Distributive.html

Of the three, we have already spoken about commutativity before. Here, we will concentrate on what associativity implies and why we need it.

# Associativity of multiplication

_Because multiplication is binary, we can only multiply two numbers at any one time._ If we need to multiply together three or more numbers, we have to multiply two of them first to get a single product before we can multiply it with next number, and so on.

The associative law simply states that when we multiply three numbers, it does not matter which two of the three we multiply first; the result will always be the same. It is this property that allows us to write something like $2 \times 3 \times 5$ or $abc$ and still make sense---because it denotes something unique---even though we know that multiplication is a binary operation.

# Symbols for multiplication across time and need

If you are sharp-eyed, you might have noticed how we previously denoted the multiplication of two negative numbers by enclosing each of them in parentheses: (). The same symbols were also used to define associativity and distributivity above. We now look at the chequered history of how the symbol for multiplication has changed with time and need.

## Times sign

The symbol for multiplication that we first learn is the rotated cross that looks like $\times$. It is called the "multiplication sign" and is usually read as "times", as we have already seen. It serves reasonably well even when we outgrow the whole numbers and move onto fractions.

## Parentheses

Parentheses, written in pairs as (), have traditionally denoted *precedence* during evaluation of an expression. Division and multiplication are evaluated *before* subtraction and addition. This order may be altered by including terms in brackets, which are accorded highest priority during evaluation. So, $5 \times 4 + 1 = 20 + 1 = 21$, whereas $5 \times (4 + 1) = 5 \times 5 = 25$.

When our discourse embraces negative quantities, in order to avoid ambiguity, we need something to enclose both the negative sign $-$ and the number to which it applies. The expression $5 \times -4$ is ambiguous and therefore never written so when we actually mean $5 \times (-4)$. This led to two pairs of parentheses *without any explicit multiplication symbol in between* to denote the multiplication of the two enclosed numbers thus: $(5)(-4) = 5 \times (-4) = -20$.

## Juxtaposition without any symbol

The archetypal symbol for the unknown in algebra is $x$, which looks a little too much like the multiplication symbol $\times$, especially when handwritten. To avoid confusion, a convention was adopted that when two *algebraic variables,* representing unknown quantities, were written next to each other or *juxtaposed,* it indicated the multiplication of the two quantities.

There is no intervening symbol between the two variables. Thus, $xy = (x)(y) = x \times y$. Note that we cannot use this convention with digits representing numbers because of *place value* in our decimal system. The number $45$ does *not* represent the product of $4$ and $5$.

## Centred dot

As more exotic objects entered the mathematical collection, yet another symbol was devised to show (at least one form of) multiplication. The dot in the middle $\cdot$ was used to indicate one of the several products of *vectors,* which we shall discuss [later][dotproduct] in this blog. Again, the dot is not useful in the context of digits because it could be confused with a decimal point.

[dotproduct]: #dot-or-scalar-product

So, there is both a rationale and a mathematical context for the introduction of each symbol for multiplication, according to time and need.

## Asterisk

The latter half of the twentieth century saw the introduction of yet another symbol for multiplication, this time for use in programming languages. Because the [ASCII character set,][ascii] devised during the era of [teleprinters,][teleprinter] did not include the symbol $\times$ for multiplication, another available symbol had to be chosen for multiplication. The winner was the [asterisk,][asterisk] denoted by \*. Note that even with the symbol \*, multiplying $3$ by $-4$ still requires one to type $3 * (-4)$ to avoid ambiguity.

[ascii]: http://tools.ietf.org/html/rfc20
[teleprinter]: http://en.wikipedia.org/wiki/Teleprinter
[asterisk]: http://en.wikipedia.org/wiki/Asterisk

Repeated multiplication---or [*exponentiation*][exp]---is usually represented by a double asterisk ** in most computing languages.

[exp]: #exponentiation

# Exponentiation

Just as multiplication is repeated addition, exponentiation is repeated multiplication. A new notation is used to indicate repeated multiplication. We denote it by a superscript indicating how many times the number is multiplied: $5 \times 5 \times 5 = 5^{3}$, and so on. The number $5$ is called the *base* and $3$ the *exponent*. We call the number $5^{3}$ as "five cubed" for reasons already explained, or as "five (raised) to the power of three".

What is the exponent in the number $5?$ The base is $5$ but the exponent is *implicit* or understood but not written. If we take $5 = 5^{1}$, the $5 \times 5 \times 5 = 5^{1} \times 5^{1} \times 5^{1} = 5^{3}$. With exponents, when we multiply numbers with the same base, we can simply add the exponents. And this fact underlies a very powerful computational device---logarithms.

# Logarithms: multiplying by adding

We may reduce multiplication to addition if we focused on the exponent of a common base. This is exactly what was done by an eccentric Scottish laird called [John Napier][napier] whose labours have made all our lives much less tedious. The books of logarithmic tables, affectionately called "log books" when I was at school, along with the [slide rule][slide] were the mainstay of physicists and engineers before the advent of the electronic calculator in the mid-1970s. And they all relied on  Napier's scheme of reducing multiplication to addition.

[napier]: http://www-history.mcs.st-andrews.ac.uk/Biographies/Napier.html
[slide]: http://sliderulemuseum.com/

Multiplying by adding is simple. Suppose we want to multiply $2$ by $3$. We follow this algorithm:

#. Express the number $2$ as a power of $10$: $2 \approx 10^{0.30103}$.

#. Express the number $3$ as a power of $10$: $3 \approx 10^{0.47712}$.

#. Add the two powers or exponents: $0.30103 + 0.47712 = 0.77815$.

#. Find out what number equals $10^{0.77815}$. In our case, $10^{0.77815} \approx 5.99998$.

"Aha!" you might say. "But the answer is not exactly $6$ which is the correct answer." You are right. With logarithms and the limited number of digits of precision, we can at best obtain a very good approximation to a computation.

If you had to compute $23.589 \times 459.1213$ what would you do? You would run to a calculator and punch in the digits to get $10830.212$ with very little effort today. But if you lived in a period without electronic calculators, you would be very glad that logarithms existed, and you would happy to chirp out the answer as $10830.213$ thanks to Napier.

# Square roots

Taking a square root is a form of *exponentiation*. If I gave you a number like $9$ and asked you to find a number such that when it was *added* to itself, you would get $9$, you would almost instinctively divide $9$ by $2$ to give me $4.5$ and indeed $4.5 + 4.5 = 9$.

If instead, I asked you to find that number, which when *multiplied* by itself gives $9$, how would you go about solving it? We know that in this case, the answer is $3$ because $3 \times 3 = 9$. To approach it systematically, we need a symbol for the operation, which when performed on $9$ gives us $3$. For historical reasons it was called *taking the square root* and the symbol $\surd$ is a stylized letter "r" for "radix" meaning "root" in Latin. So, we write $\sqrt{9} = 3$.

But is that the whole story? Recall that the product of two negative numbers is positive. So, $(-3)(-3) = 9$ as well. So, which is the "true" or "correct" square root? By convention, we associate the positive square root with the symbol $\surd$. So, without any ambiguity, $\sqrt{9} = 3$ and $-\sqrt{9} = -3$.

# Complex numbers

Talking about square roots and negative numbers, can we ever take the square root of a negative number? Do such numbers exist? If so, where? And are they useful?

The squares of real numbers give rise to only two possibilities.  The square of zero is zero. The square of any non-zero real number, whether positive or negative, is always positive, as we have just seen. So, the possibility of a negative number being the square of a real number does not ever arise.

But we do encounter a different situation when solving an algebraic equation like $x^{2} + 4 = 0$. When such equations were first encountered, mathematicians simply said that they had *no solutions.* This is true even when you initially encounter them at school today. *This equation has no solution in the field of real numbers.*

In the course of time, these pesky numbers---whose square is a negative number---kept popping up insistently in unlikely places. They were then reluctantly assigned mathematical existence with the somewhat pejorative term *imaginary numbers.* They were after all *not real numbers!*

In the course of time, a sandwich number was invented which was composed of the sum of a real number and an imaginary number. This number was called a *complex number.* It is the first of several mathematical objects we will encounter in this blog that are different from the real numbers of everyday life.

The number $5 + 2i$ is a complex number. Its real part is, of course, $5$ and its imaginary part is $2i$.

The symbol $i$ is called the *imaginary unit* and is the solution of the equation $i^2 + 1 = 0$.^[Because $i$ is often associated with current, electrical engineers often use the symbol $j$ instead.] Note that this definition of $i$ is not unique because there are two solutions, one positive and one negative. By convention, we take $+i = i$ to be one root and $-i$ to be the other. The notion of positive and negative roots does not have the same significance it did with the real numbers, but we should be aware of the ambiguity in the definition.

# Multiplication of complex numbers

When we multiply complex numbers, we are really performing multiplication on *two pairs* of real numbers with the imaginary unit sandwiched in between. Because of the property $i^2 = -1$, the rules of multiplication with terms involving $i$ must be modified to honour this equation. Let us see how, with a step-by-step example:
$$
\begin{aligned}
(2 + 3i)(4 - 5i) & = 2(4) + 2(-5i)\\
& \quad + (3i)(4) + (3i)(-5i)\\
& = 8 - 10i + 12i + (-15)(i^2)\\
& = 8 + 2i + (-15)(-1)\\
& = 23 + 2i.
\end{aligned}
$$
Note that we use $i^2 = -1$ and group like terms, but otherwise proceed as normal. If we were to generalize this to a pair of complex numbers, we get
$$(a + bi)(c + di) = (ac - bd) + (ad + bc)i.$$

<!--TODO: i^4 = 1; rotation; compare with -i^2 = 1-->

## Consistency between real and complex multiplication

What happens if we used the rule for complex multiplication above but set the imaginary parts to zero so that complex multiplication reverts to the multiplication of two real numbers? Do we get consistent results? Let us try it by substituting $b = d = 0$ in the above case. We then have:
$$
\begin{aligned}
(a + 0i)(c + 0i) & = [ac - (0)(0)] + [a(0) + (0)c]i\\
& = ac.
\end{aligned}
$$
It is a great relief that the result is as expected. The multiplication of two complex numbers gives us the same result as the earlier definition for multiplication of two real numbers when we set to zero the imaginary parts of the two complex numbers. The definitions of real and complex multiplication are therefore consistent.

It is a primary requirement in mathematics that when we extend the definition of an operation on a simpler object to encompass a more complicated mathematical object, the new definition should revert to the accepted definition for the simpler object when the complicated object reverts into the simpler object. This is the point about consistency that I made at the start of this blog.

## Complex numbers as ordered pairs

Arithmetic operations on complex numbers result only in complex numbers and do not give rise to new types of numbers. And all complex numbers consist of two parts: a real part and an imaginary part.

Hence, if we develop a new notation for this two-part number for purposes of arithmetic, we may dispense altogether with the symbol $i$, which after all, seems somewhat out of place in a numerical context.

The simplest notation is to represent complex numbers as [*ordered pairs*][op] of real numbers with the convention that the first number is the real part and the second number is the imaginary part.  Once we have done this, we need to re-define all the arithmetic operations for these ordered pairs.

[op]: http://www.mathsisfun.com/definitions/ordered-pair.html

We may thus use the ordered pair $(a, b)$ to denote the complex number $a + bi$ and likewise, $(c, d)$ for the complex number $c + di$.

Drawing upon our previous results, we may then *define* multiplication for this ordered pair as being
$$
(a, b)\cdot(c, d) = (ac - bd, ad + bc).
$$
Note that order matters here: the first number of the ordered pair is the real part of the complex number and the second is the imaginary part. We cannot swap them willy nilly.

# Vectors

Ordered pairs lead rather neatly to the idea of [*vectors.*][vector]^[Properly called Euclidean vectors in our context.] Indeed, there is more than a passing resemblance between complex numbers and two-dimensional vectors.

Both may be represented by ordered pairs of real numbers and the rules for addition and subtraction of these ordered pairs are identical. Moreover, they may both be represented as points on a [Cartesian plane.][cartesian]

Vectors are the second new mathematical object, after complex numbers, that we are meeting in this blog.

[vector]: http://en.wikipedia.org/wiki/Euclidean_vector
[cartesian]: http://en.wikipedia.org/wiki/Cartesian_coordinate_system

<!--Inset image of two vectors here-->

[caption id="attachment_87" align="alignleft" width="130"]<a href="http://swanlotus.org/wp-content/uploads/two-vectors.png"><img src="http://swanlotus.org/wp-content/uploads/two-vectors.png" alt="Two vectors shown as directed line segments." width="130" height="73" class="img-responsive size-full wp-image-87" /></a> Two vectors shown as directed line segments.[/caption]

A *vector* is traditionally defined as a quantity having two attributes: *magnitude* and *direction.* A simple everyday example is the wind which has both a speed and direction, and may therefore be represented by a vector. Indeed, if you have already encountered vectors, you might think of them exclusively as *directed line segments* or lines of specific lengths with arrow tips as shown.

## Addition and subtraction of vectors: geometric viewpoint

How do we add and subtract these geometric entities, let alone multiply and divide them? If you have done physics at high school, you will know that we use something called the *parallelogram law.*

We draw a pair of two-dimensional vectors so that both originate from the same point. We then complete the parallelogram formed by these two vectors by drawing in the other two sides. The *sum* of the two vectors, or their *resultant,* is the diagonal of the parallelogram that starts at the same origin as the two vectors. This is something best grasped from a picture:

<!--Insert image of vector-sum-->

[caption id="attachment_88" align="aligncenter" width="351"]<a href="http://swanlotus.org/wp-content/uploads/vector-sum.png"><img src="http://swanlotus.org/wp-content/uploads/vector-sum.png" alt="The parallelogram law for the addition of two vectors." width="351" height="353" class="img-responsive size-full wp-image-88" /></a> The parallelogram law for the addition of two vectors.[/caption]

The origin of the Cartesian plane is labelled $O$. We have three named vectors and three ordered pairs indicate the positions of their arrow tips:

#.  $\mathbf{u}$ : the vector from $O$ to the point $(8, 4);$
#.  $\mathbf{v}$ : the vector from $O$ to the point $(2, 6);$ and
#.  $\mathbf{w}$ : the vector from $O$ to the point $(10, 10)$.

The dotted grey lines indicate the two sides of the parallelogram that we draw to close the figure. The vector $\mathbf{w}$ is the diagonal that represents the sum of $\mathbf{u}$ and $\mathbf{v}$. This sum is written as
$$
\mathbf{u} + \mathbf{v} = \mathbf{w}
$$
If you look at the illustration carefully, you would note that if we added the first co-ordinate of $\mathbf{u}$ and the first co-ordinate of $\mathbf{v}$ we get the first co-ordinate of $\mathbf{w}$. And likewise for the second co-ordinate.

So, we may represent the addition of $\mathbf{u}$ and $\mathbf{v}$ as
$$
(8, 4) + (2, 6) = ((8+2), (4+6)) = (10, 10)
$$
This is no accident. Nor is it a special case. It works for all parallelograms.^[I leave it to you to convince yourself of this. (Hint: use graph paper, draw the co-ordinate axes, and use algebraic variables for the co-ordinates of $\mathbf{u}$, $\mathbf{v}$, and $\mathbf{w}$.)]

The parallelogram law is a geometric statement of what happens when we add two ordered pairs the way we would two complex numbers:
$$
(a, b) + (c, d) = (a+c, b+d)
$$
We may therefore dispense with line segments and arrow tips and abstract vectors as ordered pairs even as we rescued complex numbers from explicit association with $i$.

## Addition and subtraction of vectors: algebraic viewpoint

We may identify two-dimensional vectors *uniquely* by an ordered pair representing their co-ordinates on the Cartesian plane. This is the algebraic viewpoint. It is less cumbersome and more powerful as we have already seen from the addition of two vectors.

Subtraction is equally simple. There is no need to reverse vectors and draw another parallelogram. We simply say:
$$
(8, 4) - (2, 6) = (6, -2)
$$
It really cannot get any simpler than that! :-)

## Vectors as algebraic entities

We have just seen that two-dimensional vectors may be represented by ordered pairs on the Cartesian plane. This representation might be extrapolated to include vectors of dimensions greater than two. Obviously, we would then be moving from ordered pairs to ordered triples, etc.^[An ordered triple, for example, would live in our familiar three-dimensional space.]

To generalize, we may think of vectors as a list of "numbers in a teabag" where their order matters. Formally, an $n$-dimensional vector is an *ordered list* of $n$ numbers written within enclosing parentheses or brackets and treated as a *single entity.* This is also called an [*ordered n-tuple.*][tuple] Each individual number is called a *component* of the vector.

[tuple]: http://en.wikipedia.org/wiki/Tuple

The components of a vector may be written within parentheses or brackets. They may be arranged vertically as a *column vector* of a single column and $n$ rows or horizontally as a *row vector* of a single row and $n$ columns. A column vector may be *transposed* into a row vector. Transposition is indicated by the superscript $T$. For example, with $n = 4$
$$
\begin{aligned}
\begin{bmatrix}a\\b\\c\\d\\\end{bmatrix}^{T} & = \begin{bmatrix}a&b&c&d\\\end{bmatrix}\\
\begin{bmatrix}a&b&c&d\\\end{bmatrix}^{T} & = \begin{bmatrix}a\\b\\c\\d\\\end{bmatrix}\\
\end{aligned}
$$
Note that there are no commas separating the elements of a row vector unlike in ordered pairs. Also, we could just as well have used parentheses as brackets.

It is conventional to assume that an arbitrary vector is a column vector. Row vectors are then the transposes of the column vectors. This is the convention we will follow.

## Row-column nomenclature

The size of a vector is denoted by writing down the number of rows followed by a $\times$ sign followed by the number of columns. Thus a column vector with four rows is a *$4 \times 1$ column vector* while a row vector with four columns is a *$1 \times 4$ row vector.*

By definition, a vector must have at least one dimension equal to $1$. When *both* dimensions are equal to one, the vector degenerates into a single component which, in the context of vectors, is called a [*scalar*][scalar] to distinguish it from a vector.

[scalar]: http://en.wikipedia.org/wiki/Scalar_%28mathematics%29

## Addition and subtraction of vectors

Addition and subtraction for the ordered n-tuples representing two vectors may be defined as the addition or subtraction of their *respective components.*

Just to free ourselves from geometrical thinking about vectors, let us add two *four-dimensional* vectors whose components are given by algebraic variables representing real numbers.
$$
\begin{bmatrix}a\\b\\c\\d\\\end{bmatrix} + \begin{bmatrix}p\\q\\r\\s\\\end{bmatrix} = \begin{bmatrix}a+p\\b+q\\c+r\\d+s\\\end{bmatrix}
$$

Subtraction is equally "commonsensical":
$$
\begin{bmatrix}a\\b\\c\\d\\\end{bmatrix} - \begin{bmatrix}p\\q\\r\\s\\\end{bmatrix} = \begin{bmatrix}a-p\\b-q\\c-r\\d-s\\\end{bmatrix}
$$

These vector sums and differences would be difficult to visualize geometrically, but they are trivially routine algebraically.

# Multiplication of vectors

It is easy to think of the addition or subtraction of vectors, say in the context of "wind speed" and "air speed" of an aircraft. But what does the multiplication of vectors consist of and what meaning could we extract from the operation?

Vector multiplication is a strange, many-headed beast. It is important to know what it is and what it is not. Here is a quick run down:

1.  Vector multiplication is different from real multiplication.

2.  Vector multiplication is different from complex multiplication.

3.  There are several varieties of vector multiplication, some of which give us scalars, others vectors, and still others matrices:^[Ignore any unfamiliar terms for now.]

    (a) multiplication of a vector by a scalar to yield a vector
    (#) [dot product][dotwolfram] or scalar product or inner product of two vectors to yield a scalar
    (#) [cross product][cross] of two vectors to yield a third vector orthogonal to the other two
    (#) [tensor product][tensorproduct] or [outer product][outer] of two vectors to yield a matrix

[dotwolfram]: http://mathworld.wolfram.com/DotProduct.html

4.  Each variety of vector product was devised as an operation because it is useful and has a ready meaning in a particular context.

5.  When it comes to multiplication, vectors reveal their nature as a class of mathematical object quite different from real or complex numbers.

Let us consider each type of multiplication in turn.

# Multiplication by a scalar

Multiplication of a vector by a scalar is the easiest to understand. In this operation, we see the original arithmetic definition of real multiplication at play. We are magnifying or diminishing the magnitude of the vector by multiplying it with a scalar, while the direction of the vector is either reversed or remains unchanged.

If we have a vector $\mathbf{u}$ and we multiply it by a scalar $k$ the result is the vector $k\mathbf{u}$. This may be easily visualized geometrically. If we associate $\mathbf{u}$ with an arbitrary four-dimensional column vector, we may write
$$
\mathbf{u} = \begin{bmatrix}a\\b\\c\\d\\\end{bmatrix}
$$

Multiplication of $\mathbf{u}$ by a real scalar $k$ gives us
$$
k\mathbf{u} = k\begin{bmatrix}a\\b\\c\\d\\\end{bmatrix} = \begin{bmatrix}ka\\kb\\kc\\kd\\\end{bmatrix}
$$

When we multiply a vector by a scalar $k$, each component of the vector is individually multiplied by $k$. The magnitude of the resulting vector takes on a different meanings depending on the value and sign of $k$:

#.  $k = 1$: the vector is unchanged in magnitude and direction.

#.  $k = -1$: the vector is unchanged in magnitude but reversed in direction.

#.  $k < -1$: the vector is enlarged in magnitude and reversed in direction.

#.  $k > 1$: the vector is enlarged in magnitude and unchanged in direction.

#.  $-1 < k < 0$: the vector is diminished in magnitude and reversed in direction.

#.  $0 < k < 1$: the vector is diminished in magnitude and unchanged in direction.

#.  $k = 0$: the vector has zero magnitude and its direction is undefined.

While this might seem quite a mouthful, it is really quite simple:

-   a negative $k$ reverses the direction;
-   a positive $k$ keeps the direction unchanged;
-   value of $k$ that lies between $-1$ and $0$ or between $0$ and $1$ diminishes the magnitude; and
-   a value of $k$ less than $-1$ or greater than $+1$ increases the magnitude of the vector.

The special cases pertaining to $k = \pm 1$ and $k = 0$ underscore the paramount importance of $0$ and $1$ in the whole of mathematics. They are keystone numbers.

Did you pick up the fact that after uncoupling geometry and vectors, we finally resorted to geometry when talking about the meaning of scalar multiplication? This dual viewpoint runs through much of mathematical thinking.

Scalar division of vectors by $k$ is really multiplication by $\frac{1}{k}$ and is therefore not considered separately.

If we view scalar multiplication as a black box, it takes in one n-tuple and gives out another n-tuple. Like the merchant in _Aladdin and the Wonderful Lamp,_ we are simply exchanging old vectors for new. There is no difference in *kind* between the input and output mathematical objects.

## The zero vector is not the number zero

Distinguish carefully between the *real number $0$* and the *n-dimensional zero vector* which results from scalar multiplication with $k = 0$. The latter is an n-tuple of zeros and does *not* equal the real number zero. For example, with $n = 4$, the zero vector is:
$$
\begin{bmatrix}0\\0\\0\\0\\\end{bmatrix} \neq 0
$$

As and when new mathematical objects are invented (or discovered?) new definitions for the equivalents of zero and one for these new objects may also be necessary. The $n$-dimensional zero vector is unique as shown above. But there is no unique n-dimensional unit vector corresponding to the number $1$.

We now turn to other varieties of multiplication that may be applied to vectors.

# Dot or scalar product

The centred dot $\cdot$ as a symbol for multiplication makes its appearance here. The first departure from conventional multiplication was with complex numbers. The [*dot product,*][dot] also called the *scalar product,* or *inner product*^[An inner product is something more general, of which the dot product is a special case.] is the next variety of unconventional multiplication.

[dot]: http://en.wikipedia.org/wiki/Dot_product

## Existence of the dot product

*The dot product is defined only between vectors of the same dimension.* This is important to grasp. When we deal with real numbers, the multiplicand, multiplier, and product are all real numbers. They are mathematical objects of the *same* kind. So, we may afford to be a little careless in multiplying them together without performing any check.

We cannot afford to be equally lackadaisical with vectors. We have to respect the fact that they are not numbers per se, but a different type of mathematical object. A product of some sort might not exist between any two arbitrary vectors.

## Example of dot product

It is helpful to begin with a concrete example. Let $\mathbf{u}^{T} = \begin{bmatrix}1&2&3&4\\\end{bmatrix}$ and let $\mathbf{v}^{T} = \begin{bmatrix}5&6&7&8\\\end{bmatrix}$. Their dot product is written as:
$$
\begin{aligned}
\mathbf{u}^{T}\cdot\mathbf{v} &= \begin{bmatrix}1&2&3&4\\\end{bmatrix} \cdot \begin{bmatrix} 5\\6\\7\\8\\ \end{bmatrix}\\
&= (1)(5) + (2)(6) + (3)(7) + (4)(8)\\
&= 5 + 12 + 21 + 32\\
&= 70
\end{aligned}
$$

If you look at the dot product carefully, you will see the following:

#.  the first component of $\mathbf{u}$ is multiplied by the first component of $\mathbf{v}$ and likewise for the other components;

#. the individual products are then added together; and

#. the sum is the dot or scalar product.

It is now clear why the two vectors must have the same dimensions. If not, we will run out of either multiplicand or multiplier for pairwise multiplication.

The result, being a sum of products, is a single number, or scalar, explaining the name *scalar product* for this operation. We prefer the term dot product to avoid confusion with multiplication by a scalar.

It is easy to verify by direct evaluation that the dot product is [commutative][commutative] and therefore symmetrical. Verify if you please that $\mathbf{u}^{T}\cdot\mathbf{v} = \mathbf{v}^{T}\cdot\mathbf{u}$ for the above case.

Why did we need to write the dot product as being between a row vector and a column vector? One reason is that the product of a column vector with a row vector is actually a different type of multiplication which we will meet [later.][circledtimes] Another reason is that the row-column product mirrors [matrix multiplication][matrixmult] as explained later.

[circledtimes]: #outer-product-of-two-vectors
[matrixmult]: #example-of-matrix-multiplication

## General case and formula

These results for the dot product may be generalized by taking $\mathbf{u}$ and $\mathbf{v}$ to be arbitrary $n$-dimensional vectors whose components may be referred to by the *subscripts* $1$ to $n$.

It is conventional to write the vector itself in boldface as $\mathbf{u}$ or with an arrow on top as $\vec{u}$ (or using some other mark of distinction when written by hand or printed) whereas the individual components are always written normally. They are after all scalars.
$$
\begin{aligned}
\mathbf{u}^{T} &= \begin{bmatrix}u_{1} & u_{2} &  \cdots & u_{n}\\\end{bmatrix}\\
\mathbf{v} &= \begin{bmatrix}v_{1} \\ v_{2} \\ \vdots \\ v_{n}\\\end{bmatrix}\\
\mathbf{u}^{T}\cdot\mathbf{v} &= u_{1}v_{1} + u_{2}v_{2} + \cdots + u_{n}v_{n}\\
&= \sum_{i=1}^{n} u_{i}v_{i}
\end{aligned}
$$

Observe that the vector $\mathbf{u}^{T}$ is a $1 \times n$ vector whereas $\mathbf{v}$ is an $n \times 1$ vector. Their dot product---between a $1 \times n$ vector and an $n \times 1$ vector---yields a $1 \times 1$ "vector" which is really a scalar. In a manner of speaking, we may "cancel out" the two inner dimensions $n$ to get the dimension of the product as being $1 \times 1$. This mnemonic will prove useful later on as well.

## Consistency with real multiplication

What happens if our two vectors degenerate into scalars having single components $u_{1}$ and $v_{1}$? The dot product then collapses into plain multiplication between two numbers and equals $u_{1}v_{1}$, entirely consistent with the product of two numbers. Consistency rules once again!

## Geometric viewpoint

What does the dot product mean? What does it signify given that vectors originated as physical abstractions? We need to put on our "geometric glasses" and view the dot product geometrically. We will need a little bit of trigonometry on the way.^[Which you might have to take on trust if it is unfamiliar or forgotten.]

<!--Vector projections-->

[caption id="attachment_83" align="alignleft" width="227"]<a href="http://swanlotus.org/wp-content/uploads/projection.png"><img src="http://swanlotus.org/wp-content/uploads/projection.png" alt="Vector components as values of projections on orthogonal axes." width="227" height="340" class="img-responsive size-full wp-image-83" /></a> Vector components as values of projections on orthogonal axes.[/caption]

Let us consider a two-dimensional vector $\mathbf{u}$ from the origin $O$ to a point $U$ at $(u_{x}, u_{y})$ on the Cartesian plane. Let $OU$ make an angle $\alpha$ with the positive $x$ axis as shown. Then, we have:

1.  By the Theorem of Pythagoras, the magnitude of the vector $\mathbf{u}$, denoted by $\lVert\mathbf{u}\rVert$, is given by $\sqrt{u_{x}^2 + u_{y}^2}$. The symbol $\lVert\mbox{}\rVert$ denoting a pair of double vertical lines represents the [norm][norm] or magnitude of the vector written within it.

[norm]: http://mathworld.wolfram.com/Norm.html

2.  The magnitudes of the [projections][projection] of $\mathbf{u}$ in the directions of the $x$ and $y$ axes are respectively
    $$
    \begin{aligned}
    u_{x} &= \lVert\mathbf{u}\rVert\cos\alpha\\
    u_{y} &= \lVert\mathbf{u}\rVert\sin\alpha\\
    &= \lVert\mathbf{u}\rVert\cos(90^{\circ}-\alpha)\\
    \end{aligned}
    $$

The magnitude of the projection of a vector in a particular direction is equal the magnitude of the vector multiplied by the *cosine* of the angle made by the vector with that direction.

[projection]: http://en.wikipedia.org/wiki/Vector_projection

We could make similar claims for a vector $\mathbf{v}$ at $(v_{x}, v_{y})$ that makes an angle $\beta$ with the positive $x$ axis.

Let the angle between the two vectors be denoted by $\alpha - \beta = \theta$. The dot product of the two vectors may then be written as:
$$
\begin{aligned}
\mathbf{u} \cdot \mathbf{v} &= u_{x}v_{x} + u_{y}v_{y}\\
&= \lVert\mathbf{u}\rVert\cos\alpha\lVert\mathbf{v}\rVert\cos\beta + \lVert\mathbf{u}\rVert\sin\alpha\lVert\mathbf{v}\rVert\sin\beta\\
&= \lVert\mathbf{u}\rVert\lVert\mathbf{v}\rVert(\cos\alpha\cos\beta + \sin\alpha\sin\beta)\\
&= \lVert\mathbf{u}\rVert\lVert\mathbf{v}\rVert\cos(\alpha - \beta)\\
&= \lVert\mathbf{u}\rVert\lVert\mathbf{v}\rVert\cos\theta\\
\end{aligned}
$$

<!--Diagram of dot product-->

[caption id="attachment_79" align="alignright" width="230"]<a href="http://swanlotus.org/wp-content/uploads/dot-product.png"><img src="http://swanlotus.org/wp-content/uploads/dot-product.png" alt="Dot product of two vectors." width="230" height="147" class="img-responsive size-full wp-image-79" /></a> Dot product of two vectors.[/caption]

The dot product of two vectors is equal to the product of their magnitudes and the cosine of the angle between them. It is a scalar.

## Applications of the dot product

Unlike straightforward multiplication of real or complex numbers, the dot product seems a little contrived. Why is it so defined? And is it useful?

The answers to both questions lie in the practical utility of the dot product. Vectors are used to represent forces, displacements, momenta, and a whole host of other abstractions that are the bread and butter of physics. And the dot product neatly dovetails with a recurring pattern of relationships  in physics where two vectors give rise to a scalar in a multiplicative fashion.

For example, [mechanical work][work] $W$ is a scalar defined as the dot product of the vector representing force $\mathbf{F}$ and the vector representing displacement $\mathbf{s}$ through the equation $W = \mathbf{F}\cdot\mathbf{s}$. Alternatively, work is the projection of the force in the direction of the displacement, multiplied by the displacement. Both definitions are equivalent.

The dot product is succinct, precise, notationally crisp, and practically useful. That is why it has been defined and that is why it still exists.

[work]: http://en.wikipedia.org/wiki/Work_%28physics%29

## The cosine and sine functions

The cosine and sine of an angle are [trigonometric ratios][trig] from right-angled triangles that were later expanded in scope to become [mathematical functions.][functions] Graphs of $\cos x$ and $\sin x$ against $x$ in degrees are shown below.^[These functions are usually plotted against $x$ in the "unitless unit" [radians.][radians] I am using degrees here because the reader might be unfamiliar with radians.] If these are concepts new to you, you might want to look them up as suggested in the sidebar.

[trig]: http://en.wikipedia.org/wiki/Trigonometric_Ratios
[functions]: http://mathworld.wolfram.com/Trigonometry.html
[radians]: http://en.wikipedia.org/wiki/Radian

For now, we only need to focus on these facts:

#.  The values of $\cos x$ and $\sin x$ lie only between $-1$ and $1$.

#.  $\cos 0^{\circ} = 1$ and\ $\cos 90^{\circ} =0$.

#.  $\sin 0^{\circ} = 0$ and\ $\sin 90^{\circ} =1$.

#.  $\sin x = \cos (90^{\circ} - x)$.

#.  $\cos x = \sin (90^{\circ} - x)$.

<!--Insert graphs of cos x and sin x here-->

[caption id="attachment_86" align="aligncenter" width="482"]<a href="http://swanlotus.org/wp-content/uploads/trig.png"><img src="http://swanlotus.org/wp-content/uploads/trig.png" alt="Graphs of cos x and sin x." width="482" height="285" class="img-responsive size-full wp-image-86" /></a> Graphs of cos x and sin x.[/caption]

## Oddness and evenness

Observe from these graphs that $\cos x$ is an [even function][even] that is symmetrical about the $y$ axis whereas $\sin x$ is an [odd function][odd].^[These properties make the dot product a [commutative][commutative] operation and the cross product an [anti-commutative][anticommutative] operation.]

Although not apparent from the graphs, both the cosine and sine functions are [periodic][periodic] and repeat themselves every $360^{\circ}$ for all values of the independent variable.

[even]: http://mathworld.wolfram.com/EvenFunction.html
[odd]: http://mathworld.wolfram.com/OddFunction.html
[commutative]: http://mathworld.wolfram.com/Commutative.html
[anticommutative]: http://mathworld.wolfram.com/Anticommutative.html
[periodic]: http://mathworld.wolfram.com/PeriodicFunction.html

## Orthogonality

To recapitulate, the cosine of an angle is $1$ at zero degrees and $0$ at ninety degrees. Therefore if two vectors are [orthogonal][orthogonal]---or perpendicular or at ninety degrees---to each other, their dot product is zero.

[orthogonal]: http://mathworld.wolfram.com/Orthogonal.html

For example, a force vector $\mathbf{F}$ has no effect perpendicular to the direction in which it acts, and this is because its *component* or [projection][projection] in that direction is $\lVert\mathbf{F}\rVert\cos 90^{\circ} = 0$.

The dot product therefore measures the *degree of alignment* or *similarity* between two vectors. When the angle between them is zero degrees, this alignment is at its greatest. When the vectors are orthogonal, each vector has no component in the direction of the other; so they are *independent.* When the two vectors make an angle greater than $90^{\circ}$ the sine of their angle is negative. The two vectors act in opposition when they are at an angle of $180^{\circ}$ with each other.

Orthogonality---and the independence of vectors it implies---is a very powerful property that finds application daily whenever we talk over the telephone or download a compressed image from the Web.

The idea of projecting some mathematical object onto another and the idea of one mathematical object being orthogonal to another are both fundamental to many areas of mathematics and are well worth keeping in mind.

We now move on to the next type of vector product.

# Cross product

The third type of vector product is the [*cross product*.][cross] Because the dot product gave a *scalar* result that involved the *cosine* function, you might ask tongue in cheek, whether the cross product produces a *vector* result that involves the *sine* function in its definition. And facetious or not, you are actually right. :-)

[cross]: http://mathworld.wolfram.com/CrossProduct.html

The cross product is a vector and it does involve the sine of the angle between the two vectors. In addition, just as in the dot product, orthogonality peeps at us again through the cross product.

We will consider three-dimensional vectors. Any pair of three-dimensional vectors $\mathbf{u}$ and $\mathbf{v}$ between them define a two-dimensional plane. Just think of two rulers arranged in any orientation on a flat table to visualize and understand why.

The result of a cross product is orthogonal to the two vectors giving rise to it. There are *two* directions orthogonal to the plane. Think of the flat table again. An arrow at right angles to the table coming *out* of it and pointing *upwards* is in one direction. Now reverse the direction of the arrow so that it goes *into* the table pointing *downwards.* This is the other orthogonal direction. They both lie along the same straight line but are oriented in opposite directions.

We are now ready to define the cross product as
$$
\begin{aligned}
\mathbf{w} &= \mathbf{u} \times \mathbf{v}\\
&= (\lVert\mathbf{u}\rVert \lVert\mathbf{v}\rVert \sin \theta) \thinspace \mathbf{n}
\end{aligned}
$$

<!--Diagram of cross product-->

[caption id="attachment_78" align="alignright" width="220"]<a href="http://swanlotus.org/wp-content/uploads/cross-product.png"><img src="http://swanlotus.org/wp-content/uploads/cross-product.png" alt="Cross-product of two vectors." width="220" height="195" class="img-responsive size-full wp-image-78" /></a> Cross-product of two vectors.[/caption]

Both the vectors $\mathbf{u}$ and $\mathbf{v}$ point outward from the same origin $O$. The cross product vector $\mathbf{w}$ is perpendicular or orthogonal to *both* $\mathbf{u}$ and $\mathbf{v}$ and again points outward from the same origin $O$.

The expression $(\lVert\mathbf{u}\rVert \lVert\mathbf{v}\rVert \sin \theta)$ is a scalar. $\mathbf{n}$  is a [*unit vector*][unitvector] perpendicular to both $\mathbf{u}$ and $\mathbf{v}$ with a magnitude of one. Its direction can only be one of two as we have seen. To determine which, we use a convention called the [right-hand rule][rhr] or [right hand corkscrew rule.][rhcr]

[rhcr]: http://en.wikipedia.org/wiki/Right-hand_rule
[rhr]: http://mathworld.wolfram.com/Right-HandRule.html
[unitvector]: http://mathworld.wolfram.com/UnitVector.html

Imagine that you are rotating a corkscrew starting at $\mathbf{u}$ and moving toward $\mathbf{v}$. The direction in which the corkscrew advances is the positive direction for the unit vector $\mathbf{n}$.^[This is a convenient mathematical convention which is also in accord with actual physical situations.]

Since the corkscrew would then move *upwards,* that is the direction of both $\mathbf{w}$ and $\mathbf{n}$. The sole purpose of $\mathbf{n}$ is to indicate the direction of $\mathbf{w}$ as determined by the right-hand rule. The letter $\mathbf{n}$ is used to indicate that it is *normal* or *perpendicular* to the plane.

In the cross product, we have just met the $\times$ sign for multiplication again, but so far afield from its original use and meaning that it is almost unrecognizable except for form. Many mathematical terms and symbols are reused in different contexts with completely different meanings.

## Anti-commutativity

If we were to compute $\mathbf{v} \times \mathbf{u}$ we would turn the right-handed corkscrew from $\mathbf{v}$ to $\mathbf{u}$ and the cross-product vector would then point *downwards.* Its magnitude would however be the same as before. We therefore write:
$$
\mathbf{v} \times \mathbf{u} = - (\mathbf{u} \times \mathbf{v})
$$
The cross product is said to be [anti-commutative.][anticommutative] This means that if we reverse the order of the operands, there is a change in the sign of the result. In contrast, the dot product is commutative. So, each variety of vector multiplication has its own well-delineated properties.

## Applications of the cross product

Like the dot product, the cross product owes its definition and existence to its usefulness in physics. For example, the [torque][torque] vector $\boldsymbol{\tau}$^[Pronounced tau.] is defined by $\boldsymbol{\tau} = \mathbf{r}\times\mathbf{F}$. Torque is what makes the wheels of a car rotate. Visit the [torque hyperlink][torque] to see an animation and explanation of what the term "torque" means.

[torque]: http://en.wikipedia.org/wiki/Torque

# Outer product of two vectors

The outer product is the last of the four varieties of multiplication for vectors that we will consider here.

Recall that the dot product is defined as the scalar resulting from the multiplication of a $1\times n$ row vector with an $n \times 1$ column vector. The result was a $1 \times 1$ "vector" which is really a scalar. The two "inner dimensions" $n$ cancel out.

What happens if we swap the order and start multiplying an $n \times 1$ column vector with a $1\times n$ row vector? Would the two "inner dimensions," both equal to $1$, cancel out? And would we get an $n \times n$ "vector" of some sort?

Indeed we do. And the resulting product is a different mathematical object called a [matrix.][matrix] This is an example of a mathematical operation involving two known mathematical objects whose result gives rise to a new kind of mathematical object which then acquires a life and personality of its own.

[matrix]: http://en.wikipedia.org/wiki/Matrix_%28mathematics%29

This type of multiplication is called an [outer product,][outer] in contrast to the dot product which is a type of [inner product.][inner] It is also sometimes called a [tensor product][tensorproduct] in honour of the fact that we are ascending a hierarchy in [linear algebra][linalg] that starts with scalars and moves on to vectors and then to matrices and on to [tensors][tensor] with progressive generalizations at each step.

[outer]: http://en.wikipedia.org/wiki/Outer_product
[inner]: http://planetmath.org/encyclopedia/InnerProduct.html
[tensorproduct]: http://en.wikipedia.org/wiki/Tensor_product
[linalg]: http://en.wikipedia.org/wiki/Linear_algebra
[tensor]: http://en.wikipedia.org/wiki/Tensor_%28intrinsic_definition%29

<!-- Symbol ⊗ -->

## Outer product: symbol and example

The symbol for the outer product is $\otimes$ which is a "circled times" sign.

As already presaged, the outer product results from the multiplication of an $m \times 1$ column vector and a $1 \times n$ row vector to give an $m \times n$ matrix. As with the dot product, the "inner dimensions" of the two vectors, both equal to one here, "cancel out" in a manner of speaking, to yield a matrix of dimension $m \times n$.

In contrast to the dot product, however, the two vectors may have different numbers of elements. This is why the resulting matrix is not necessarily a square matrix with equal numbers of rows and columns, but rather has $m$ rows and $n$ columns. The values of $m$ and $n$ may be equal but are not required to be so.

Here is an example that will help you decipher how the outer product is computed:
$$
\begin{bmatrix}
1\\2\\3\\4\\
\end{bmatrix}
\otimes
\begin{bmatrix}
5 & 6 & 7\\
\end{bmatrix}
= %
\begin{bmatrix}
5 & 6 & 7\\
10 & 12 & 14\\
15 & 18 & 21\\
20 & 24 & 28\\
\end{bmatrix}
$$
Each element of the outer product matrix is the product of a pair of real numbers. What is new here is their position in the product matrix and their meaning in this context.

## The outer product is non-commutative

The outer product is not commutative. To see why, consider $\mathbf{u}$ as an $m \times 1$ column vector and $\mathbf{v}^{T}$ as a $1 \times n$ row vector. Then, $\mathbf{u} \otimes \mathbf{v}^{T}$ gives an $m \times n$ matrix. But $\mathbf{v} \otimes \mathbf{u}^{T}$ gives an $n \times m$ matrix. The two are obviously not constrained to be equal.

## Applications of the outer product

The outer product finds application in fields like physics, electrical engineering, and statistics. Whether application precedes or follows the original mathematical development, whenever a new mathematical object persists, it is almost always due to its usefulness for some purpose or other.

The outer product of two vectors leads to matrices and the *multiplication of matrices* is yet another variety of multiplication. It is the last we will consider in this blog.

# Matrices

We have already seen that a matrix consists of a lot more "numbers in a teabag" in which order is respected. An $m \times n$ matrix is an array of $m$ rows and $n$ columns of numbers. A row vector is just a [degenerate][degenerate] matrix with one row, i.e., $m = 1$, whereas a column vector is a degenerate matrix with a single column, i.e., $n = 1$. The plural of *matrix* is *matrices.*

[degenerate]: http://en.wikipedia.org/wiki/Degenerate_%28mathematics%29

Hark back to complex numbers and remember how the real numbers are merely complex numbers whose imaginary parts are zero. We hear a similar refrain with matrices, vectors, and scalars. Vectors are matrices with one column or one row. A matrix with a single column and row is a scalar.

Each time a mathematical object is generalized, we will see a previously defined object appearing as a degenerate case of the new object. This provides a link between the new and the old and also ensures that consistency is maintained in this evolutionary spiral.

It is customary to refer to a matrix by an uppercase letter. The individual numbers, or *elements,* of a matrix are usually denoted by a lowercase letter and given double subscripts denoting their position in the matrix.

The element $a_{ij}$ in a matrix $A$ is the element occupying the $i$th row and the $j$th column in the matrix. For the subscript, the row number is written first followed by the column number. If all this seems too abstract, here is a concrete example of a $2 \times 3$ matrix:
$$
A = \left[
\begin{matrix}
1 & 3 & 5\\
2 & 4 & 6\\
\end{matrix}
\right]
$$
where we have $a_{12} = 3$ and $a_{21} = 2.$

## Applications of matrices

Matrices arose naturally from the study and solution of [systems of linear equations.][linear] They are also useful in succinctly embodying geometric transformations of points in the two-dimensional Cartesian plane. They are profoundly useful in electrical engineering, physics, economics, and many other fields.

Indeed, if one considers matrices as a class of mathematical object, what we do with them and the meanings we assign to these actions are largely limited only by our imagination and the mathematical consistency of the results. This is how new mathematics is built up from the old, and constantly expanded in scope, variety, and application.

[linear]: http://mathworld.wolfram.com/LinearSystemofEquations.html

# Matrix multiplication

The product of matrix $A$ with matrix $B$ is denoted by $AB$ with no intervening symbol. If matrix $A$ has dimensions $m \times n$, and matrix $B$ has dimensions $p \times q$, and we wish to multiply them *in that order,* we first need to ensure that the "inner dimensions," $n$ and $p$ in this case, are indeed equal. If $n = p$ the two matrices $A$ and $B$ can be multiplied together to yield the $m \times q$ matrix $AB$, and the two matrices are said to be [conformable.][conformable] Otherwise, the product $AB$ does not exist. Conversely, if $n \neq p$ but $q = m$, the matrix product $BA$ exists and the result is a $p \times n$ matrix.

[conformable]: http://en.wikipedia.org/wiki/Conformable_matrix

Any two real numbers may be multiplied together, but the product of any two matrices need not necessarily be defined. As the mathematical objects that we deal with become increasingly complex, additional constraints often apply to operations on them.

## Example of matrix multiplication

<!--Insert example of matrix multiplication left-aligned here.-->

[caption id="attachment_81" align="alignleft" width="298"]<a href="http://swanlotus.org/wp-content/uploads/matrixmult.png"><img src="http://swanlotus.org/wp-content/uploads/matrixmult.png" alt="How the product of two matrices is computed." width="298" height="101" class="img-responsive size-full wp-image-81" /></a> How the product of two matrices is computed.[/caption]

Here is an example of matrix multiplication. We group a whole row on the left matrix and multiply it element-wise with a whole column on the right matrix and add all the products. In this case, we compute $(1)(7) + (2)(9) + (3)(1) = 7 + 18 + 3 = 28$.

This is reminiscent of the dot product. Indeed, matrix multiplication may be viewed as a generalization of the dot product for matrices and the dot product as a degenerate case of matrix multiplication in which the left matrix is a row vector and the right matrix is a column vector.

## Non-commutativity

For any two matrices $A$ and $B$, the matrix product $AB$ exists only if the matrices are conformable, i.e., the number of columns in $A$ equals the number of rows in $B$. Likewise, the product $BA$ exists only if the number of columns in $B$ equals the number of rows in $A$.

If both matrices are square and of the same dimensions, is their multiplication commutative? In other words, does $AB = BA$?

In mathematics a single exception falsifies the rule. Let us consider the following simple example:
$$
\begin{aligned}
A = \left[
\begin{matrix}
1 & 3\\
2 & 4\\
\end{matrix}
\right]
&\quad
B = \left[
\begin{matrix}
5 & 7\\
6 & 8\\
\end{matrix}
\right]
\\
AB = \left[
\begin{matrix}
23 & 31\\
34 & 46\\
\end{matrix}
\right]
&\quad
BA = \left[
\begin{matrix}
19 & 43\\
22 & 50\\
\end{matrix}
\right]
\end{aligned}
$$
Clearly matrix multiplication is not commutative. In any matrix product, the matrix on the left *pre-multiplies* the matrix on the right. Conversely, the matrix on the right *post-multiplies* the matrix on the left.

## Geometric effects of matrix multiplication: 2D case

A $2\times 2$ matrix may be interpreted as a geometric transformation of points on the Cartesian plane. Indeed, this is often how you might have first encountered matrices as mathematical objects. Suppose we wish to reflect an arbitrary point $(a, b)$ using the $y$ axis as a mirror. With a little visualization, you will agree that image point is $(-a, b)$.

How might a matrix accomplish this? If we *post-multiply* a matrix by a vector, we will get another vector. We need to transform $a$ to $-a$ while leaving $b$ unchanged. A little thought or tinkering with matrices will show that required matrix is as shown below:
$$
\begin{bmatrix}
-1 & 0\\
0 & 1\\
\end{bmatrix}
\begin{bmatrix}
a\\b\\
\end{bmatrix}
= %
\begin{bmatrix}
-a\\b\\
\end{bmatrix}
$$
Because $a$ and $b$ are arbitrary, we may associate a [reflection][reflection] across the $y$ axis with the above matrix. Likewise, it may be shown that a counter-clockwise rotation about the origin $O$ through an angle $\theta$ with the positive $x$-axis is associated with the matrix
$$
\begin{bmatrix}
\cos\theta & -\sin\theta\\
\sin\theta & \cos\theta\\
\end{bmatrix}
$$
We can then chain together such [transformations][transformations] by multiplying the relevant matrices in the correct order. Those who author video games use concepts such as these to program their games.

[reflection]: http://planetmath.org/encyclopedia/DerivationOf2DReflectionMatrix.html
[transformations]: http://en.wikipedia.org/wiki/Transformation_matrix

Pay attention to the interplay between the symbolic and the pictorial, between the algebraic and the geometric aspects of the one operation. If you develop the ability to maintain this "dual vision" as you study mathematics, it will be helpful for your own unfolding understanding. A strange algebraic object correctly used might work geometric miracles right under your nose, and vice versa.

And that completes my survey of varieties of multiplication. I do not know if you are heaving a sigh of relief but I certainly am! We have only scratched the surface here. There are many more varieties of multiplication and each serves a purpose. You will discover them in the course of your studies.

# Summary

This blog has been a journey through mathematics tracking multiplication as the single theme.

Multiplication happens between two mathematical objects to yield a third. In this survey, we have encountered *four* different mathematical objects:

#.  Real numbers
#.  Complex numbers
#.  Vectors
#.  Matrices

The way the multiplication is accomplished as well as its meaning differ with context. We have met *seven* different varieties of multiplication here:

#.  Real multiplication
    -   product is real
    -   commutative
#.  Complex multiplication
    -   product is complex
    -   commutative
#.  Multiplication of a vector by a scalar
    -   product is a vector
    -   magnitude and direction depend on value of scalar
#.  Dot product of two vectors
    -   product is a scalar
    -   commutative
    -   measures "similarity" or "alignment" between the two vectors
    -   involves cosine of angle between the two vectors
#.  Cross product of two vectors
    -   product is a third vector orthogonal to the two vectors
    -   anti-commutative
    -   involves the sine of the angle between the two vectors
#.  Outer product of two vectors
    -   product is a matrix
    -   not commutative
#.  Matrix product
    -   product is another matrix
    -   not commutative

We have made glancing acquaintance with logarithms and how they transform multiplication into addition. We have also skimmed over the trigonometric functions, given their place in the theory of vectors.

If you carry away nothing else from this blog than a few *qualitative ideas,* they should include some of these:

#.  Multiplication is a binary operation: it takes place between two compatible mathematical objects.

#.  Mathematical objects are more varied than animals in a zoo. Each has its own nature, diet, habitat etc. Apart from the real numbers, we have encountered complex numbers, vectors, and matrices here.

#.  Multiplication is commutative for the real and complex numbers but not for necessarily for vectors or matrices.

#.  The meaning of a product has evolved a long way from the original "three lots of four" in the context of whole numbers. The product of a multiplication might yield an object that is quite different from the multiplicand and multiplier. We have seen scalars popping out of dot products of two vectors and matrices issuing from the outer product of two vectors.

#.  The ideas of zero and one, of symmetry, of commutativity, of consistency of definitions, of projections, and of orthogonality, are worth remembering because they pervade much if not all of mathematics.

May the product be with you!

# Afterword

This blog started off as something that promised to be short and fizzy, tangy and piquant. But it soon became a little like hot treacle: too hot to swallow and too sticky to spit out. It transmogrified into a jumboblog. If you have stuck with me this far, I applaud and thank you.

The thought crossed my mind that I could split this blog into several sub-blogs. But I soon gave up that idea because the connectedness of the thread will be lost in the segmentation. So, here you have the whole hog and the whole blog.

Mathematics is like a pastry puff: only the layers never seem to end and neither does the puff! I needed to cap the well at some point, and matrices seemed as good a place to stop as any. The pleasures of many other types of multiplication await your future explorations! :-)

As an independent scholar, I work in isolation without the benefits of a university environment or consultation with peers. So, an error of fact or fancy is all the more likely in what I write. If you are mathematically inclined, and have spotted any mistakes here, please let me know.

If you wish to read this blog as a single PDF document you may get it from the [downloads page.][downloads]

[downloads]: http://swanlotus.org/downloads

----------------------



