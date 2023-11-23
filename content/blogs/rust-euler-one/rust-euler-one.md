---
title: "A Foray into Rust: Euler One"
author: "R (Chandra) Chandrasekhar"
date: "2021-07-31"
modified: "2021-07-31"
category: Programming
tags: Rust, Euler Project, Mathematics
summary: "Rust is _the_ emerging programming language. To learn Rust, I decided to start by solving  Euler Project One using Rust. This is a chronicle of my first efforts."
opengraphimage:
status: draft
---

As a programmer, I am long in the tooth. I started out with [FORTRAN](https://fortran-lang.org/), went on to [Forth](https://www.forth.com/), and settled with [C](https://www.iso.org/standard/74528.html) through three decades or more. Later, it was [MATLAB](https://www.mathworks.com/) and [Octave](https://www.gnu.org/software/octave/index) for high level computing. For scripting, I used [Perl](https://www.perl.org/) or [bash](https://www.gnu.org/software/bash/). [Python](https://www.python.org/), the current darling of programmers, is an [unknown bourne](http://www.finedictionary.com/bourn.html) to me.

So why did I choose [Rust](https://www.rust-lang.org/) as the new programming language to learn? Rust is _the_ emerging programming language, developed at [Mozilla](https://research.mozilla.org/rust/) [@rust]. It has been consistently voted [_the most loved_](https://insights.stackoverflow.com/survey/2020#most-loved-dreaded-and-wanted) programming language in Stack Overflow Developer Surveys [@goulding2020]. End-users, such as [scientists](https://www.nature.com/articles/d41586-020-03382-2), are turning to Rust when Python has proven inadequate for some reason [@perkel2020]. And [corporate users](https://serokell.io/blog/rust-companies) include Dropbox, Mozilla, Microsoft, npm, etc. [@dreimanis2020].

But there are other, more personal, reasons as well. My previous bet on the future was on [Haskell](https://www.haskell.org/). I have tried many times to learn it, almost always giving up in despair, because I was put off by the unfamiliar notation, and its corpus of arcana, like [monads](en.wikipedia.org/wiki/Monad_(functional_programming)), touted by the cognoscenti, as the way to tell the men from the boys. Enough about the why. Now for the how.

To learn the language, I decided to start by solving [Project Euler Problem One](https://projecteuler.net/problem=1), henceforth called _the problem_, using Rust. This is a chronicle of my first efforts.

## Project Euler Problem One

The [statement of the problem](https://projecteuler.net/problem=1) is simple and pellucid:

>**Multiples of 3 or 5**
>
>If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
>
>Find the sum of all the multiples of 3 or 5 below 1000.

### Discussion: algorithm and pseudo code

The multiples of $3$ are those numbers, which when divided by $3$, leave a remainder of zero. Likewise the numbers which leave a remainder of zero when divided by $5$ are multiples of $5$. This implies _integer arithmetic_, and that in turn, could mean we have to _declare_ the type of numbers we are using. Floating point division will never do for our problem. But division is problematic; witness the caveat that the divisor may not be zero in so many algebraic structures.

I thought in terms of division because I remembered the $%$ operator from other languages. But is division the most natural way to identify the multiples of a number? Should it not be multiplication that we must resort to? It is time to start thinking with a [beginner's mind](https://en.wikipedia.org/wiki/Shoshin).

We also need a structure like an _array_ or _list_ where numbers may be appended or inserted until the stopping condition is reached. If we keep a running total, we do not need anything else except a receptacle of the total for multiples of three and multiples of five. Let us try the latter option first.

Just for interest, we know that $1000 \div 3 = 333 \mbox{ with a remainder of 1}$, and $1000 \div 5 = 200 \mbox{ with a remainder of 0}$. Therefore, we need to stop at $333$ for the multiples of $3$ and at $200$ for the multiples of $5$. We now know when to stop, but do we know when to start? The first multiples of three and five are trivially with the multiplier one, and are $3$ and $5$ respectively. Moreover, all arithmetic is integer arithmetic, and given the bounds, we need not worry about overflow.

The simplest algorithm to solve the given problem is:

#. Define $s_3$ to be the cumulative sum of the multiples of $3$ and initialize it to $0$.

#. Define $s_5$ to be the cumulative sum of the multiples of $5$ and initialize it to $0$.

#. Define $s$ to hold the final result and initialize it to $0$.

#. Loop through the natural numbers $\mathbb{N}$ from $1$ to $333$, compute the multiple of $3$, one at a time, and add it to $s_3$.

#. Loop through the natural numbers $\mathbb{N}$ from $1$ to $200$, compute the multiple of $5$, one at a time, and add it to $s_5$.

#. Evaluate $(s_3 + s_5)$ and present it as the desired result $s$.

I envisage two independent `for` loops to achieve this. The pseudo code could read:

~~~text
s = s3 = s5 = 0 # initialize variables

for n in [1:333]
do
  s3 = s3 + 3*n
done

for n i [1:200]
do
  s5 = s5 + 5*n
done

print s = s3 + s5
~~~

We have implicitly assumed that the `for` loop increment is $1$. Let us set to using the syntax of `Rust` and see how the above pseudo code fleshes out. It turns out that [`Rust` supports five types of loop](https://doc.rust-lang.org/reference/expressions/loop-expr.html) as we need the one with the `for` flavour.

There is also an example on that web page that is similar to our problem. It uses a `for` loop, but the variable holding the sum is initialized using the [`mut` keyword](https://doc.rust-lang.org/std/keyword.mut.html). Let us copy the code fragment and change it to suit our purposes:

~~~rust
  let mut s = 0;
  let mut s3 = 0;
  let mut s5 = 0;

  for n in 1..333 {
    s3 += n*3;
  }

  for n in 1..200 {
    s3 += n*5;
  }

  s = s3 + s5;
  println (s5);
~~~

 The above fragment contains errors. So, I needed ot backtrack to see an example of the archetypal "Hello World!" program to get the [proper invocatory syntax](https://doc.rust-lang.org/book/ch01-02-hello-world.html).








## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here.]({attach}./rust-euler-one.pdf)
