---
title: "Expressions, Equations, and Formulae"
author: "R (Chandra) Chandrasekhar"
date: 2025-02-10
modified: 2025-02-15
category: Mathematics
tags: Simkin Tales, SAS, algebra
summary: 'My dear friend, Solus "Sol" Simkin, casually asked me one summer day if I would write a blog demystifying the meanings and uses of four mathematical terms: expression, equation, formula, and differential equation. I thought that this was spoken in jest, and let his request lie in a dusty corner of my mind, as a memento to his humour.'
opengraphimage: four-stages-of-learning.png
---

## An unforeseen challenge

My dear friend, Solus "Sol" Simkin, casually asked me one summer day if I would write a blog demystifying the meanings and uses of four mathematical terms: expression, equation, formula, and differential equation. I thought he spoke in jest, and let his request lie in a dusty corner of my mind, as a memento to his humour.

Imagine my surprise when he accosted me again after two months and asked if I had put pen to paper to explain the four mathematical terms.

"Surely, you cannot be serious, Sol", I said. "Who would want to know something as fundamental as this? With the exception of differential equations, it should have been mostly taught by the fourth year of elementary school mathematics."

"You would be astounded to know how many so-called [STEM](https://en.wikipedia.org/wiki/Science,_technology,_engineering,_and_mathematics) _graduates_ and _postgraduates_---who have passed through the degree mill---are ignorant of these _definitions_, let alone their _purpose_," replied Sol. "As an added bonus, write your blog so that it is also perfectly clear to elementary school students, going on to middle school. It will serve as a valuable review for them."

"Differential equations are in an entirely different class of mathematical sophistication from the other three topics. They should be excluded from the elementary treatment you are proposing," I said to Sol.

Never one to be pig-headed, Sol agreed.

Somewhat diffidently, I took up his challenge, complete with its stipulations. This blog was born after much cogitation, and is really my first attempt at presenting and exemplifying fundamental definitions, usually taught in elementary school.^[I usually find it easier to explain concepts to students in middle school and beyond, rather than to elementary school students.] Any reader who still finds it conceptually muddy or murky is cordially invited to [write to me](mailto:feedback.swanlotus@gmail.com).

