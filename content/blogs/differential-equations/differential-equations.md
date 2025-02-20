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

To many students, mathematics is daunting, calculus even more so, and differential equations are downright terrifying. Nevertheless, there are authors who tame the subject rather than taunt the student. They approach the subject leisurely, allowing the reader to enjoy the view, and explaining interesting sights along the way. There are others who use pictures in preference to words. I have chosen two books---one from each category---as books to read, along with this blog, or even before it. Here are my two selections.

### Steven Strogatz

The applied mathematician [Steven Strogatz](https://en.wikipedia.org/wiki/Steven_Strogatz) is one of my favourite authors active in the popular mathematics genre today. He knows how to interest, educate, and sometimes, even entertain. Learning becomes easy and enjoyable as a consequence. He has written a masterful popularization of calculus, its history, techniques, significance, and applications, entitled [_Infinite Powers: How calculus reveals the secrets of the universe_](https://www.stevenstrogatz.com/books/infinite-powers) [@strogatz-2019] . Make the effort to read this book---even if it is a little at a time---and complete it. You will become a better scholar as a result, and calculus will become your friend.

### Blanchard, Devaney, and Hall

The second recommendation---a textbook by three authors, henceforth called BDH---is the result of a radical departure in the teaching of differential equations---from being a hodgepodge of mundane and special techniques, memorized and regurgitated, to a fascinating picture of how nature unfolds in time. The pedagogy of the book leverages the ubiquity of computing technology to enable a syncretic view and more profound appreciation of differential equations as the time-evolution of natural systems. Their book is called, unsurprisingly, [_Differential Equations_](http://math.bu.edu/odes/4ed-TOC.html) and is in its fourth edition [@blanchard-devaney-hall-2012]. It is not a book that you need to work through, but one you should consult for its approach and ideas. The earnest student will also doubtless, tackle a few problems! \emojifont :wink: \normalfont.

## Newton's Second Law

Perhaps the very first encounter with differential equations occurs for most people with the statement of [Newton's Second Law of Motion](https://www.britannica.com/science/Newtons-laws-of-motion/Newtons-second-law-F-ma). It is usually stated as _the net force on a body is proportional to the rate of change of the body's momentum_.

Wait a minute! Is this not physics? Yes, it is. But is it also mathematics? Yes indeed. Let us not quibble over how we divide knowledge into compartments. Let us instead consider knowledge as a porthole with which to view Nature. Nature behaves as Nature does. But humankind has imposed disciplinary barriers into the framework of human knowledge. Let us not be deterred by those barriers.

There are many terms here that must be _named_, i.e., defined and explained. Let us go through them in sequence, using SI units, and mostly avoiding implications arising from the Theory of Relativity:

#.  **Space**: This is the three dimensional space in which we live and through which matter moves. The length between two points in space is their _distance_. The set of points in a one-dimensional line is usually denoted by $\mathbb{R}$. For two-dimensions, the set is the [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product) $\mathbb{R} \times \mathbb{R} = \mathbb{R}^2$, and the points are denoted $(x, y)$ where each $x \in \mathbb{R}$ and each $y \in \mathbb{R}$. Likewise for three dimensional space where $(x, y, z) \in \mathbb{R}^3$.^[If these symbols and notation are new to you please read my blog [The Two Most Important Numbers: Zero and One](https://swanlotus.netlify.app/blogs/the-two-most-important-numbers-zero-and-one).]

#. **Time**: This is the time we experience---24 hours or 86,400 seconds in a day---usually denoted by the letter $t$.

#.  **Scalar**: A quantity that only has magnitude. Examples include time, temperature, distance, mass, energy, etc.

#.  **Vector**: A quantity that has both magnitude and direction. While _distance_ is a scalar that defines the length between two points, _displacement_ is a vector and encodes both the length between two points _and_ their direction. Vectors are usually denoted in boldface, like $\mathbf{a}$, or when written, with a squiggle atop or underneath the symbol.

#.  **Distance**: The difference in length between two points in space, without concern for their orientation.

#.  **Displacement**: Displacement is the vector analogue of distance, and is often denoted by $\mathbf{s}$. The displacement from $A$ to $B$ is the negative of the displacement from $B$ to $A$. 

#.  **Speed**: When a body moves a distance $d$ metres in time $t$ seconds, its average speed is $\frac{d}{t}$ metres per second.

#.  **Velocity**: When a body moves, _velocity_ captures both its speed and the direction in which the change occurs. Velocity is the vector analogue to speed, and is usually denoted by $\mathbf{v}$. A body whose speed is constant but whose direction is changing constantly, like a ball revolving on a string, experiences a _changing_ velocity, and is hence undergoing _acceleration_.

#. **Mass**: Mass represents the resistance matter presents to motion. Roughly, on Earth, it is proportional to weight, which is a vector. Mass is generally denoted by $m$. So, the heavier an object, the greater its mass.^[The _inertial mass_, $m_i$, is an object's resistance to acceleration when a force is applied on it, as in $F = m_{i}a$. The _gravitational mass_, $m_g$, is the strength of an object's interaction with a gravitational field, as in $G\frac{m_g}{M}{R^2}$. Both these entities are the same, i.e., $m_{i} = m_{g}$.](https://en.wikipedia.org/wiki/Equivalence_principle.)] Mass multiplied by velocity equals momentum. 

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
And there you have it: Newton's second law stated mathematically in vector form as a differential equation in the second last line of [@eq:second-law]. Force is measured in newtons, mass in kilograms, and acceleration in metres per second per second, written _m s^-2^_ or _m/s^2^_.

## The Skydiver problem

The BDH book in its fourth edition extensively treats what I call the _skydiver problem_. I have borrowed freely from the book both in terms of problem statement and approaches to its solution.

Differential equations arise naturally whenever mathematics is _applied_ to problems that arise in nature. Therefore, one needs to become aware of the technical nomenclature of fields like physics, chemistry, biology, etc., and their units where applicable.

### Prelude

The classical example of how objects fall from a height to the earth is the (apocryphal?) experiment of [Galileo throwing rocks from atop the leaning tower of Pisa](https://en.wikipedia.org/wiki/Galileo's_Leaning_Tower_of_Pisa_experiment). If the sizes of the two rocks are similar, and air resistance is negligible, they will strike the ground together.

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
Let us substitute the values og $G$, $M$, and $R$ in [SI units](https://en.wikipedia.org/wiki/International_System_of_Units) to get a value for $g$ the acceleration due to gravity felt by all objects 
on earth.
$$
\begin{aligned}
G &= 6.6743 × 10^{-11}\; \mathrm{m^{3} kg^{−1} s^{−2}}\\
M &= 5.9722 × 10^{24}\; \mathrm{kg}\\
R &= 6.3781 × 10^{6}\; \mathrm{m} \text{  giving}\\
g &= G\frac{M}{R^2} = 9.7985 \approx 9.8\; \mathrm{m\,s^{-2}}.
\end{aligned}
$${#eq:g-value}
The value of $g$ we have calculated is in [the right ball park](https://dictionary.cambridge.org/dictionary/english/be-in-the-right-ballpark).

The force exerted by gravity on an object of mass $m$ is its $W$ [weight](https://www.thefreedictionary.com/weight) which is $mg$, i.e.,
$$
W = mg\; \mathrm{N}.
$$

### Air resistance

Air resistance is usually ignored in elementary problems, but in the case of the parachuting skydiver, it is air resistance and the drag it produces that protects the skydiver from a serious accident. The problem asks us to assume that the drag, or retarding force, from air resistance is proportional to the square of the velocity, and may be set to $kv^2$, where $k$ is some constant.

Note that force is a vector, as is velocity, and we need to use vector equations. To keep things simple, we will instead keep careful tabs on the _signs_ of the various quantities. The weight is directed earthwards. The drag is directed away from the earth. If we assume that earthwards is positive, we have $v$ positive, $W = mg$ positive, and $R = kv^2$ negative. 




https://en.wikipedia.org/wiki/Drag_equation
https://math.libretexts.org/Bookshelves/Scientific_Computing_Simulations_and_Modeling/Physical_Modeling_in_MATLAB_(Downey)/11:_Second-order_systems/11.04:_Air_Resistance

![Almost free-body diagram^[To retain reader interest, I have included some extraneous details to enliven the picture!] for a skydiving elephant a la [Dumbo](https://en.wikipedia.org/wiki/Dumbo).]({attach}images/skydiver-elephant.svg){#fig:skydiver width=80% .modal-target}




Parachuting and skydiving exist as high-risk, but allowed sports, only because the air resistance on the parachute canopy prevents the skydiver from plummeting to the Earth like a rock, with fatal or near fatal consequences.

The 

The reason skydiving exists as an exhilarating sport is because when the parachute opens, it presents a large surface area to the air and engages it. The result is air-resistance or drag that is an _upward_ force that counteracts the _downward_ pull of gravity.

A simple diagram showing the forces on a skydiver is shown in XXXX


Benmiloud Mohammed

What makes skydiving a challenging and exhilarating sport is the possibility of falling through air and landing without 

The velocity v of a freefalling skydiver is well modeled by the differential equation
dv
m
 = mg − kv 2 ,
dt
where m is the mass of the skydiver, g is the gravitational constant, and k is the drag
coefficient determined by the position of the diver during the dive. (Note that the
constants m, g, and k are positive.)
(a) Perform a qualitative analysis of this model.
(b) Calculate the terminal velocity of the skydiver. Express your answer in terms
of m, g, and k.


In Exercise 12 of Section 1.1, we saw that the velocity v of a freefalling skydiver is
well modeled by the differential equation
dv
m
 = mg − kv2 ,
dt
where m is the mass of the skydiver, g is the gravitational constant, and k is the drag
coefficient determined by the position of the driver during the dive.
(a) Find the general solution of this differential equation.
(b) Confirm your answer to Exercise 12 of Section 1.1 by calculating the limit of
v(t) as t → ∞.

As we saw in Exercise 12 of Section 1.1, the velocity v of a freefalling skydiver is
well modeled by the differential equation
dv
m
 = mg − kv2 ,
dt
where m is the mass of the skydiver, g = 9.8 m/s2 is the gravitational constant,
and k is the drag coefficient determined by the position of the diver during the dive.
Consider a diver of mass m = 54 kg (120 lb) with a drag coefficient of 0.18 kg/m.
Use Euler’s method to determine how long it will take the diver to reach 95% of her
terminal velocity after she jumps from the plane. [Hint: Use the formula for terminal
velocity that was derived in Exercise 12 of Section 1.1.]



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




