---
title: 'Open Secrets: √2, π, e'
author: R (Chandra) Chandrasekhar
date: "2023-03-21"
modified: "2023-12-27"
category: Mathematics
tags: pi, e, mathematics, irrational numbers, transcendental numbers, infinite, "Simkin Tales", "Mathematical Musings",  series, decimal representation
summary:
opengraphimage:
status: draft
---

## "I made a wager"

"I made a wager", my friend Solus "Sol" Simkin opened up the other day. We were enjoying the warmth of a spring afternoon, with just the right balance of light and shade, just the right balance of heat and cold, and a humidity that could have descended from Heaven. I might have slipped into the delicious oblivion of sleep, were it not for the fact that I cherished hearing Sol, even more than I desired sleep. So, I was all agog to hear him regale yet another tale from his intellectual adventures.

"Tell me about your wager," I responded.

"I think you know of my paternal cousin, once removed, Hieronymus Septimus Simkin, whom I affectionately call Seven. Well, he is an expert in matters Microsoft, and is no mean programmer himself. Seven and I were holidaying once at [Loch Lomond](https://www.nationalparks.uk/park/loch-lomond-the-trossachs/) in Scotland.

"We were drinking in the beauty of scenic Nature when a thought struck me like a thunderbolt. Nature was varied and variegated in a way that defied monotony. Perhaps, you will remember that [Leopold Kronecker](https://en.wikipedia.org/wiki/Leopold_Kronecker) was reputed to have said _'Die ganzen Zahlen hat der liebe Gott gemacht, alles andere ist Menschenwerk'_, meaning that 'God made the integers, all else is the work of man' [@kronecker]. That instant, I was convinced that Kronecker was as wrong as wrong could be.

"I mentioned this to Seven, but he laughed it off. A little miffed, I told Seven that I would convince him that Kronecker was wrong, and was prepared to bet on it. There are many open secrets of mathematics all around us. All of them cry out that he was wrong."

Seven---never one to withdraw from an engagement with probability---said, "You are on. I _know_ that [encryption of secrets](https://cloud.google.com/learn/what-is-encryption) is grounded in the integers. Integers guard our secrets. So, you are bound to lose."

"And so began a discussion on the open secrets of mathematics that took us into the realms of the integers, the rationals, the irrationals, $\pi$, $e$, $\phi$, etc.," continued Sol.

## The integers have their place

Sol told me that he started off with the integers that Kronecker had so exalted. "The integers are fundamental because all mathematics begins with counting. The quantitative fields are all founded on the natural numbers we count with. And [zero and one are the two most important integers](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one)---that I grant you," he had told Seven. "But we cannot stop with integers and exclude everything else."

## The square and the circle

Sol had told Seven that the square is _the_ four-sided regular polygon. If we take a side length equal to one unit, by the theorem of Pythagoras, we know that its diagonal has a length equal to $\sqrt{1^2 + 1^2} = \sqrt{2}$ units. And there are proofs aplenty on the Web that this number is in no way an integer. Indeed, it is not even the ratio of two integers. How could something as basic as the diagonal of a square cause the first chink in Kronecker's armour?

Moving from the finite to the infinite, the circle may be viewed as the limiting case of a regular polygon of $n$ sides as $n \to \infty$. And if we tried to find out how many radii would fit into the circumference of a circle, we do not get an integer, or even an exact fraction, but rather a number that sits between $6$ and $7$, having decimal places without end, namely, $2\pi \approx 6.283185307$. And that number is not an integer by a country mile.

"The natural numbers, the integers, and the rationals---all of these come under Kronecker's integers, but where do we stash $\sqrt{2}$ and $2\pi$ amongst them?" Sol asked Seven.

He was met with bemused silence.

## How about the number $e$?

Encouraged that he had stupefied Seven right at the start, Sol mounted his next hobby horse, and expounded on $e$.

