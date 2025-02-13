---
title: "Expressions, Equations, and Formulae"
author: "R (Chandra) Chandrasekhar"
date: 2024-02-14
modified: 2024-02-14
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

Somewhat diffidently, I took up his challenge, complete with its stipulations. This blog was born after much cogitation, and is really my first attempt at presenting and exemplifying fundamental definitions, usually taught in elementary school^[I usually find it easier to explain concepts to students in middle school and beyond. rather than to elementary school students.]. Any reader who still finds it conceptually muddy or murky is cordially invited to [write to me](mailto:feedback.swanlotus@gmail.com).

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
\frac{\frac{a}{b}}{c}
$${#eq:abc}
What does it mean? Can it be simplified? If so, what is its simplified form? Does it convey any meaning?

Mathematics is a language in which ambiguity is prohibited by strictly enforced conventions. We already saw that with the $\surd$ sign.

Does [@eq:abc]^[It is not an equation but an expression; my software did not allow that degree of customization. Please excuse this inaccuracy.] mean more than one thing? Not if we know our conventions. The expression consists of a value on top divided by a value at the bottom. But the value at the top is itself a fraction:
$$
\frac{a}{b}
$$ {#eq:a-over-b}
This is now divided by the value $c$. [We know](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one#the-multiplicative-inverse-in-mathbbz-mathbbq-and-mathbbr) that _dividing_ by $c$ amounts to _multiplying_ by $\frac{1}{c}$. The expression may therefore be simplified so^[Refer to the chapter "Arithmetic Revisited" in the _SAS_ book [@sas] if you are still unclear about what follows.]:
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

Before venturing further, we need to distinguish between _operations_ and _relations_^[I have avoided a set theoretic framework and notation to keep this blog within the grasp of young students.]. 

Addition, multiplication, exponentiation, etc., are familiar [binary operations](https://en.wikipedia.org/wiki/Binary_operation), which take two inputs or _operands_ and produce a single output or result, as in 
$$
2 + 4 = 6.
$$

Equality is an [equivalence relation](https://en.wikipedia.org/wiki/Equivalence_relation) that is [reflexive](https://en.wikipedia.org/wiki/Reflexive_relatio), [symmetric](https://en.wikipedia.org/wiki/Symmetric_relation), and [transitive](https://en.wikipedia.org/wiki/Transitive_relation). 

#.  Reflexivity means that every number is equal to itself: $2 + 4 = 2 + 4$ and $6 = 6$.
#.  Symmetry means that if $2 + 4 = 6$, then $6 = 2 + 4$. Note that this is _not_ [commutativity](https://en.wikipedia.org/wiki/Commutative_property) which applies to operands, not to relations.
#.  Transitivity means that if $2 + 4 = 6$ and if $6 = 3 + 3$, then $2 + 4 = 3 + 3$.

You might think that these definitions and explanations are absurd and were probably invented by [crazies](https://www.wordhippo.com/what-is/the-plural-of/crazy.html) because they state the obvious---and you would not be far wrong. But the power of these ideas lies in their ability to be generalized beyond the immediate context in which they arose: something you would appreciate as you plumb the deeper depths and higher heights of mathematics.

In sum, a binary operation works on two inputs to produce a third output. A relation, like equality, on the other hand, establishes a relationship---sameness in this case---between two mathematical entities.

### A visual metaphor for equality

A two-pan balance is an excellent visual metaphor for equality. Even though the material in each pan might be different, when the pans balance, we have equality. This means each pan contains the same weight or mass. It is the principle behind how we buy foodstuffs. And it is identical to the principle of equality as a mathematical relation.

![A two-pan balance in equilibrium, indicating that the mass on the left hand side equals that on the right hand side, even though the contents differ.]({attach}images/two-pan-balance-in-equilibrium.jpg){#fig:two-pan-balance width=90% .modal-target}

### Simple equations

### Quadratic equations

### Polynomials

### Binomial theorem

### Trigonometric identities

## Formulae

### Completing the square and the quadratic formula

### Circumference of a circle

### Area of a triangle

### Volume of a cylinder



## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./math-fundamentals.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/math-fundamentals.pdf>
:::
