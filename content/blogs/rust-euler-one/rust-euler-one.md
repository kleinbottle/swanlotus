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





# Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here.]({attach}./rust-euler-one.pdf)