"The number $e$ is probably _the_ most important number after $0$ and $1$. And do you know what it is? It is both [irrational](https://mathworld.wolfram.com/IrrationalNumber.html) and [transcendental](https://en.wikipedia.org/wiki/Transcendental_number). If you differentiate or integrate, you will find that the exponential function $\exp(x) = e^x$ is an eigenfunction of each operation. If you look into Nature, $e$ holds the pride of place in the [normal distribution](https://www.khanacademy.org/math/statistics-probability/modeling-distributions-of-data/normal-distributions-library/a/normal-distributions-review). If you are into [linear system theory](https://www.cns.nyu.edu/~david/handouts/linear-systems/linear-systems.html) you cannot escape $e$.

But what exactly is the value of $e$? Again it cannot be confined like an integer: $e \approx 2.718281828$ again in a never ending decimal sequence. This number pervades all of Nature and yet it cannot be bottled into a finite number of digits! Where are the legions of integers to duel with this puny expeditionary force of three  numbers? _It appears that Nature prefers the non-integers!_"

"Very poetic and ably said," I nodded in appreciation.

## Open secrets

"Helen Keller is reputed to have exclaimed, when she felt the warm glow of a wood-fire, that it was the release of sunbeams that had been trapped long ago in the wood. Her statement is remarkably perceptive, poetic, and precise," Sol continued.

"Unlike ancient sunlight trapped in wood, $\sqrt{2}$, $\pi$, and $e$, cannot be caged in a finite box. These three numbers---that pervade Nature---have decimal forms that clearly announce that they are _not_ integers. Their value defies finite expression; only with symbols may we do them justice.

"Do you know why they are open secrets? They are public, staring at us from every square, circle, and signal, and yet, their full form is never revealed. They cannot be contained except in infinity. To know the next decimal place of $\sqrt{2}$, or $\pi$, or $e$, one needs to _compute it_ using some formula. Or one could look up a table. But there is no _knowing_ that sought after next decimal place, as we know $\frac{1}{2} = 0.5$, with as many zeros stacked at the end as we wish. That sort of closed form is not baked into nature. She prefers the indescribable exactitude of numbers like $e$." Sol had told Seven.

The rest of Sol's dialogue with Seven was intricately mathematical. I have recorded it here, not as a dialogue, but as logical exposition---complete with references---for the benefit of the casual reader.

## The square root of two

Of the triad we first consider, $\sqrt{2}$. It is the most within our grasp. It embodies a number, rather than a symbol, in its expression. It is the diagonal of a unit square. And we know that its square root must lie between $1$ and $1.5$, whose square is $2.25$. It may be evaluated painstakingly using algorithms from the age-before-calculators. So, let us look at that first.

### Manual extraction of √2

