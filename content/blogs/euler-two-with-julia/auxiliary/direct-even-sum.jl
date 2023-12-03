# direct-even-sum.jl
#
# Sum of all even-valued terms of the Fibonacci sequence
# that do not exceed maxval; equal to 4000000 for Euler Project 2
#
# https://projecteuler.net/problem=2
#
# This version was suggested by the posts in
# https://discourse.julialang.org/t/help-with-project-euler-2-undef-inits-printing-multiplication-by-juxtaposition-and-more/106930
#
# We do not use arrays/vectors and perform the recurrence relation with three scalar
# variables: next, current, previous
# and accumulate the sum in a single scalar called sum.
#
# By making the code into a function, generalize it.
#
# R (Chandra) Chandrasekhar
# independent Scholar, Thinker, Author, Researcher (iSTAR)
# lnesqrt1cos0@gmail.com | chyavana@gmail.com
# First written: 2023-12-02
# Last revised : 2023-12-02
#

function fibonacci_even_sum(maxval)
  current, previous = 2, 0
  sum = current + previous
  next = 4current + previous # recurrence relation for even-valued Fibonacci numbers
  while (next <= maxval)
    sum += next
    current, previous = next, current
    next = 4current + previous # recurrence relation for even-valued Fibonacci numbers
  end
  return sum
end

evensum = fibonacci_even_sum(4000000)
println(evensum)
