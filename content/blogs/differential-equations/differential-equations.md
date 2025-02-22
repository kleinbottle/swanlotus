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

When you make a cup of tea, you must allow it to infuse. Likewise, with a cup of coffee, you need to let it percolate. With new knowledge, it is no different. You need time to allow the new knowledge to steep into your mind and find its place alongside old knowledge. It is only then that you become comfortable with what is new. Be gentle on yourself if things do not pop out of the page at once. You are making friends with mathematical ideas that took centuries to evolve and mature.

To many students, mathematics is daunting, calculus even more so, and differential equations are downright terrifying. Nevertheless, there are authors who tame the subject rather than taunt the student. They approach the subject leisurely, allowing the reader to enjoy the view, and explaining interesting sights along the way. There are others who use pictures in preference to words. I have selected two books---one from each category---as recommended readings, along with this blog or even beforehand. Here are my choices.

### Steven Strogatz

The applied mathematician [Steven Strogatz](https://en.wikipedia.org/wiki/Steven_Strogatz) is one of my favourite authors currently active in the popular mathematics genre. He knows how to interest, educate, and sometimes, even entertain. As a consequence.learning becomes easy and enjoyable.

He has masterfully popularized calculus in his book [_Infinite Powers: How Calculus Reveals the Secrets of the Universe_](https://www.stevenstrogatz.com/books/infinite-powers) [@strogatz-2019], exploring its history, techniques, significance, and applications. Make the effort to read this book---even if it is a little at a time---and complete it. You will become a better scholar as a result, and calculus will become your friend.

### Blanchard, Devaney, and Hall

My second recommendation is a textbook---by three authors, referred to here as BDH (Blanchard, Devaney, and Hall)---representing a radical departure in the teaching of differential equations. It moves away from the traditional approach of being a hodgepodge of mundane and special techniques, that are memorized and regurgitated, to presenting a captivating exploration of how nature evolves over time.

The pedagogy of the book leverages the ubiquity of computing technology to enable a syncretic view and more profound appreciation of differential equations as the time-evolution of natural systems. Their book is called, unsurprisingly, [_Differential Equations_](http://math.bu.edu/odes/4ed-TOC.html) and is in its fourth edition [@blanchard-devaney-hall-2012]. It is not a book that you need to work through, but one you should consult for its approach and ideas. The earnest student will also doubtless, tackle a few problems! \emojifont :wink: \normalfont.

## Newton's Second Law

Perhaps the very first encounter with differential equations occurs for most people with the statement of [Newton's Second Law of Motion](https://www.britannica.com/science/Newtons-laws-of-motion/Newtons-second-law-F-ma). It is usually stated as 

>The net force on a body is proportional to the rate of change of the body's momentum.

Wait a minute! Is this not physics? Yes, it is. But is it also mathematics? Yes indeed. Let us not quibble over how we divide knowledge into compartments. Let us instead consider knowledge as a porthole with which to view Nature. Nature behaves as Nature does. But humankind has imposed disciplinary barriers into the framework of human knowledge. Let us not be deterred by those barriers.

There are many terms here that must be _named_, i.e., defined and explained. Let us address them sequentially, using [SI units](https://en.wikipedia.org/wiki/International_System_of_Units) and largely steering clear of implications from the Theory of Relativity:

#.  **Space**: This is the three dimensional space in which we live and through which matter moves. The length between two points in space is their _distance_. The set of points in a one-dimensional line is usually denoted by $\mathbb{R}$. For two-dimensions, the set is the [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product) $\mathbb{R} \times \mathbb{R} = \mathbb{R}^2$, and the points are denoted $(x, y)$ where each $x \in \mathbb{R}$ and each $y \in \mathbb{R}$. Likewise for three dimensional space where $(x, y, z) \in \mathbb{R}^3$.^[If these symbols and notation are new to you please read my blog [The Two Most Important Numbers: Zero and One](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one).]

#. **Time**: This is the time we experience---24 hours or 86,400 seconds in a day---usually denoted by the letter $t$.

#.  **Scalar**: A quantity that only has magnitude. Examples include time, temperature, distance, mass, energy, etc.

#.  **Vector**: A quantity that has both magnitude and direction. While _distance_ is a scalar that defines the length between two points, _displacement_ is a vector and encodes both the length between two points _and_ their direction. Vectors are usually denoted in boldface, like $\mathbf{a}$, or when written, with a squiggle atop or underneath the symbol.

#.  **Distance**: The difference in length between two points in space, without concern for their orientation.

#.  **Displacement**: Displacement is the vector analogue of distance, and is often denoted by $\mathbf{s}$. The displacement from $A$ to $B$ is the negative of the displacement from $B$ to $A$. 

#.  **Speed**: When a body moves a distance $d$ metres in time $t$ seconds, its average speed is $\frac{d}{t}$ metres per second.

#.  **Velocity**: When a body moves, _velocity_ captures both its speed and the direction in which the change occurs. Velocity is the vector analogue to speed, and is usually denoted by $\mathbf{v}$. A body whose speed is constant but whose direction is changing constantly, like a ball revolving on a string, experiences a _changing_ velocity, and is hence undergoing _acceleration_.

#. **Mass**: Mass represents the resistance matter presents to motion. Roughly, on Earth, it is proportional to weight, which is a vector. Mass is generally denoted by $m$. So, the heavier an object, the greater its mass.^[The _inertial mass_, $m_i$, is an object's resistance to acceleration when a force is applied on it, as in $F = m_{i}a$. The _gravitational mass_, $m_g$, is the strength of an object's interaction with a gravitational field, as in $G\frac{m_gM}{R^2}$. Both these entities are the same, i.e., $m_{i} = m_{g}$, and this is called the [Principle of Equivalence](https://en.wikipedia.org/wiki/Equivalence_principle.).] Mass multiplied by velocity equals momentum. 

#. **Momentum**: Momentum, often denoted by $\mathbf{p}$, is a vector and is the product of mass and velocity, $\mathbf{p} = m\mathbf{v}$.

#. **Acceleration**: Acceleration, $\mathbf{a}$ is defined as the time rate of change of the velocity vector. Using the symbology of calculus,
$$
\mathbf{a} \triangleq \frac{\mathrm{d}\mathbf{v}}{\mathrm{d}t}.
$$
The symbol $\triangleq$ is often used to denote a definition.

#. **Force**: Newton's Second Law states that force is proportional to the rate of change of momentum it induces. Stated mathematically, bearing in mind that force is a vector,
$$
\mathbf{F} \propto \frac{\mathrm{d}\mathbf{p}}{\mathrm{d}t} \triangleq k\frac{\mathrm{d}\mathbf{p}}{\mathrm{d}t}.
$$
The symbol $\propto$ stands for _is proportional to_. To convert it to an equality, we must introduce a constant $k$. By judiciously choosing units, it is possible to make the value of $k$ equal to one. We then have the famous vector equation
$$
\begin{aligned}
\mathbf{F} &= \frac{\mathrm{d}\mathbf{p}}{\mathrm{d}t}\\
&= \frac{\mathrm{d}\left(m\mathbf{v}\right)}{\mathrm{d}t}; \text{ extracting the $m$ out as a constant}\\
&= m\frac{\mathrm{d}\mathbf{v}}{\mathrm{d}t}; \text{ acceleration is the derivative of velocity}\\
&= m\mathbf{a}.
\end{aligned}
$${#eq:second-law}
And there you have it: Newton's second law stated mathematically in vector form as a differential equation in the second last line of [@eq:second-law]. Force is measured in newtons, mass in kilograms, and acceleration in metres per second per second, written $\mathrm{m \; s^{-2}}$ or $\mathrm{m/s^{2}}$.

## The Falling Skydiver: One

The BDH book in its fourth edition extensively treats what I call the _skydiver problem_. I have borrowed freely from the book both in terms of problem statement and approaches to its solution.

Differential equations arise naturally whenever mathematics is _applied_ to problems that arise in nature. Therefore, one needs to become aware of the technical nomenclature of fields like physics, chemistry, biology, etc., and their units where applicable.

### Prelude

The classical example of how objects fall from a height to the earth is the (apocryphal?) experiment of [Galileo throwing rocks from atop the leaning tower of Pisa](https://en.wikipedia.org/wiki/Galileo's_Leaning_Tower_of_Pisa_experiment). If the two rocks have different weights but are otherwise similar, meaning air resistance may be neglected, they will strike the ground together.

In [Mechanics](https://en.wikipedia.org/wiki/Mechanics) we generally abstract out the object of interest, and show all forces acting on it, via a [free-body diagram](https://www.physicsclassroom.com/class/newtlaws/Lesson-2/Drawing-Free-Body-Diagrams), to the exclusion of other objects.

### Gravity and the acceleration it induces

We already know that the earth exerts a gravitational force on all earthbound objects. Newton proposed and concluded that, for an object on the surface of the Earth, the attraction of the earth on a body of mass $m$ is
$$
F = G\frac{mM}{R^2}
$$ {#eq:universal-gravity}
where $G$ is the universal gravitational constant, $m$ is the mass of the object of interest, $M$ is the mass of the earth, and $R$ is the radius of the earth, assuming a perfect sphere. The acceleration, $g$,  experienced by the mass $m$ in free-fall is, from [@eq:second-law;@eq:universal-gravity], the force of gravitational attraction divided by the mass of the object of interest. We may now write
$$
\begin{aligned}
\frac{F}{m} &= G\frac{M}{R^2}; \text{ noting that the LHS is $g$}\\
g &= G\frac{M}{R^2}.
\end{aligned}
$${#eq:gravity-acceleration}
Let us substitute the values of $G$, $M$, and $R$ in SI units to get a value for $g$ the acceleration due to gravity felt by all objects 
on earth.
$$
\begin{aligned}
G &= 6.6743 × 10^{-11}\; \mathrm{m^{3} kg^{−1} s^{−2}}\\
M &= 5.9722 × 10^{24}\; \mathrm{kg}\\
R &= 6.3781 × 10^{6}\; \mathrm{m} \text{  giving}\\
g &= G\frac{M}{R^2} = 9.7985 \approx 9.8\; \mathrm{m\,s^{-2}}.
\end{aligned}
$${#eq:g-value}
The value of $g$ we have calculated is in [the right ball park](https://dictionary.cambridge.org/dictionary/english/be-in-the-right-ballpark). The force exerted by gravity on an object of mass $m$ is its [weight](https://www.thefreedictionary.com/weight), $W = mg\; \mathrm{N}$, where the $\mathrm{N}$ stands for newtons, the SI unit of force.

### Air resistance

Air resistance is usually ignored in problems meant for elementary school students. However, in the case of the parachuting skydiver, it is air resistance and the drag it produces that protects the skydiver from a serious accident or worse.

What are the [equations governing air resistance](https://en.wikipedia.org/wiki/Drag_(physics))? The answers are not simple. At low velocities, air resistance is proportional to the velocity of the object. At higher velocities, the drag is proportional to the square of the velocity. The book authors ask us assume that the retarding force from air resistance is proportional to the square of the velocity. Thus we may set it to $kv^2$, where $k$ is some constant.


https://eng.libretexts.org/Bookshelves/Introductory_Engineering/EGR_1010:_Introduction_to_Engineering_for_Engineers_and_Scientists/10:_Parachute_Person
https://instruct.math.lsa.umich.edu/lecturedemos/ma216/docs/2_3/
https://divittorio.engineering.wfu.edu/home/teaching/egr-312/final-problem-solving-lab-example
http://calculuscourse.maa.org/sample/Chapter5/Section5-1/Chapter5-1-6M.html




### The Question

Question 12 under section 1.1 of BHD reads thus:

>The velocity $v$ of a freefalling skydiver is well modeled by the differential equation
$$
m\frac{\mathrm{d}v}{\mathrm{d}t} = mg - kv^2
$$
where $m$ is the mass of the skydiver, $g$ is the gravitational constant, and $k$ is the drag
coefficient determined by the position of the diver during the dive. (Note that the
constants $m$, $g$, and $k$ are positive.)
>
>(a) Perform a qualitative analysis of this model.
>
>(b) Calculate the terminal velocity of the skydiver. Express your answer in terms
of $m$, $g$, and $k$.

We will answer this question here.

First, where relevant, a diagram always helps.

![Almost free-body diagram^[To retain reader interest, I have included some extraneous details to enliven the picture!] for a skydiving elephant à la [Dumbo](https://en.wikipedia.org/wiki/Dumbo).]({attach}images/skydiver-elephant.svg){#fig:skydiver width=80% .modal-target}

(a) The qualitative analysis goes thus. The skydiver starts with zero velocity in the vertical direction. Therefore, the initial drag is also zero. Initially, the skydiver accelerates like any downward falling object. Because $g$ is constant, this velocity increases _linearly_ with time. But the drag kicks in as the skydiver falls and his/her velocity becomes non-zero. The drag increases _quadratically_ with time. So, at some point, the drag will equal the gravitational pull of the earth. At that point in time the two forces---weight and drag---will be equal and Newton's first Law will apply. The skydiver will fall to the earth at _constant speed_. This we will call the _terminal velocity_.

(b) The downward force of gravity is constant at $mg$. The upward force of air resistance is quadratic with velocity. Therefore, a plot of these two forces with time will look like the graphs shown in [@fig:terminal-velocity]. Where the two curves intersect, the net or residual force on the skydiver will be zero. Newton's First Law will kick in, and the skydiver will fall to earth at a final, constant velocity called the _terminal velocity_.

![A plot of the two forces: the downward directed weight $W = mg$ due to gravity, and the upward directed air resistance $R = kv^2$. The velocity, $v_t$, at which the two are equal is when the net force is zero. The body will then descend at this speed until it hits the ground.]({attach}images/terminal-velocity.svg){#fig:terminal-velocity width=80% .modal-target}

At the terminal velocity, $v_t$, we have
$$
\begin{aligned}
mg &= kv_t^2\; \text{ transposing}\\
kv_{t}^2 &= mg\\
v_t^{2} &= \frac{mg}{k}\\
v_t &= \sqrt{\frac{mg}{k}}
\end{aligned}
$$ {#eq:value-vt}

## The Falling Skydiver: Two

Question 43 in section 1.2 is

>In Exercise 12 of Section 1.1, we saw that the velocity $v$ of a freefalling skydiver is
well modeled by the differential equation
$$
m\frac{\mathrm{d}v}{\mathrm{d}t} = mg - kv^2
$$
where $m$ is the mass of the skydiver, $g$ is the gravitational constant, and $k$ is the drag
coefficient determined by the position of the driver during the dive.
>
(a) Find the general solution of this differential equation.
>
(b) Confirm your answer to Exercise 12 of Section 1.1 by calculating the limit of
$$
v(t) \text{ as } t\to\infty.
$$

The prerequisite reading material for this section is entitled [separation of variables](https://en.wikipedia.org/wiki/Separation_of_variables). I urge you to read the BDH book on this topic as well. This technique means that if we have two variables, say, $u$ and $v$, we re-arrange terms by transposing them so that all terms involving $u$ are on one side, and all terms involving $v$ are on the other side. We then apply all available resources to compute what is being asked.

The notation used for calculus, while allowing for easy manipulation of symbols, is still a little difficult to justify from a philosophical viewpoint. BHD calls it "informal" algebra. Each interpretation has its drawbacks. So, just learn the process, and apply it, if digging deeper troubles your heart or head.

### Separation of variables





## The Falling Skydiver: Three

## Acknowledgements

I have freely adapted the figure [TikZ Free Body Diagram Skydiver with Parachute](https://latexdraw.com/tikz-free-body-diagram-skydiver-with-parachute/) by Mohammed Benmiloud from his website to depict  [@fig:skydiver]. I express my gratitude for his work and recommend his site for those who wish to learn more about [TikZ](https://en.wikipedia.org/wiki/PGF/TikZ).

I also express my thanks to all the creators of [TikZlings](https://github.com/samcarter/tikzlings) packages for their delightful depictions of animals and beings.


## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./differetial-equations.pdf):

::: {.sf}
<https://swanlotus.netlify.app/blogs/differential-equations.pdf>
:::




