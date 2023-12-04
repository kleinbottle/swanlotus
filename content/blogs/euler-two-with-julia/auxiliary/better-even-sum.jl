# better-even-sum.jl
#
# in answer to Euler Project Problem Two
#
# This solution was provided by DNF at
#
# https://discourse.julialang.org/t/is-it-possible-to-suppres-the-printing-of-any-before-an-array-is-printed/106930/7?u=chandra
#
# in response to a query of mine.
#
# It has been modified slightly to make the code more closely match the recurrence relation.
#

function fibo(maxval)
    val = 1
    F = [0, val] # assign values to the first two Fibonacci terms
    while val <= maxval
        push!(F, val) # the third term is also 1
        val = F[end] + F[end-1] # the recurrence relation; same as v += F[end-1]
    end
    return F # return the whole array
end

#
# Obtain the Fibonacci sequence for all values not exceeding 4 million
#
A = fibo(4000000)
println(A, " ", length(A)) # The length gives the index of the largest admissible Fibonacci number

#
# Extract and sum the even-valued terms
#
E = A[1:3:end]
println(sum(E))
