\section{From calculus to analysis}

At high school you were taught how to differentiate and integrate. You were exposed to all sorts of tricks and special techniques to compute specific integrals, especially those involving inverse trigonometric functions, and so on. If you revelled in mastering and applying such techniques, you might find that what succeeds high school \textit{calculus} at university is a horse of an entirely different colour, called \textit{analysis.}

You might even be alarmed that rather than routine problems to solve for the value of some quantity, or simply to work through and demonstrate a fact in a straightforward fashion, you are now required to prove theorems: something that requires a different mindset and skill set.

\subsection{Calculus versus Analysis}

High school calculus appeals to intuition and the visual sense through geometric ideas like slopes and areas. Analysis on the other hand is logically precise and uses arithmetic as the basis for deriving results. Intuition has given way to logical precision, and pictures have yielded to symbols. The infinitesimals of calculus have given way to the limits and infinite sums of analysis. All this takes some getting used to.

\subsection{Recommended texts}

Several texts have been written to highlight the differences between calculus and analysis and to ease the transition from the one to the other. \citeauthor*{gardiner1982}'s book \citetitle*{gardiner1982} \cite{gardiner1982} gives an eminently readable account of the rationale for analysis that is accessible to someone familiar with calculus. This book has been slightly expanded, given a new title, and reprinted in an inexpensive edition \cite{gardiner2002}: read it if you can.

Another very readable and fascinating recountal of the reasons why analysis \textit{had to arise} is given in \citeauthor*{bressoud2007}'s text \citetitle*{bressoud2007} \cite{bressoud2007}. The time spent reading it will be well rewarded with a quantum jump in your mathematical understanding and maturity.

\citeauthor*{abbott2001}'s lucid \citetitle*{abbott2001} \cite{abbott2001} is another text which gives clear, comprehensible motivations and explanations without losing rigour.

Other, more recent books that bridge the calculus-analysis divide include the texts by \citeauthor{ghorpadelimaye2006} \cite{ghorpadelimaye2006}, \citeauthor{brannan2006} \cite{brannan2006}, \citeauthor{beyer2010} \cite{beyer2010} and \citeauthor{schinazi2012} \cite{schinazi2012}.

My favourite text on introductory analysis is \citeauthor*{rosenlicht1986}'s \citetitle*{rosenlicht1986} \cite{rosenlicht1986}. It is a marvel of clarity that is not too expensive to own. Read and work through it if you can.

\subsection{Clarifying doubts}

If you have a specific but recalcitrant doubt, you might need to consult more than one book before the \enquote{eureka moment} or epiphany occurs. Often it is the earlier texts with their careful expositions and more leisurely pace that facilitate such understanding. Let me illustrate with an example.

\begin{SASexample}
The logically rigorous\textemdash but intuitively far from obvious\textemdash \textit{epsilon-delta definition of a limit} is often considered one of the most difficult-to-grasp concepts that the beginning undergraduate has to contend with. It goes like this:

For a real-valued function $f$ of a single real variable, defined on an open interval containing $a$, with real $L$, $\varepsilon$, and $\delta$,
\[
  \lim_{x\rightarrow a}f(x) = L \Leftrightarrow \forall \varepsilon > 0\ \exists \ \delta > 0 : \forall x\ (0 < |x - a| < \delta \ \Rightarrow \ |f(x) - L| < \varepsilon).
\]

You might be alarmed by the unfamiliar symbolic language in which it is couched. But even if you understood that, you might still not know why it is expressed the way it is, which\textemdash if truth be told\textemdash is rather contrived. You would then need to do some digging to find out why this specially crafted definition became necessary. For instance, we explicitly exclude the case of $x = a$ in the above definition through the condition $0 < |x - a|$. Thus $f(a)$ need not even be defined!

It is beyond the scope of this book to venture further, but if you are confused or curious, I recommend you to read one of the most careful and thorough explanations of this definition that I have seen. It appears in section 4.3, pp 128\textendash140, of the book \citetitle*{morash1987} by \citeauthor*{morash1987} \cite{morash1987}, \href{http://archive.org/details/bridgetoabstract00mora}{which is also available online.}\footnote{Incidentally, this book also covers the art of writing mathematical proofs, which we look at later in this chapter in \cref{sec:proof}.}

Another text that does an admirable job of explaining this definition is \citeauthor*{exner1999}'s \citetitle*{exner1999} \cite[chapter 1]{exner1999}.\end{SASexample}
