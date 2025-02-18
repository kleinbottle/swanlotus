---
title: Differential Equations
author: "R (Chandra) Chandrasekhar"
date: 2025-02-17
modified: 2025-02-17
category: Mathematics
tags: Simkin Tales, calculus
summary: ScoobyDoo
opengraphimage: 
---

::: {.small}
>Isaac Newton was the first to glimpse this secret of the universe. He found that the orbits of the planets, the rhythm of the tides, and the trajectories of cannonballs could all be described, explained, and predicted by a small set of differential equations. Today we call them Newton’s laws of motion and gravity. Ever since Newton, we have found that the same pattern holds whenever we uncover a new part of the universe. From the old elements of earth, air, fire, and water to the latest in electrons, quarks, black holes, and superstrings, every inanimate thing in the universe bends to the rule of differential equations. I bet this is what Feynman meant when he said that calculus is the language God talks. If anything deserves to be called the secret of the universe, calculus is it.
:::
::: {.flushright .xsmall}
[Steven Strogatz]{.smallcaps}\
_Infinite Powers_, [@strogatz-2019]
:::


## A Promise kept

You might recall from my blog [Expressions, Equations, and Formulae](https://swanlotus.netlify.app/blogs/expressions-equations-and-formulae) that my friend Solus "Sol" Simkin had asked me to write on differential equations as well, when he first requested a blog. This blog is my promise kept to him.

## A Gentle Entry

When you make a cup of tea, you must allow time for the tea to infuse. Likewise, with a cup of coffee, you need percolation time. With new knowledge, it is no different. You need time to allow the new knowledge to steep into your mind and find its place alongside old knowledge. It is only then that you become comfortable with what is new. Be gentle on yourself if things do not pop out of the page at once. You are making friends with mathematical ideas that took centuries to evolve and mature.

To many students, mathematics is daunting, calculus even more so, and differential equations are downright terrifying. Nevertheless, there are authors who tame the subject rather than taunt the student. They approach the subject leisurely, allowing the reader to enjoy the view, and explaining interesting sights along the way. There are others who use pictures in preference to words. I have chosen two books---one from each category---as books to read, along with this blog, or even before it. Here are my two selections.

### Steven Strogatz

The applied mathematician [Steven Strogatz](https://en.wikipedia.org/wiki/Steven_Strogatz) is one of my favourite authors active in the popular mathematics genre today. He knows how to interest, educate, and sometimes, even entertain. Learning becomes easy and enjoyable as a consequence. He has written a masterful popularization of calculus, its history, techniques, significance, and applications, entitled [_Infinite Powers: How calculus reveals the secrets of the universe_](https://www.stevenstrogatz.com/books/infinite-powers) [@strogatz-2019] . Make the effort to read this book---even if it is a little at a time---and complete it. You will become a better scholar as a result, and calculus will become your friend.

### Blanchard, Devaney, and Hall

The second recommendation, a textbook by three authors, is the result of a radical departure in the teaching of differential equations---from being a hodgepodge of mundane and special techniques, memorized and regurgitated, to a fascinating picture of how nature unfolds in time. The pedagogy of the book leverages the ubiquity of computing technology to enable a syncretic view and more profound appreciation of differential equations as the time-evolution of natural systems. Their book is called, unsurprisingly, [_Differential Equations_](http://math.bu.edu/odes/4ed-TOC.html) and is in its fourth edition [@blanchard-devaney-hall-2012]. It is not a book that you need to work through, but one you should consult for its approach and ideas. The earnest student will also doubtless, tackle a few problems! \emojifont :wink: \normalfont.

## Newton's Second Law

Perhaps the very first encounter with differential equations occurs for most people with the statement of [Newton's Second Law of Motion](https://www.britannica.com/science/Newtons-laws-of-motion/Newtons-second-law-F-ma). It is usually stated as _the net force on a body is proportional to the rate of change of the body's momentum_.

Wait a minute! Is this not physics? Yes, it is. But is it also mathematics? Yes indeed. Let us not quibble over how we divide knowledge into compartments. Let us instead consider knowledge as a porthole with which to view Nature. Nature behaves as Nature does. But humankind has imposed disciplinary barriers into the framework of human knowledge. Let us not be deterred by those barriers.

There are many terms here that must be _named_, i.e., defined and explained. Let us go through them in sequence, using SI units, and mostly avoiding implications arising from the Theory of Relativity:

#.  Space: This is the three dimensional space in which we live and through which matter moves. The length between two points in space is their _distance_. The set of points in a one-dimensional line is usually denoted by $\mathbb{R}$. For two-dimensions, the set is the [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product) $\mathbb{R} \times \mathbb{R} = \mathbb{R}^2$, and the points are denoted $(x, y)$ where each $x \in \mathbb{R}$ and each $y \in \mathbb{R}$. Likewise for three dimensional space where $(x, y, z) \in \mathbb{R}^3$.^[If these symbols and notation are new to you please read my blog [The Two Most Important Numbers: Zero and One](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one).]

#.  Time: This is the time we experience---24 hours or 86,400 seconds in a day---usually denoted by the letter $t$.

#.  Scalar: A quantity that only has magnitude. Examples include time, temperature, distance, mass, energy, etc.

#.  Vector: A quantity that has both magnitude and direction. While _distance_ is a scalar that defines the length between two points, _displacement_ is a vector and encodes both the length between two points _and_ their direction. Vectors are usually denoted in boldface, like $\mathbf{a}$, or when written, with a squiggle atop or underneath the symbol.

#.  Distance: The difference in length between two points in space, without concern for their orientation.

#.  Speed: When a body moves a distance $d$ in time $t$, its average speed is $\frac{d}{s}$ metres per second;

#.  Displacement: Displacement is the vector analogue of distance, and is often denoted by $\mathbf{s}$. The displacement from $A$ to $B$ is the negative of the displacement from $B$ to $A$. 

#.  Velocity: When a body moves, _velocity_ captures both its speed and the direction in which the change occurs. Velocity is the vector analogue to speed, and is usually denoted by $\mathbf{v}$. A body whose speed is constant but whose direction is changing constantly, like a ball revolving on a string, experiences a _changing_ velocity, and is hence undergoing _acceleration_.

#. Mass: Mass represents the resistance matter presents to motion. Roughly, on Earth, it is proportional to weight, which is a vector. Mass is generally denoted by $m$. So, the heavier an object, the greater its mass. Relativity talks about _inertial mass_ and _gravitational mass_ but we will skip that here. Mass multiplied by velocity equals momentum. 

#. Momentum: Momentum, often denoted by $\mathbf{p}$, is a vector and is the product of mass and velocity, $\mathbf{p} = m\mathbf{v}$.

#. Acceleration: Acceleration, $\mathbf{a}$ is defined as the time rate of change of the velocity vector. Using the symbology of calculus,
$$
\mathbf{a} \triangleq \frac{\mathrm{d}\mathbf{v}}{\mathrm{d}t}.
$$
The symbol $\triangleq$ is often used to denote a definition.

#. Force: Newton's Second Law states that force is proportional to the rate of change of momentum it induces. Stated mathematically, bearing in mind that force is a vector,
$$
\mathbf{F} \propto \frac{\mathrm{d}\mathbf{p}}{\mathrm{d}t} \triangleq k\frac{\mathrm{d}\mathbf{p}}{\mathrm{d}t}.
$$
The symbol $\propto$ stands for _proportional to_. To convert it to a equality, mut introduce a constant $k$. By judiciously choosing units, it is possible to make the value of $k$ equal to one. We then have the famous vector equation
$$
\begin{aligned}
\mathbf{F} &= \frac{\mathrm{d}\mathbf{p}}{\mathrm{d}t}\\
&= \frac{\mathrm{d}\left(m\mathbf{v}\right)}{\mathrm{d}t}; \text{ extracting the $m$ out as a constant}\\
&= m\frac{\mathrm{d}\mathbf{v}}{\mathrm{d}t}; \text{ acceleration is the drivative of velocity}\\
&= m\mathbf{a}.
\end{aligned}
$${#eq:second-law}
And there you have it: Newton's second law stated mathematically in vector form as a differential equation in the last line of [@eq:second-law].







## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./differetial-equations.pdf):

::: {.sf}
<https://swanlotus.netlify.app/blogs/differential-equations.pdf>
:::




