---
title: "A Foray into Rust: Euler One"
author: "R (Chandra) Chandrasekhar"
date: "2021-07-31"
modified: "2023-11-25"
category: Programming
tags: Rust, Euler Project, Mathematics
summary: "Rust is _the_ emerging programming language. To learn Rust, I decided to start by solving  Euler Project One using Rust. This is a chronicle of my first efforts, including false starts, errors, generalizations, etc."
status: draft
---

As a programmer, I am long in the tooth. I started out with [FORTRAN](https://fortran-lang.org/), went on to [Forth](https://www.forth.com/), and settled with [C](https://www.iso.org/standard/74528.html) through three decades or more. Later, it was [MATLAB](https://www.mathworks.com/) and [Octave](https://www.gnu.org/software/octave/index) for high level computing. For scripting, I used [Perl](https://www.perl.org/) or [bash](https://www.gnu.org/software/bash/). [Python](https://www.python.org/), the current darling of programmers, is an [unknown bourne](http://www.finedictionary.com/bourn.html) to me.

So why did I choose [Rust](https://www.rust-lang.org/) as the new programming language to learn? Rust is _the_ emerging programming language, developed at [Mozilla](https://research.mozilla.org/rust/) [@rust]. It has been consistently voted [_the most loved_](https://insights.stackoverflow.com/survey/2020#most-loved-dreaded-and-wanted) programming language in Stack Overflow Developer Surveys [@goulding2020]. End-users, such as [scientists](https://www.nature.com/articles/d41586-020-03382-2), are turning to Rust when Python has proven inadequate for some reason [@perkel2020]. And [corporate users](https://serokell.io/blog/rust-companies) include Dropbox, Mozilla, Microsoft, npm, etc. [@dreimanis2020].

But there are other, more personal, reasons as well. My previous bet on the future was on [Haskell](https://www.haskell.org/). I have tried many times to learn it, almost always giving up in despair, because I was put off by the unfamiliar notation, and its corpus of arcana, like [monads](en.wikipedia.org/wiki/Monad_(functional_programming)), touted by the cognoscenti, as the way to tell the men from the boys. Enough about the why. Now for the how.

To learn Rust, I decided to start by solving [Project Euler Problem One](https://projecteuler.net/problem=1)---henceforth called _the problem_, or _the question_---using Rust. This is a chronicle of my first efforts, including false starts, errors, backtracks, etc.

## Project Euler Problem One

The [statement of the problem](https://projecteuler.net/problem=1) is simple and pellucid:

>**Multiples of 3 or 5**
>
>If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
>
>Find the sum of all the multiples of 3 or 5 _below_ 1000. [_Emphasis_ is mine]

## Algorithm for problem solving

The algorithm for problem solving is [@sas]:

#.  Read the question carefully.
#.  Understand the question correctly.
#.  Answer the question precisely.

The problem asks for _all_ the multiples of $3$ and all the multiples of $5$ _below_ $1000$. I have emphasized the word _below_, both when quoting the question, and just now. Care at this stage of acquaintance with the problem staves off many a careless mistake by nipping it in the bud.

## Initial thoughts

The multiples of $3$ are those numbers, which when divided by $3$, leave a remainder of zero. Likewise the numbers which leave a remainder of zero when divided by $5$ are multiples of $5$. This implies _integer arithmetic_, and that in turn, could mean we have to _declare_ the type of numbers we are using. Floating point division will never do for our problem. But division is problematic; witness the caveat that the divisor may not be zero in the field of real numbers, $\mathbb{R}$.

I thought in terms of division because I remembered the $%$ operator from other programming languages. But is division the most natural way to identify the multiples of a number? Should it not be multiplication that we should resort to? It is time to start thinking with a [beginner's mind](https://en.wikipedia.org/wiki/Shoshin).

We also need a structure like an _array_ or _list_ where numbers may be appended or inserted until the stopping condition is reached. If we keep a running total, though, we do not need anything else except three receptacles: one for the sum of multiples of three, $s_3$, another for the sum of multiples of five, $s_5$, and one more for their sum, $s$. Let us try the latter option first.

## Setting the bounds

We know that $1000 \div 3 = 333$ with a remainder of $1$. The largest multiple of $3$ less than $1000$ is therefore, $333 \times 3 = 999$. The number of multiples of $3$, $n_{3}$, we will be dealing with is thus  $333$.

Likewise, $1000 \div 5 = 200$ with a remainder of $0$. Since $1,000$ is a multiple of $5$, we need the _next lower_ multiple of $5$ below $1000$. That number is $199 \times 5 = 995$, and so,  $n_{5} = 199$.


We assume that we start at the first multiples of $3$ and $5$ which are trivially the numbers themselves.

## Algorithm and Pseudocode

The simplest algorithm to solve the problem in [pseudocode](https://en.wikipedia.org/wiki/Pseudocode) is:

#. Define $s_3$ to be the cumulative sum of the multiples of $3$ and initialize it to $0$.

#. Define $s_5$ to be the cumulative sum of the multiples of $5$ and initialize it to $0$.

#. Define $s$ to hold the final result and initialize it to $0$.

#. Loop through the natural numbers $\mathbb{N}$ from $1$ to $333$, compute the multiples of $3$, one at a time, and add it to $s_3$.

#. Loop through the natural numbers $\mathbb{N}$ from $1$ to $199$, compute the multiples of $5$, one at a time, and add it to $s_5$.

#. Evaluate $(s_3 + s_5)$ and present it as the desired result $s$.

I envisage two independent `for` loops to achieve this. The pseudocode could read:

```text
s = s3 = s5 = 0 # initialize variables

for n in [1:333]
do
  s3 = s3 + 3*n
done

for n i [1:199]
do
  s5 = s5 + 5*n
done

print (s = s3 + s5)
```

We have implicitly assumed that the `for` loop increment is $1$. The mathematics convention for a closed interval is used above to denote that _both_ the upper and lower limits are _inclusive_.

## First attempt

Let us set to using the syntax of `Rust` and see how the above pseudo code fleshes out. It turns out that [`Rust` supports five types of loop](https://doc.rust-lang.org/reference/expressions/loop-expr.html) and we need the one with the `for` flavour, called the iterator loop.

There is also an example on that web page that is similar to our problem. It uses a `for` loop, but the variable holding the sum is initialized using the [`mut` keyword](https://doc.rust-lang.org/std/keyword.mut.html). Let us copy the code fragment and change it to suit our purposes:

```rust
// First attempt
  let mut s = 0;
  let mut s3 = 0;
  let mut s5 = 0;

  for n in 1..333 {
    s3 += n*3;
  }

  for n in 1..199 {
    s3 += n*5;
  }

  s = s3 + s5;
  println (s5);
```

The above fragment contains numerous errors. So, I needed to backtrack to see an example of the archetypal "Hello World!" program to get the [proper invocatory syntax](https://doc.rust-lang.org/book/ch01-02-hello-world.html). Languages like `C` and `Java` come with some baggage that needs to be wrapped around the functional code so that it may be rendered into an executable program. `Rust` seems to have borrowed this characteristic from them. Note the use of `s3 += n*3;` which is shorthand for `s3 = s3 + n*3`. The `+=` operator is available in `Rust` but not always in other languages.

## Second attempt

My second attempt at the program is now:

```rust
 // Second attempt
fn main() {
  let mut s = 0;
  let mut s3 = 0;
  let mut s5 = 0;

  for n in 1..333 {
    s3 += n*3;
  }

  for n in 1..199 {
    s5 += n*5;
  }

  s = s3 + s5;
  println!("{}", s);
  }
```

I have wrapped the whole code fragment with a `main()` function just as in `C`. Moreover, I have learned that `println!` is a macro rather than a function and that it is invoked as shown. This has already disheartened me a bit because something too much like `C` or `Java`---with a lot of clunky statements for simple actions---is a step in the _wrong_ direction for a better programming language. Let us hope it does not rain pickaxes and shovels when we run the code!

```rust
warning: value assigned to `s` is never read
 --> attempt2.rs:2:11
  |
2 |   let mut s = 0;
  |           ^
  |
  = help: maybe it is overwritten before being read?
  = note: `#[warn(unused_assignments)]` on by default

warning: 1 warning emitted
```
Well, we got the above warning for our second attempt. A little probing around the Web suggested that after writing `let mut s = 0`, I am re-writing the value of`s` with the assignment `s = s3 + s5;` which seems pointless. Why initialize a variable and immediately assign it another value? It is a warning that can stiffen some floppy or sloppy programming habits, because it requires more thought than usual. Why not initialize the variable with the value we intend to assign it? This warning is the first sign in `Rust` of an improved programming language.

## Third attempt

The solution that suggested itself to me was to change the position of the `let mut s = 0` statement and also its its right hand side (RHS). I tried that as shown in the third attempt:

```rust
 // Third attempt
fn main() {
  let mut s3 = 0;
  let mut s5 = 0;

  for n in 1..333 {
    s3 += n*3;
  }

  for n in 1..199 {
    s5 += n*5;
  }

  let s =  s3 + s5;
  println!("{}", s);
  }
```

This third attempt thankfully compiled with no errors. When I ran the executable, my terminal showed the eagerly anticipated result: `264339`. Is this the correct answer?

## Results from `Octave`

It seemed easiest to me to use a naturally vector-based language to verify the above result. Being conversant with `MATLAB` I veered towards its open-source equivalent, `Octave`. Because the language is inherently vectorized, I could type out the whole sequence using the syntax `[start:step:end]` and sum it up to get the sum of multiples. I typed out the _single_ statement shown below:

```octave
sum([3:3:999]) + sum([5:5:995])
```

and it gave me the answer

```octave
ans = 266333
```
 233168
O dear! this is not what we got with `Rust`. I must also say that, though laconic, `Octave` got the job done with very little fuss or fanfare. Vectorized code is both more powerful and simpler to understand and maintain.

## The Gold Standard

Mathematics is the ultimate arbiter of conflicting results in programming. We are fortunate that in this case, the mathematics is both simple and well known. We are dealing with sums of two [arithmetic progressions (AP)](https://en.wikipedia.org/wiki/Arithmetic_progression#Sum). The first term in an AP is
usually denoted $a$ and the _common difference_ is denoted by $d$. The number of terms is usually $n$. The last term is $a_n = a+(n-1)d$, and the sum to $n$ terms is
$$
a + a + d + a + 2d + a + 3d + \cdots + a + (n-1)d = \frac{n}{2}\left( a + a_n \right)
$$
Using this formula, for the multiples of $3$, we have $a = 3$, $n = 333$ and $a_n=999$, giving us
$$
s_3 = \frac{333}{2}\left( 3 + 999\right) = 166833.
$$
Likewise, for the multiples of $5$, we have $a = 5$, $n = 199$ and $a_n=995$, yielding
$$
s_5 = \frac{195}{2}\left( 3 + 995\right) = 99500.
$$
The required sum, $s$ is therefore $s= s_3 + s_5 = 166833 + 99500 = 266333.$ So, the result from `Octave` is correct. Now where did we go wrong in our third attempt with `Rust`?

## Troubleshooting

We have overcome errors of syntax in `Rust` but we have not yet overcome errors of implementation. The program is so simple that the most likely error must lie with the limits in the `for` loop. Indeed, an experienced programmer would have seen it at once.

Programming languages are notoriously inconsistent on two fronts:

a. Whether they start their indexing with $0$ or with $1$; and
a. Whether their index ranges are on closed intervals $[a, b]$, or semi-closed intervals $[a, b)$, or $(a, b]$, or open intervals $(a, b).$

One would have thought that common sense would impel language designers to adopt uniform conventions on these two issues. Unfortunately the authors of programming languages have rather fiercely held philosophical notions, and a divide persists. Thus each foray into a new language must be cautiously done with these two factors in mind. In our case, we need to hark back to the [definition of the `..` range](https://doc.rust-lang.org/reference/expressions/range-expr.html) operator in `Rust`. The expression `start..end` means that the index variable `i` lies in a semi-closed interval: `start <= i < end`.

## Fourth attempt

The `end` parameters in each case need to be increased by one. Our fourth attempt is shown below:

```rust
 // Fourth attempt
fn main() {
  let mut s3 = 0;
  let mut s5 = 0;

  for n in 1..334 {
    s3 += n*3;
  }

  for n in 1..200 {
    s5 += n*5;
  }

  let s =  s3 + s5;
  println!("{}", s);
  }
```
The result from this last attempt is indeed $266333$ and is in accord with both the AP sum formula and the vector sum from `Octave`. We should now hang up our boots and retire. But I want to squeeze a little more juice from the problem.

## Vectorizing

The single-line `Octave` program made the solution seem laughably easy. Why? Because the standard data structure in `Octave` is a vector or a matrix. In the context pf `Rust`, we may pose these questions:

#. Does `Rust` have a ready implementation of vectors that may be called upon?

#. Would such an implementation be faster? Less or more error prone?

I had a little peep at the possibilities with `Rust` and realized that being a [multi-paradigm language](), `Rust` provides many possibilities to accomplish the same task. Moreover, once the simplicity of scalars is left behind with vectors, the knowledge curve is rather steep. So, vectorizing must promise returns commensurate with the learning effort. That was not apparent to me; hence I did not travel that way.

## FizzBuzz

The [FizzBuzz coding problem](https://leetcode.com/problems/fizz-buzz/) is a natural successor to  EulerOne. We have already computed the multiples of $3$ and the multiples of $5$ which are less than $1000$. But we did not retain them as separate entities from which we could draw out the multiples of $15$ as well. The problem is stated below.

>For any integer from $1$ to $n$, print _Fizz_ if it is divisible by $3$, _Buzz_ if it is divisible by $5$, and _FizzBuzz_ if it is divisible by $15$. [For our purposes, we may set an upper limit as $n \lt 1000$.]

This is a favourite coding interview problem because it is simple enough to reveal the thought processes behind the programming and the approach to the problem that results from the thought process.

Vectors and set intersections are the easiest way to achieve this, but `Rust` presents a steep climb in knowledge acquisition before even meagre results start trickling in.

## Octave implementation of FizzBuzz

In `Octave`, the implementation of `FizzBuzz` is starkly simple. The availability of the [set difference](https://en.wikipedia.org/wiki/Complement_(set_theory)#Relative_complement) as an operation gives us a ready-made solution as shown below. Of course, I have not printed the output, but the vectors named `fizz`, `buzz` and `fizzbuzz` contain the numbers whose elements are associated with these responses. They are not displayed here in good taste.

```matlab
% FizzBuzz
threes = [3:3:999];
fives = [5:5:995];
fifteens = [15:15:990];
fizz = setdiff (threes, fifteens);
buzz = setdiff (fives, fifteens);
fizzbuzz = fifteens;
```

## Closing thoughts

`Rust` is not for me. Of that, I am certain. Euler One is suited to vectorization where `Octave` beats `Rust` hands down in simplicity and succinctness. Not all problems are amenable to simplification in `Octave` and I am sure that `Rust` has its niches of exemplary use. The little that I have seen of `Rust`, however, has made me realize that it is not suited to my temperament. Give me `Octave` any day!


## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here.]({attach}./rust-euler-one.pdf)
