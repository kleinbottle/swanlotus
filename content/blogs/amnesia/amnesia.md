---
title: Doron's Mathematical Amnesia
author: R (Chandra) Chandrasekhar
date: 2024-04-08
modified: 2024-04-13
category: Simkin Tales
tags: mathematics geometry algebra trigonometry
summary: "Poor Doron has suffered a strange cognitive deficit. His language and speech skills have survived intact, but he has developed 'selective mathematical amnesia'. He has forgotten much of high school mathematics---which for a person with a Master's degree in engineering---is a rather tragic state of affairs. In fact, his knowledge of mathematics now resembles [Emmental cheese](https://en.wikipedia.org/wiki/Emmental_cheese)---full of holes."
opengraphimage: Emmentaler_Premier_Cru.jpg
status: published
---

"I don't know if you have heard, but my dear friend Doron Rabinovich met with a rather bad accident about two weeks ago. Thankfully, it was not fatal, but he did suffer a very severe concussion," my friend Solus "Sol" Simkin told me, as we settled for a leisurely afternoon tea at our favourite [_Orchard Valley Coffeeshop_](http://www.orchardvalleycoffee.net/).

"I don't know Doron well, but I do recall that he had quite a way with numbers," I replied.

"Poor Doron has suffered a strange cognitive deficit. His language and speech skills have survived intact, but he has developed 'selective mathematical amnesia'. He has forgotten much of high school mathematics---which for a person with a Master's degree in engineering---is a rather tragic state of affairs. In fact, his knowledge of mathematics now resembles [Emmental cheese](https://en.wikipedia.org/wiki/Emmental_cheese)---full of holes."

![Emmental cheese is full of holes.^[Attribution: [Manuel2](https://commons.wikimedia.org/wiki/File:Emmentaler_Premier_Cru.jpg), [CC BY-SA 2.0 DE](https://creativecommons.org/licenses/by-sa/2.0/de/deed.en) via Wikimedia Commons]]({attach}images/Emmentaler_Premier_Cru.jpg){#fig:cheese width=80% .modal-target}

"Indeed," I replied. "Is there any way out?"

"Come to think of it, most youngsters' knowledge of mathematics also resembles Emmental cheese nowadays. Their attention spans are so short-lived, and their memories so volatile, that many of them belatedly discover that they also suffer from mathematical amnesia when they enter university.

"I thought it a good idea to see if I could help repair and restore Doron's recollection of mathematics, and have embarked on an effort  to that end. Who knows, many school leavers could also find the programme useful."

"Tell me more," I quipped, and settled down to yet another Simkin Tale as Sol recounted his adventure with Doron. The rest of this blog is the verbatim first person account of Sol.

## To heal amnesia, start with history

"I strongly believe that to heal amnesia, we must start with history. The networked tapestry of history is a durable foundation upon which to recollect, repair, and restore. It will be an insurance against future selective amnesia.

"Accordingly, I started Doron on the third edition of John Stillwell's book, [Mathematics and Its History](https://www.amazon.in/Mathematics-Its-History-Undergraduate-Texts/dp/144196052X) [@stillwell2010]." 

![The third edition of John Stillwell's _Mathematics and Its History_.]({attach}images/stillwell-history-third.jpg){#fig:stillwell width=50% .modal-target}

"I told him to read it through, with or without full comprehension. I asked him to gloss over the problems. I promised that I would direct Doron to tractable problems. He would then make some effort remembering, and sketching a solution. I would guide him if he got stuck. It seemed to me to be a workable compromise between spoonfeeding and letting him drown at the deep end."

## A trigonometric identity from yesteryear

Between pages 7 and 9 of his book, Stillwell gives clues aplenty, for problem 1.3.4, to guide a student into discovering expressions for $\cos\theta$ and $\sin\theta$ in terms of $t = \tan\frac{\theta}{2}$:
$$
\cos\theta = \frac{1 - t^2}{1 + t^2}
$${#eq:costheta}
and
$$
\sin\theta = \frac{2t}{1 + t^2}
$${#eq:sintheta}

I asked Doron to attempt this rather ancient problem, but he greeted me with eyes glazed by  incomprehension. I felt really sorry for the poor sod, and determined that I would handhold him for at least this problem.

## Starting with the unit circle

This is a problem that is most easily understood using diagrams. I thought that Doron's face would light up in an instant once he saw @fig:pythagoras. Alas! I was mistaken. Here is the image that I first showed him:

![A right triangle on a unit circle. See the text for the discussion.]({attach}images/pythagoras.svg){#fig:pythagoras width=90% .modal-target}

It elicited almost no indication of knowingness from Doron. He simply stared blankly at it. That was when I realized that the diagrams of mathematics, which hold such significance for the cognoscenti, are simply meaningless scrawls of black on white for the vast untutored majority. And I was aghast that my dear Doron had joined their numbers now. But, I soldiered on.

"Let us assume the truth of the [Pythagorean theorem](https://en.wikipedia.org/wiki/Pythagorean_theorem)", I told Doron. "In @fig:pythagoras, we have a circle with centre $O$ and a radius of one, also called a unit circle. The triangle $OPR$ is right-angled and $R$ is an arbitrary point on the circle,  having coordinates $(x, y)$. Note that the radius $OR$ is one unit in length. By the theorem of Pythagoras, we may claim that
$$
\begin{aligned}
OP^2 + PR^2 &= OR^2\\
x^2 + y^2 &= 1.
\end{aligned}
$${#eq:circle}
This is also the equation of the circle."

Interestingly, because the hypotenuse is one unit, we may also say that $\cos\theta = \frac{x}{1} = x$ and similarly that $\sin\theta = \frac{y}{1} = y$. Moreover, $\tan\theta = \frac{y}{x}$ by definition. All these formulae are also included in @fig:pythagoras in order to stimulate recollection. In a polite gesture devoid of intelligence, Doron nodded like a dazed man. It was gut-wrenching to see such steep intellectual decline in one who was once so brilliant.

## Getting to $\tan\frac{\theta}{2}$

Suppressing my doubts as to whether it was worthwhile to proceed further, I battled on. I showed Doron @fig:tantheta, and told him that here we needed some geometry and the ability to solve [quadratic equations](https://en.wikipedia.org/wiki/Quadratic_equation). The moment he heard the word _quadratic_, Doron perked up a little, buoyed perhaps by a memory of an early mathematical triumph from his schooldays.

![$\cos\theta$ and $\sin\theta$ vis-a-vis $\tan\frac{\theta}{2}$. See the text for explanation.]({attach}images/tantheta.svg){#fig:tantheta width=90% .modal-target}

We now draw a line from $Q$ to $R$, which intersects the $y$ axis at $S(0, t)$. Looking at triangle $OQR$, it is clear that that its two legs, $OQ$ and $OR$, are equal since they are both radii of the unit circle.

I now believed that I had Doron's attention, and decided to pounce for the kill. I asked Doron if he could tell me something about [isosceles triangles](https://en.wikipedia.org/wiki/Isosceles_triangle) in which the two legs were equal. Startlingly, he said "same base angles". I was incredibly encouraged.

Let us call these equal angles $\alpha$ as marked on @fig:tantheta. "How are the values $\alpha$ and $\theta$ related?" I ventured next. "Think about the properties of triangles in elementary school. What is a property common to _all triangles_, not only isosceles ones?"

Doron stared vacantly again. I decided to let him rest his injured brain, and resume his mathematical rehabilitation another day.

## The exterior angle of a triangle

When we resumed two days later, Doron struggled to say a word. He started out "ext, ext, ext" but could not go further. It was then that I realized how important are the _names_ we attach to concepts and things. The very basis of all knowledge is to able to name new objects. Only then can we progress to know about them. In his heroic struggle, Doron had reached the doorstep of the correct name, but could not open the door.

"How about exterior angle, Doron?" I asked. I was rewarded with a "Yes, yes, yes, yes." With a little more nudging, we got to the point where Doron remembered that [the exterior angle of a triangle equalled the sum of its two interior angles](https://www.storyofmathematics.com/exterior-angle-theorem/).

I slowly coaxed Doron along until he could utter "Alpha is half theta". That I considered a major breakthrough, for indeed, 
$$
\alpha = \frac{\theta}{2}.
$${#eq:alpha}
Doron proudly told me that he did not need the help of the statement $\theta = 2\alpha$ shown in @fig:tantheta to work this out. I was beside myself with happiness and decided then to punctuate my rehabilitation sessions with generous periods of rest, until Doron started consistently remembering what he already once knew.

## What does $\tan\alpha$ equal to?

At the next session, I asked Doron to concentrate on triangle $OQS$. Stillwell had astutely suggested in his book that $OS$ should be set to some parameter $t$. By definition then, because $OQ$ is a radius, 
$$
\tan\alpha = \tan\frac{\theta}{2} = \frac{OS}{OQ} = \frac{t}{1} = t.
$$ {#eq:halftheta}

Doron immediately called out @eq:halftheta in words. We were now close to the denouement, but I did not wish to test my luck. I suggested to him that we should treat ourselves to ice-creams after this heroic effort. We met again three days later.

## The coordinates of $R$ in terms of $t$

@fig:tantheta states that $R$ has arbitrary co-ordinates $x$ and $y$. What we now needed to do was to link those values, which are in the ratio of $\tan\theta$ to the value $t$ which was equal to $\tan\frac{\theta}{2}$. Boldly, I challenged Doron with "How would you link $t$ to $x$ and $y$?"

This was the only part of the question that needed imagination and effort to progress. I was hoping that Doron would chime in with an answer, but after a futile hour of exhausting effort on both our parts, I decided to call it quits for the week.

## Equality as a pervasive idea in mathematics

At the heart of almost all mathematics is the idea of equality. An equation says that two things related by the $=$ sign are indeed the same. It was a bit like calling "Richard", "Dick" or "Rick", or some such moniker, when there was no room for confusion. I was hoping against hope that this fundamental  principle of equality would somehow surface from the mental depths of Doron's brain.

The day he could spontaneously display facility with the mathematical game of aliases, he would recover, and never look back again---so I felt. Was $3 + 2$ not an alias for $5$? It was a suggestion like that which got me started again with Doron when we next met.

And he returned my serve expertly and very unexpectedly. He said, "$R$ is on the straight line $QSR$ and it is also on the unit circle. If we find out where the straight line and circle meet, we will get descriptions of $R$ that are aliases. Will that not do?"

I heartily congratulated Doron, when he said this, little knowing how to hide my emotional exhilaration at his progress. He was indeed coming out of the dungeon of mathematical amnesia, and I knew intuitively that he would bask thereafter in the sunshine of newfound old mathematical knowledge.

## The line $QS$

When we met next, I asked Doron how he would proceed, using his insight of equality. The gist of what he and I discussed went as follows:

#. Consider triangle $OQS$. $\frac{OS}{OQ} = \tan\alpha = \tan\frac{\theta}{2} = \frac{t}{1} = t$. Therefore, $t$ as a parameter in this exercise, is really a short-form for $\tan\frac{\theta}{2}$.

#. The straight line $QS$ has a gradient of $t$ since its slope is $\tan\alpha = t$. So, its equation must be $y = tx + c$. Since it also passes through $(-1, 0)$, it must satisfy $0 = t(-1) + c$ which gives us $c = t$. So, 
$$
y = t(x + 1).
$${#eq:stline}

#. Substituting for $y$ in the equation of a circle, we get 
$$
\begin{aligned}
x^2 +(t(x + 1))^2 &= 1\\
x^2(t^2 + 1) + 2t^2x + t^2 - 1 &= 0 \mbox{ ; divide through by $(t^2 + 1)$}\\
x^2 + \frac{2t^2}{t^2 + 1}x + \frac{t^2 - 1}{t^2 +1} &= 0
\end{aligned}
$${#eq:quadratic}
If we bear in mind that $x = -1$ is a solution as the line $QSR$ passes through $Q$, we can assert that $(x + 1)$ is a factor of this quadratic, by virtue of the [polynomial remainder theorem](https://en.wikipedia.org/wiki/Polynomial_remainder_theorem) and the [factor theorem](https://en.wikipedia.org/wiki/Factor_theorem). Therefore, the equation may be factorized into _two linear_ factors, like so: $(x + 1)(x + p)$.

#. Equating coefficients, we have from @eq:quadratic, 
$$
\begin{aligned}
(x + 1)(x + p) &= x^2 + (p + 1)x + p \\
&= x^2 + \frac{2t^2}{t^2 + 1}x + \frac{t^2 - 1}{t^2 +1}.
\end{aligned}
$$ So, $$
\begin{aligned}
p + 1 &= \frac{2t^2}{t^2 + 1} \mbox{ giving us}\\
p &= \frac{2t^2}{t^2 + 1} - 1\\
p &= \frac{2t^2 - (t^2 + 1)}{t^2 + 1}\\
p &= \frac{2t^2 - t^2 - 1}{t^2 + 1}\\
p &= \frac{t^2 - 1}{t^2 + 1}\\
\end{aligned}
$$ If $(x + p)$ is a factor, $x = -p$ which means $$
x = \frac{1 - t^2}{1 + t^2}.
$${#eq:forx}

#. Substituting for $x$ into the equation for the straight line, $QSR$, we get 
$$
\begin{aligned}
y &= t(x + 1)\\
&= t(\frac{1 - t^2}{1 + t^2} + 1)\\
&= t(\frac{1 - t^2 + 1 + t^2}{1 + t^2})\\
&= t(\frac{2}{1 + t^2})\\
&= \frac{2t}{1 + t^2}.
\end{aligned} 
$${#eq:fory}

And thus we could claim [QED](https://en.wikipedia.org/wiki/Q.E.D.).

## Looking back

Finally, Doron and I had mastered the monster, although to some it would seem that we had only tamed a titmouse! Step by single step, like a CPU in a computer, we had waded through high school geometry, algebra, and trigonometry to finally derive the relation we were after.

A year later, I asked Doron what he thought of his first experience of solving problems after his mishap. With uncanny sagacity, he said that he had learned to recognize symmetry, manipulate symbols algebraically, and to perceive equality to force an insight.

Stunned by this level of maturity---which could only come from a seasoned mathematician who was used to abstractions---I asked him what was needed besides proficiency in algebraic manipulation. 

Doron said, "Imagination vivifies not only geometry, but all of mathematics. If one cannot imagine, one cannot see the beauty of the mathematics that exists, nor will one be able to invent newer mathematics with yet more beauty."

On that high note, Sol concluded his heartwarming tale of Doron's mathematical amnesia, and his eventual complete rehabilitation. So engrossed had I been by his tale, it took me a while to realize that were still at the _Orchard Valley Coffeeshop_ and dusk was gently darkening the day.

## Acknowledgements

@fig:pythagoras and @fig:tantheta were drawn using the [TikZ-PGF package](https://en.wikipedia.org/wiki/PGF/TikZ) and [LuaLaTeX](https://en.wikipedia.org/wiki/LuaTeX). If you are interested in how to program such figures, please take a look at the source code available in these files:

- [`TikZ-Preamble.tex`]({attach}auxiliary/TikZ-Preamble.tex)
- [`pythagoras.tex`]({attach}auxiliary/pythagoras.tex)
- [`tantheta.tex`]({attach}auxiliary/tantheta.tex)

These packages are immensely powerful but the learning curve is not gentle. Once proficiency and familiarity are gained, the results are impressive and easy.

PDF output was converted to SVG graphics like so:

`pdftocairo -svg <filename.pdf> <filename.svg>`

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./amnesia.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/amnesia.pdf>
:::