I have borrowed liberally from material contained in my book-manuscript [_Secrets of Academic Success_](https://swanlotus.netlify.app/sas-manuscript/SAS-partial.pdf), henceforth referred to as _SAS_. Perhaps the earnest student will be inspired to look for clarification there as well. \emojifont :wink:  \normalfont

## Starting at the beginning

My decades of muddling in matters scholastic have convinced me that there are _four_ stages in all learning, as shown in [@fig:four-stages]. These have been explained _in extenso_ in my _SAS_ book, and the interested reader is directed to the first chapter of that book [@sas] for a more substantial discussion.

![Learning any subject involves four stages as shown above [@sas].]({attach}images/four-stages-of-learning.png){#fig:four-stages width=90% .modal-target}

All knowledge begins with _naming_. You cannot analyze or understand what you cannot name. In specialized subject areas, names are called _definitions_. In this blog, we have the following _four_ mathematical names to define, understand, analyze, and apply:

#. expression;
#. equation; and
#. formula.

After naming, we move to _knowing_. At this stage, we systematically study the subject that has been defined to the extent that we are familiar with it _ourselves_, without recourse to a teacher, a textbook, or other reference material.

The third stage, _doing_, involves _application_ of the newfound concept that has already been defined and studied. If you were learning to fly an aircraft, you could not claim to be a pilot, based on mere theoretical knowledge. You must practise flying---first under supervision, and later solo---so that you accumulate enough experience  to claim competence in that art.

Once the doing stage has been mastered, it becomes effortless: this is the _being_ stage of knowledge. You are now a master at what you started out to learn. You can start teaching others.

Every subject of study---whether academic like mathematics, or practical like surgery---involves these four steps and their mastery. By steadily moving from one stage to another, and finally by graduating to the being stage, you achieve mastery of your subject.

This blog is mainly concerned with the naming stage, but our discussion will not be complete without a modicum of knowing and doing as well. Let us set to.

## Expressions

The word [expression](https://www.etymonline.com/search?q=expression) literally means "(something) that is pressed out". In the context of mathematics, an expression is a collection of numbers or symbols that are written out or expressed. Sometimes, the expression might seem complicated, but it might also be amenable to simplification.

Let us start with something basic:
$$
2 + 4
$${#eq:two-plus-four}
It is a mathematical expression for adding four to two. But is that not $6$? So, is the expression $2 + 4$ or is it $6$? The _expression_ itself is _two plus four_. Its _value_ is six.

But if we know that $2 + 4 = 6$, why can't we say that the expression is $6$? We _may_ if we were asked to _simplify_ the expression. But the expression itself remains as it was originally written.

Let us move up a notch. Look at:
$$
\sqrt{25}
$$ {#eq:sqrt5}
What does it mean? Now you need to know the language of mathematics. What does $\surd$ stand for? It is a stylized letter "r" for the word [radix](https://en.wikipedia.org/wiki/Square_root) which stands for the positive square root of the number inside the symbol. What number multiplied by itself will give us $25$? Well, $5 \times 5$ equals $25$.

But is that all? What about $(-5) \times (-5) = 25$? That too is correct. So, what does $\sqrt{25}$ really stand for? It is _defined_ to be the _positive_ square root of $25$ which is $5$.

The case of $-5$ is catered for by the expression $-\sqrt{25}$. We may write $-\sqrt{25} = -5$; thus, we do not have notational ambiguity.

### Simplifying an expression

In school, you might have been asked to _simplify an expression_. In that case, you are being asked to produce a result that is the same as the original expression but is simpler in form and appearance. For example, we could write:
$$
2 + 4 = 6
$$ {#eq:six}
Look! What have we done? We have produced an _equation_. The sum of the two numbers on the left hand side (LHS) equals the single number on the right hand side (RHS).

We will consider _equations_ a little later, but for now, bear in mind, that to simplify an expression, we need to find a _mathematical alias_ for it that _equals_ the original expression, but is simpler in form.

### Enter algebra

After we mature a little more mathematically, we start dealing with numbers whose values are not known. We use _letters_ to denote these unknown quantities, much like we use _pronouns_ instead of _proper nouns_ for the names of people we do not know. Let us take a look at a potentially confusing expression:
$$
\frac{(\frac{a}{b})}{c}
$${#eq:abc}
What does it mean? Can it be simplified? If so, what is its simplified form? Does it convey any meaning? What is the purpose of the parentheses on top?

Mathematics is a language in which ambiguity is prohibited by strictly enforced conventions. We already saw that with the $\surd$ sign.

Does [@eq:abc]^[It is not an equation but an expression; my software did not allow that degree of customization. Please excuse this inaccuracy.] mean more than one thing? Not if we know our conventions. The expression consists of a value on top---supposed  divided by a value at the bottom. But the value at the top is itself a fraction, that must be evaluated first because its numerator and denominator are bracketed or enclosed in parentheses:
$$
\frac{a}{b}
$$ {#eq:a-over-b}
This is now divided by the value $c$. [We know](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one#the-multiplicative-inverse-in-mathbbz-mathbbq-and-mathbbr) that _dividing_ by $c$ amounts to _multiplying_ by $\frac{1}{c}$. The expression may therefore be simplified so:^[Refer to the chapter "Arithmetic Revisited" in the _SAS_ book [@sas] if you are still unclear about what follows.]
$$
\begin{aligned}
\frac{\frac{a}{b}}{c} &= \frac{a}{b} \times \frac{1}{c}\\
&= \frac{a \times 1}{b \times c}\\
&= \frac{a}{bc}
\end{aligned}
$$ {#eq:simplified}
Note that the horizontal line separating the numerator and the denominator is called the _vinculum_ and it is long enough to cover _both_ $b$ and $c$ in the denominator.

If we did not have access to mathematical typesetting, this fraction would be written unambiguously as $a/(bc)$ where the two terms in the denominator must be grouped together by parentheses. If instead, this was written as $a/bc$ the expression could also be correctly read as $(a/b) \times c = (ac)/b$ which is different from $a/(bc)$. This is reason enough to justify the use of brackets in mathematical expressions, which we take a look at next.

### BIDMAS

When a mathematical expression is evaluated, we work from right to left, respecting [operator precedence](https://en.wikipedia.org/wiki/Order_of_operations). This is a convention that lays down a hierarchy or protocol about which operation is performed before which. It is often reduced to the [mnemonic](https://www.dictionary.com/browse/mnemonic) [BIDMAS](https://en.wikipedia.org/wiki/Order_of_operations#Mnemonics).

The initial _B_ stands for brackets, or parentheses. Bracketed expressions are evaluated first. Then we evaluate _I_ or indices: powers and square roots. The _DMAS_ stands for division, multiplication, addition, and subtraction in that order.

This _convention_ ensures that everyone is [on the same page](https://www.gingersoftware.com/content/phrases/on-the-same-page) when evaluating mathematical expressions. All will get the same result. Ambiguity is hence exiled from the mathematical landscape. 

If you love mathematical symbols, you might wish to remember this unpronounceable visual mnemonic instead:
$$
()x^y\div\times+-
$$
Choose whichever mnemonic appeals more to you.

### A visual metaphor for mathematical expressions

My preferred visual image for a mathematical expression is a tied-up bundle of clothes:

![Bundle of clothes as a vsiual metaphor for a mathematical expression.]({attach}images/bundle-of-clothes-in-disarray.jpg){#fig:clothes-bundle width=80% .modal-target}

## Equations

We now look at _equations_. All equations embody the $=$ symbol, which is called an _equals sign_. It is a mathematical shorthand to denote that what is on the LHS of this symbol is equal to what is on the RHS, however different they may appear to be. We have previously encountered this symbol in the very simple equation
$$
2 + 4 = 6.
$$

### Operations and relations

Before venturing further, we need to distinguish between _operations_ and _relations_.^[I have avoided a set theoretic framework and notation to keep this blog within the grasp of young students.]

Addition, multiplication, exponentiation, etc., are familiar [binary operations](https://en.wikipedia.org/wiki/Binary_operation), which take two inputs or _operands_, from the same set, and produce a single output or result, again from the same set, as in 
$$
2 + 4 = 6.
$$

A [binary relation](https://en.wikipedia.org/wiki/Binary_relation), on the other hand, associates elements in one set to elements in another set via a relation $R$. Formally, if $x \in X$ and $y \in Y$ and $R$ is a relation between the two, we denote the relation by the _ordered pair_ $(x, y)$, written so:
$$
xRy = (x, y)
$$ whenever the relation $R$ holds.

Equality is a binary relation in which $R$ is replaced by the better known $=$ symbol. It is an [equivalence relation](https://en.wikipedia.org/wiki/Equivalence_relation) with three properties:  [reflexive](https://en.wikipedia.org/wiki/Reflexive_relatio), [symmetric](https://en.wikipedia.org/wiki/Symmetric_relation), and [transitive](https://en.wikipedia.org/wiki/Transitive_relation). 

#.  Reflexivity means that every number is equal to itself: $2 + 4 = 2 + 4$ and $6 = 6$.
#.  Symmetry means that if $2 + 4 = 6$, then $6 = 2 + 4$. Note that this is _not_ [commutativity](https://en.wikipedia.org/wiki/Commutative_property), which applies to operands, not to relations.
#.  Transitivity means that if $2 + 4 = 6$ and if $6 = 3 + 3$, then $2 + 4 = 3 + 3$.

What is the need for stating these blindingly obvious properties? Were they singled out by a bunch of people who were [out to lunch](https://www.dictionary.com/browse/out-to-lunch)? You may be totally excused if you thought so.

But the power of these properties lies in their ability to be generalized beyond the immediate context in which they arose: something you would appreciate as you plumb the deeper depths and higher heights of mathematics, with the passage of time.

In sum, a binary operation works on two inputs to produce a third output. A binary relation, like equality, on the other hand, establishes a relationship---sameness in this case---between two mathematical elements.

### A visual metaphor for equality

A two-pan balance is an excellent visual metaphor for equality. Even though the material in each pan might be different, when the pans balance, we have equality. This means each pan contains the same weight or mass. It is the principle behind how we buy foodstuffs. And it is identical to the principle of equality as a mathematical relation.

![A two-pan balance in equilibrium, indicating that the mass on the left hand side equals that on the right hand side, even though the contents differ.]({attach}images/two-pan-balance-in-equilibrium.jpg){#fig:two-pan-balance width=90% .modal-target}

### An example simple equation

Equations demonstrate their power when used to determine unknowns. A _simple_ equation has a single unknown and some statements that can be used to _solve for_ the unknown. For example, 

>There are twice as many girls as boys in my class of thirty students. How many are boys?

Those of you who can think in numbers might have mentally solved the problem by juggling numbers in your head: 10 boys and 20 girls.

What if you cannot do that? The power of mathematics lies in its discovery of _systematic methods_ to solve all manner of problems, regardless of the abilities of the person solving the question.

The primary skill in dealing with such _word questions_ is the ability to translate the written words into mathematical expressions and equations.

The first step is to define the variables or unknowns. What is it that we are asked to determine? The number of boys. Let $b$ be the number of boys.

There are twice as many girls as boys. If $g$ is the number of girls, $g = 2b$ as they are double the number of boys.

The total number of students is $30$.

Here is the logical thread we follow:
$$
\begin{aligned}
g + b &= 30; \text{ but $g = 2b$, and substituting, we get}\\
2b + b &= 30; \text{ adding}\\
3b &= 30; \text{ dividing by $3$ on both sides to get $b$}\\
b &= 10; \text{ and we are done.} 
\end{aligned}
$$

### The "nomials"

Let us detour a little to review expressions again. Expressions that satisfy certain conditions appear again and again, enough to warrant being given special names. We consider here, [monomial](https://en.wikipedia.org/wiki/Monomial), [binomial](https://en.wikipedia.org/wiki/Binomial_(polynomial)), [trinomial](https://en.wikipedia.org/wiki/Trinomial), and [polynomial](https://en.wikipedia.org/wiki/Polynomial).

A monomial is defined as a constant, a variable, or a product of variables, each raised to a non-negative integer exponent. It is an expression consisting of just _a single term_.

A binomial is the sum of two monomials. A trinomial is the sum of three monomials. And, finally, a polynomial the sum of three or more monomials. Note that [by sum, we also include subtraction](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one).

A single number by itself like $42$ or $-17$ is a  (constant) monomial. When the number appears as part of a variable, like $42x^2$, the $42$ is called the _coefficient_ of the variable $x^2$. Note that [a standalone constant may also be viewed as the coefficient of a variable raised to the zeroth power](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one), e.g, $42 = 42x^{0}$. In this blog, we deal only with real coefficients.

|    Name    | Prefix | Meaning | Examples |
|:-----------|:------------|:---------------------|:--------------------|
| Monomial | mono | one term | $12, a, cx^2, \frac{b}{3}, -97, xyz$ |
| Binomial | bi | two terms | $a - b, 3r^4 - pq, \frac{1}{5}x + uvw$ |
| Trinomial | tri | three terms | $x^2 - 2x + 1, u + v + w$ |
| Polynomial | poly | many terms | $25x^3 + 4y^2 + z^4 + 37$ |

: Monomials, binomials, trinomials, and polynomials {#tbl:nomials}

What sort of terms do _not_ qualify to be one of the "nomials"? What about $c^{\frac{1}{5}}$? A fractional power like $\frac{1}{5}$ is not a non-negative integer. So, it does not qualify. Consider also $x^{-5}$. No again, as $-5$ is a negative integer.

### Quadratics

Thus far we have encountered _linear_ equations, in which the highest power of the variable is $1$, and the other terms are constants. But just as numbers can be multiplied, so too can expressions containing variables. Consider 
$$
\begin{aligned}
(x - 5)^{2} &= (x - 5)(x - 5); \text{ multiplying the two terms}\\
&= x^2 +x(-5) + (-5)x + (-5)(-5)\\
&= x^2 - 10x + 25
\end{aligned}
$$ {#eq:quad-expand}
The expression on the left is a binomial multiplied by another binomial and the product is a trinomial. But this product is also called a [quadratic polynomial](https://en.wikipedia.org/wiki/Quadratic), because it is a square. Indeed any expression in one variable in which the highest power of the variable is $2$ qualifies as a quadratic.^[You don't need this here, but just for completeness, if there are more than one variable and all terms are of degree $2$, e.g., $x^2 + xy + y^2$, the expression is called a [quadratic form](https://en.wikipedia.org/wiki/Quadratic_form).] Be aware that the same expression could be called by different names depending upon the context in which it is viewed.

When a quadratic polynomial is equated to zero, we have a [quadratic equation](https://en.wikipedia.org/wiki/Quadratic_equation). Let us convert the quadratic in [@eq:quad-expand] into the quadratic equation 
$$
\begin{aligned}
x^2 -10x + 25 &= 0\\
(x - 5)^2 &= 0\\
(x - 5)(x - 5) &= 0\\
x &= 5.
\end{aligned}
$$ {#eq:repeated-root}
This is a case of a quadratic that is a perfect square and the root $x = 5$ is _repeated_. See [@fig:quadratic-graphs] where the upper curve is _tangent_ to the $x$-axis.

But what happens when the root is not repeated? Let us look at $x^2 - 25 = 0$:
$$
\begin{aligned}
x^2 - 25 &= 0; \text{ difference of two squares}\\
(x + 5)(x - 5) &= 0\\
x &= -5 \text{ or} +5.\\ 
\end{aligned}
$$ {#eq:plus-minus-five}
In this case we have two _distinct_ roots: $x = \pm5$. See [@fig:quadratic-graphs] where the lower curve intersects the $x$-axis at two distinct points.

![Graphs of the two quadratic functions discussed in the text. The solutions to the repective quadratic equations are the values of $x$ at which the curves intersect the $x$-axis.]({attach}images/quadratic.svg){#fig:quadratic-graphs width=80% .modal-target}

### Completing the square and the quadratic formula

Around Year 9 or 10 of the middle school, you would have been exposed to the [quadratic formula](https://en.wikipedia.org/wiki/Quadratic_formula) for computing the roots of a quadratic equation, without recourse to factorization or graphing, as we have done above.

Let us derive the quadratic formula by a method known as ["completing the square"](https://en.wikipedia.org/wiki/Completing_the_square). The generic quadratic equation is 
$$
ax^2 + bx + c = 0.
$$ {#eq:orig-quad}
By applying the same operations to both sides, we manipulate [@eq:orig-quad] to resemble, term by term, a perfect square, and then extract the root without fuss. Here are the steps in the algorithm:

#. Divide through [@eq:orig-quad] by $a$ to make the coefficient of $x^2$ one. Because zero divided by any non-zero number is still zero, we have
$$
\frac{a}{a}x^2 + \frac{b}{a}x + \frac{c}{a} = x^2 + \frac{b}{a}x + \frac{c}{a} = 0.
$$ {#eq:no-a}

#. Note that the term containing $x$ in a squared binomial term has a factor of $2$. So, we divide the term containing $x$ by $2$ and then multiply it by $2$ thus:
$$
\left(\frac{b}{a}\right)x = 2\left(\frac{b}{2a}\right)x.
$$

#. The equation now becomes
$$
x^2 + 2\left(\frac{b}{2a}\right)x + \frac{c}{a} = 0.
$${#eq:normalized-one}

#. Observe that 
$$
\begin{aligned}
\left(x + \frac{b}{2a}\right)^2 &= x^2 + 2\left(\frac{b}{2a}\right)x + \left(\frac{b}{2a}\right)^2\\
&= x^2 + 2\left(\frac{b}{2a}\right)x + \left(\frac{b^2}{4a^2}\right).
\end{aligned}
$${#eq:extra-term}

#. Note that when [@eq:extra-term] is compared to [@eq:normalized-one], the constant term $\left(\dfrac{b^2}{4a^2}\right)$ has now been inserted extraneously by virtue of our simulating a square. It must be removed by subtraction to restore the original [@eq:normalized-one], so that our equation becomes:
$$
\begin{aligned}
\left(x + \frac{b}{2a}\right)^2 - \left(\frac{b^2}{4a^2}\right) + \frac{c}{a} &= 0; \text{ leading to}\\
\left(x + \frac{b}{2a}\right)^2 &= \left(\frac{b^2}{4a^2}\right) - \frac{c}{a}\\
&= \frac{b^2}{4a^2} - \frac{4ac}{4a^2}\\
&= \frac{b^2 - 4ac}{4a^2}; \text{ take square roots on both sides}\\
\left(x + \frac{b}{2a}\right) &= \pm\sqrt{\frac{b^2 - 4ac}{4a^2}}; \text{ transpose $\frac{b}{2a}$ from left to right}\\
x &= -\frac{b}{2a} \pm \frac{\sqrt{b^2 - 4ac}}{2a}\\
&=\frac{-{b} \pm \sqrt{b^2 - 4ac}}{2a}
\end{aligned}
$${#eq:quad-formula}
Some of you might have found it hard to keep up with the symbolic jugglery to arrive at [@eq:quad-formula] and I sympathize with you.

But there is a geometric side to most mathematical problems. So, if pictures appeal more to you, I suggest watching a YouTube video or three to better understand the dance of the symbols above. I recommend these three videos to help you understand the motivation and geometric basis for the quadratic formula, arrived at by completing the square:

a.  [Completing the Square (visual proof)](https://www.youtube.com/watch?v=T0HyWIFbsHQ) [@mvp-2022]; and

a.  [But where does the quadratic formula come from?](https://www.youtube.com/watch?v=7Q4h1YTYgnE) [@foggy-maths-2023].

a.  [Beautiful Visual Explanation of Completing the Square](https://www.youtube.com/watch?v=McDdEw_Fb5E) [@woo-2016]

I am confident that at least one of these explanations will resonate with you, and that you will get a [eureka moment](https://nesslabs.com/eureka-moments) once the method clicks. It is only then that you have made some of this knowledge your own through self-effort.

As always, there is more to the quadratic formula than has been discussed here. If the value of the expression under the square root, $(b^2 - 4ac)$, called the [discriminant](https://www.britannica.com/science/discriminant), helps determine the _nature_ of the roots of the quadratic equation, without actually solving the equation:

a. If the discriminant is positive, the roots will be real and distinct;

a. If the discriminant is zero, there will be a real, repeated root;

a. If the discriminant is negative, the roots will be a [complex conjugate](https://www.mathcentre.ac.uk/resources/sigma%20complex%20number%20leaflets/sigma-complex6-2009-1.pdf) pair.

There are other interesting properties as well, but I will stop here.


### Identities

A mathematical [identity](https://en.wikipedia.org/wiki/Identity_(mathematics)) is an equation or equality which is true regardless of the values assumed by the variables in it. The two sides of an identity are usually quite different in appearance, and it is this difference that confers on them their importance and usefulness.

Simply by expanding and multiplying out, we know that
$$
(a+b)^2 = a^2 +2ab + b^2. 
$$
To stress that this is no ordinary equation but an identity, it may also be written as
$$
(a+b)^2 \equiv a^2 +2ab + b^2.
$$
The three-line symbol is called a [triple bar](https://en.wikipedia.org/wiki/Triple_bar), although the the more youthful among us might recognize it as the [hamburger button](https://en.wikipedia.org/wiki/Hamburger_button).

Identities arise in different contexts and the Pythagorean theorem, applied to the unit circle, gives rise to the well known identity
$$
\cos^2\theta + \sin^2\theta \equiv 1.
$$

## Formulae

Formulae arise in different contexts. Water when expressed chemically is H~$2$~O. The word [formulation](https://www.vocabulary.com/dictionary/formulation) refers to a collection of ingredients prepared in a specific recipe to serve a specific purpose. An ancient [vitality enhancing tonic](https://pmc.ncbi.nlm.nih.gov/articles/PMC6571565/#:~:text=Chyawanprash%20is%20formulated%20by%20processing,richest%20source%20of%20vitamin%20C), for example, consists of dozens of ingredients combined in a specified way.

But the [formulae](https://en.wikipedia.org/wiki/Formula) we refer to here are succinct mathematical statements whose truth has been established, and whose use saves time and effort. In this sense, all [theorems](https://en.wikipedia.org/wiki/Formula) are formulae. They save us having to re-invent the wheel each time we are faced with an already-solved task.

Early encounters with mathematical formulae arise with simple equations for the area of a triangle (A = $\frac{1}{2}bh$), the circumference of a circle ($C = 2\pi r$), or the volume of a sphere ($V = \frac{4}{3}\pi r^3$).

The importance of formulae as conveniences is summarized by this quotation from the famous computer scientist [Edsger Dijkstra](https://en.wikipedia.org/wiki/Edsger_W._Dijkstra):

>"A picture may be worth a thousand words, a formula is worth a thousand pictures."

## Acknowledgements

I acknowledge the valuable contributions from several readers of my blog who shall remain anonymous. Their insights, carrying the fresh viewpoints of students, helped to clarify much that was still unclear.

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./expressions-equations-formulae.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/expressions-equations-formulae.pdf>
:::
