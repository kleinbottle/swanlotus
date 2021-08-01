---
title: "A Foray into Rust: Euler One"
author: "R (Chandra) Chandrasekhar"
date: 2021-07-31
modified: 2021-07-31
category: Programming
tags: Rust, Euler Project, Mathematics
summary: "Rust is _the_ emerging programming language. To learn Rust, I decided to start by solving  Euler Project One using Rust. This is a chronicle of my first efforts."
opengraphimage:
status: draft
---

As a programmer, I am long in the tooth. I started out with [FORTRAN](https://fortran-lang.org/), went on to [Forth](https://www.forth.com/), and settled with [C](https://www.iso.org/standard/74528.html) through three decades or more. Later, it was [MATLAB](https://www.mathworks.com/) and [Octave](https://www.gnu.org/software/octave/index) for high level computing. For scripting, I used [Perl](https://www.perl.org/) or [bash](https://www.gnu.org/software/bash/). [Python](https://www.python.org/), the current darling of programmers is an [unknown bourne](http://www.finedictionary.com/bourn.html) to me.

So why did I choose Rust as the new programming language to learn? [Rust](https://www.rust-lang.org/) is _the_ emerging programming language. The recent rave reviews it has received from the programming community veered me toward it. Surely, a quantitative flood of accolades, unorchestrated and spontaneous, is recommendation enough.

But there are other reasons as well. My previous bet was on [Haskell](https://www.haskell.org/). I have tried many times to learn it, almost always giving up in despair because I was fobbed off by the unfamiliar notation, and its corpus of arcana, like [monads](en.wikipedia.org/wiki/Monad_(functional_programming)), always touted by the cognoscenti, as the way to tell the men from the boys. Enough about the why. Now for the how.

To learn Rust, I decided to start by solving [Project Euler Problem One](https://projecteuler.net/problem=1), henceforth called PEP1, using Rust. This is a chronicle of my first efforts.

## Project Euler Problem One

The [statement of the problem](https://projecteuler.net/problem=1) is simple and pellucid:

>**Multiples of 3 or 5**
>
>If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
> 
>Find the sum of all the multiples of 3 or 5 below 1000.






#### Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here.]({attach}./rust-euler-one.pdf)