The manual extraction of square roots is a form of longdivision that is both tedious and error-prone. The algorithm uses that fact that the factor $2$ figures in any square, witness: $(x + a) = x^2 + 2x +a^2$. So, this particular long division makes use of this fact at each step in the "longdivision" that is done. To see the end result and the working, please see [this](https://www.cuemath.com/algebra/square-root-of-2/) [@cuemathsqrt]. For a deeper explanation, [read this blog](https://www.cantorsparadise.com/the-square-root-algorithm-f97ab5c29d6d) [@ujjwalsingh2021].

## Continued Fractions

There are basically two ways of representing real numbers: decimals, and continued fractions [@olds1963;@niven1991; @davenport2008;@simoson2019]. The latter representation is fascinating as it reveals patterns that are absent in the

Practically, every irrational, when pressed to computational use, is really a rational approximation to the irrational, to an accuracy that serves the purpose. In that sense, Kronecker was not far from the truth. But the full glory of $\sqrt{2}$, or $\pi$, or $e$ can only be encapsulated by the symbols we use for them. Every other, rational expression is but a costumed appearance, not the true persona.

I would like to demonstrate here another method of evaluating $\sqrt{2}$, using [continued fractions](https://en.wikipedia.org/wiki/Continued_fraction). The method might seem like sleight of hand, but it is well-founded, and it is also and example of how integers are used to tame the irrationals.

Continued fraction are curious mathematical entities that have surprising properties. They are an alternative representation rational number representation of real numbers. No finite continued fraction can equate to an irrational number. But a never-ending continued fraction expansion can indeed represent an irrational number.

Rational numbers may be represented as continued fractions in _two_ ways []. But irrational numbers may







### Continued fraction expansion of √2

The number $\sqrt{2}$ is particularly amenable to a simply derived continued fraction expansion. Consider:
$$
\begin{aligned}
\sqrt{2} &= \sqrt{2} &\text{ [add and subtract $1$ on the RHS]}\\
&= 1 + \sqrt{2} - 1 &\text{ [multiply second term on RHS by $\frac{\sqrt{2}+1}{\sqrt{2}+1} = 1$}]\\
&= 1 + \frac{(\sqrt{2} - 1)(\sqrt{2} + 1)}{\sqrt{2} + 1} &\text{ [difference of two squares]}\\
&= 1 + \frac{1}{1 + \textcolor{Maroon}{\sqrt{2}}}\\
\end{aligned}
$${#eq:sqrt2}
Since the LHS in @eq:sqrt2 is $\sqrt{2}$, we may substitute the entire RHS in place of the term $\textcolor{Maroon}{\sqrt{2}}$ on the RHS. So doing, we get the following descending staircase of continued fractions:
$$
\begin{aligned}
\sqrt{2} &= 1 + \frac{1}{1 + \textcolor{Maroon}{\sqrt{2}}}\\
&= 1 + \cfrac{1}{1 + \textcolor{Maroon}{1 + \cfrac{1}{1+\sqrt{2}}}}\\
&= 1 + \cfrac{1}{2 + \cfrac{1}{1 + \sqrt{2}}} &\text{ [and recursively substituting for $\sqrt{2}$ again]}\\
&= 1 + \cfrac{1}{2 + \cfrac{1}{1 + 1 + \cfrac{1}{1 + \sqrt{2}}}}\\
&= 1 + \cfrac{1}{2 + \cfrac{1}{2 + \cfrac{1}{1 + \sqrt{2}}}}\\
&= 1 + \cfrac{1}{2 + \cfrac{1}{2 + \cfrac{1}{2 + \cfrac{1}{1+\sqrt{2}}}}}\\
&\hskip 100pt\ddots\\ % Care!
\end{aligned}
$${#eq:sqrt2cfinfty}
The _congruents_ or _approximants_ from a continued fraction are partial sums that we may accumulate as approximations to the irrational number, in our case, that we seek to represent. Unfurling the continued fractions into partial sums is a tricky exercise. There are also recurrence relations for them. In our particular case, we ignore the $\frac{1}{1 + \sqrt{2}}$ terms that occur in the _denominator_ of @eq:sqrt2cfinfty but count the numerator terms to get a sequence of fractions.

In this way, we start off with $1$, followed by $1 + \frac{1}{2} = \frac{3}{2}$. Working our way down, we encounter $1 + \frac{1}{2 + \frac{1}{2}} = 1+\frac{1}{\frac{5}{2}} = 1 + \frac{2}{5} = \frac{7}{5}$. The next convergent after this, when simplified, is $1 + \frac{1}{2+\frac{2}{5}} = 1 + \frac{5}{12} = \frac{17}{12}$.

Sol said that working out these fractions could be a form of torture unless you are particularly fond of or adept at computing them. He himself did not relish such hand computations but preferred to program to get a solution. As it turns out, he was able to get a sequence of the first eight successive convergents from the `Julia` code below:

```julia
using Pkg
Pkg.add("RealContinuedFractions")
#
# Use the above only for the first time.
#
using RealContinuedFractions
convergents(contfrac(sqrt(2), 15))
```
which gave the following results:

```julia
15-element Vector{Rational{Int64}}:
      1//1
      3//2
      7//5
     17//12
     41//29
     99//70
    239//169
    577//408
   1393//985
   3363//2378
   8119//5741
  19601//13860
  47321//33461
 114243//80782
 275807//195025
 ```
 The rational fractions above are tabulated with their decimal versions to provide an idea of how the convergents do indeed converge to the "benchmark" decimal value of $\sqrt{2}$ as available on a `Julia` [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop), which is shown below:

 ```julia
sqrt(big(2))
1.414213562373095048801688724209698078569671875376948073176679737990732478462102
```

SEE Wolfram Alpha for repeating digits

| Convergent | Decimal Value | Period |
|:---------:|:-------------|---------------------:|
|    $\frac{1}{1}$  | $1.0$ | $0$ |
|    $\frac{3}{2}$  | $1.5$ | $0$ |
|    $\frac{7}{5}$  | $1.4$ | $0$ |
|   $\frac{17}{12}$  | $1.41\overline{6}$ | $1$ |
| $\frac{41}{29}$  | $1.\overline{4137931034482758620689655172}$ | $28$ |
|   $\frac{99}{70}$  | $1.4\overline{142857}$ | $6$ |
|  $\frac{239}{169}$ | $1.\overline{414201183431952662721893491124260355029585798816568047337278106508875739644970}$ | $78$ |
|  $\frac{577}{408}$  | $1.414\overline{2156862745098039}$ | $16$ |
| $\frac{1393}{985}$ | $1.41421319796954314...$ | $98$ |
| $\frac{3363}{2378}$ | $1.4142136248948696$ | $140$ |
|   $\frac{8119}{5741}$ | $1.414213551646054778387906480929814279079437255859375...$ | $5740$ |
|  $\frac{19601}{13860}$ | $1.41\overline{421356}$ | $6$ |
|  $\frac{47321}{33461}$ | $1.414213562057320405784821559791453182697296142578125...$ | $4780$ |
| $\frac{114243}{80782}$ | $1.4142135624272734024906538585328414745859226065212547349657101829...$ | $546$ |
|$\frac{275807}{195025}$ | $1.4142135623637994701340403480571694672107696533203125...$ | $1876$ |
: The first fifteen convergents for $\sqrt{2}$. {#tbl:sqrt2convergents}

The "benchmark" decimal avlue of $\sqrt{2}$ as available on a `Julia` [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) is shown below. There is agreement at best to four decimal places.

```julia
sqrt(big(2))
1.414213562373095048801688724209698078569671875376948073176679737990732478462102
```

<!--Base.show(io::IO, f::Float64) = @printf(io, "%.16f", f)-->


The results are tabulated for comparison with the decimal value of $\sqrt{2}$ which, to 15 decimal places, is $1.414213562373095$.
$1.4142135623730951454746218587388284504413604736328125$ Julia
$1.41421356237309504880168872420969807856967187537694807317667973799073247846210$ Julia Big Int
$1.414213562373095048801688724209698078569671875376948073176679737990732478462102 Julia Big Int
$1.4142135623730950488016887242096980785696718753769480731766797379907324784621070388503875343276415727350138462309122970249248360... Wolfram Alpha
$1.4142135623730951454746218587388284504413604736328125
## Where the rationals and the irrationals meet

"Infinity is where the rationals and irrationals meet," Sol had continues in his discussion with Seven. "And as far as I know, infinity s not an integer. What it is, I do not precisely know." Take
$$
$$
https://r-knott.surrey.ac.uk/Fibonacci/cfINTRO.html#section3.1
https://xlinux.nist.gov/dads/HTML/squareRoot.html
https://math.stackexchange.com/questions/2916718/calculating-the-square-root-of-2
https://medium.com/not-zero/how-to-calculate-square-roots-by-hand-21a78b6da9ae
https://www.cantorsparadise.com/the-square-root-algorithm-f97ab5c29d6d
https://nebusresearch.wordpress.com/2014/10/17/how-richard-feynman-got-from-the-square-root-of-2-to-e/
https://medium.com/i-math/how-to-find-square-roots-by-hand-f3f7cadf94bb
https://en.wikipedia.org/wiki/List_of_formulae_involving_%CF%80

https://mathworld.wolfram.com/PiFormulas.html

https://math.stackexchange.com/questions/2153619/where-do-mathematicians-get-inspiration-for-pi-formulas

Synesthtetic people can see grayness blurring a beautiful landscape if there is wrong digit in the digit in the decimal expression for pi.


## Where the rationals and the irrationals meet

## What is the next digit?

## Fibonacci has closed form but …

## Continues fractions pi

## How to construct a rational from two irrationals



## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./open-secrets.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/open-secrets.pdf>
:::

https://math.stackexchange.com/questions/586008/is-a-decimal-with-a-predictable-pattern-a-rational-number


https://math.stackexchange.com/questions/61937/how-can-i-prove-that-all-rational-numbers-are-either-terminating-decimal-or-repe

https://math.stackexchange.com/questions/1759007/which-real-numbers-have-2-possible-decimal-representations

https://en.wikipedia.org/wiki/Champernowne_constant

https://math.stackexchange.com/questions/1259073/rational-irrational-numbers


https://en.wikipedia.org/wiki/Liouville_number


https://en.wikipedia.org/wiki/Transcendental_number


https://www.khanacademy.org/math/algebra/x2f8bb11595b61c86:irrational-numbers/x2f8bb11595b61c86:sums-and-products-of-rational-and-irrational-numbers/v/sums-and-products-of-irrational-numbers

https://www.google.com/search?q=example+of+a+%2B+b+%3D+r+where+a+is+irratioonal%2C+b+is+irrational+and+r+is+rational


https://www.khanacademy.org/math/algebra/x2f8bb11595b61c86:irrational-numbers/x2f8bb11595b61c86:sums-and-products-of-rational-and-irrational-numbers/v/sums-and-products-of-irrational-numbers

https://www.youtube.com/watch?v=RpDWHlFKHy4


https://www.numberempire.com/3363

https://math.stackexchange.com/questions/730349/convergents-of-square-root-of-2


https://www.youtube.com/watch?v=E4b-k_Dug_E


https://www.youtube.com/watch?v=CaasbfdJdJg

https://www.youtube.com/watch?v=zCFF1l7NzVQ

https://math.stackexchange.com/questions/716944/how-to-find-continued-fraction-of-pi

https://perl.plover.com/classes/cftalk/INFO/gosper.html

https://tex.stackexchange.com/questions/334917/box-around-continued-fraction

https://www.quora.com/Why-can-some-irrational-numbers-be-expressed-as-continued-infinite-fractions

https://www.quora.com/What-is-the-difference-between-using-continued-fractions-to-represent-rationals-and-irrationals-Is-continued-fraction-unique


Euler and Lagrange proved that periodic continued fractions represent quadratic irrational numbers.
https://qr.ae/pKUeyc

https://www.quora.com/What-is-the-difference-between-using-continued-fractions-to-represent-rationals-and-irrationals-Is-continued-fraction-unique

https://math.stackexchange.com/questions/1349073/how-to-find-out-the-number-of-repeating-digits-of-a-rational-number-in-decimal-f

https://math.stackexchange.com/questions/140583/compute-the-period-of-a-decimal-number-a-priori

https://proofwiki.org/wiki/Continued_Fraction_Expansion_of_Irrational_Square_Root/Examples/2
Compute the period of a decimal number a priori

Are the numerator and the denominator of a convergent of a continued fraction always coprime?
https://math.stackexchange.com/questions/1493902/are-the-numerator-and-the-denominator-of-a-convergent-of-a-continued-fraction-al

https://math.stackexchange.com/questions/1493902/are-the-numerator-and-the-denominator-of-a-convergent-of-a-continued-fraction-al

https://math.stackexchange.com/questions/4112417/continued-fraction-representation-of-quadratic-irrationals

https://r-knott.surrey.ac.uk/Fibonacci/cfINTRO.html

https://math.stackexchange.com/questions/265690/continued-fraction-of-a-square-root

Lists of pi and e expansions

https://mathworld.wolfram.com/PiFormulas.html

https://en.wikipedia.org/wiki/List_of_representations_of_e
