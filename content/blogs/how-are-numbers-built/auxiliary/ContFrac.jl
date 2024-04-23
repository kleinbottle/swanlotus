# ContFrac.jl
# Continued fractions module
#
# R (Chandra) Chandrasekhar
# independent Scholar, Thinker, Author, Researcher (iSTAR)
# lnesqrt1cos0@gmail.com | chyavana@gmail.com
# First written: 2023-12-18
# Last revised : 2023-12-19
# Last revised : 2024-04-23
#

# Continued fractions are well matched with:
# (a) the divrem function for integer division and remainder; and
# (b) the // operator for expressing rational numbers
#
# One-dimensional column vectors are suitable for holding
# (a) The continued fraction expansion in the form [a0; a1, a2, ..., an]
#     To output the vector, we _construct_ the output to match the above form.
# (b) Partial quotients may also be expressed as column vectors.
# (c) Convergents may also be be expressed as column vectors.
#
# Infinite continued fractions representing irrational numbers are
# possible in the forward direction but not at present in the reverse direction.
#

# There are three functions:
#
# fractocf [fraction to continued fraction]
# (a) Input is a tuple: numerator (num) and denominator (denom)
# (b) Output is the array giving the continued fraction in the form [a0; a1, a2, a3, ..., an]
# No type or error checking
#

function fractocf(num, denom)
    a = Int[]
    quo, rem = divrem(num, denom)
    a0 = quo
    push!(a, a0)
    num = denom
    denom = rem
    while (rem != 0)
        quo, rem = divrem(num, denom)
        push!(a, quo)
        num = denom
        denom = rem
    end
    return a
end

# cftofrac
# Continued fraction to fraction
# Reverse of the previous function
#
function cftofrac(a)
    i = length(a)
    frac = a[end]
    while i != 1
    frac = 1//frac
       frac += a[i-1]
       i -= 1
    end
    return frac
end

# convergent
# which gives successive convergents for any finite simple continued fraction
# The infinite case is yet to be visualized for proper abstraction
# The recurrence relations are:
# (a) p1 = a1
# (b) q1 = 1
# (c) p2 = a1a2 + 1
# (d) q2 = a2
# (e) pi = aip_(i-1) + p_(i-2); i = 3, 4, 5,...,n
# (f) qi = aiq_(i-1) _ q_(i-2); i = 3, 4, 5,...,n
# Note that we need to prime the loop with two preloaded values
# before it kicks in and takes over.
# Reference: C D Olds.
#

function convergent(a)
    conv = Rational[]
    p = Rational[a[1], a[1]*a[2]+1]
    q = Rational[1, a[2]]
    loop = length(a) - 2
    push!(conv, a[1])
    push!(conv, p[2]//q[2])
    i = 3
    while loop != 0
        pc = a[i]p[i-1] + p[i-2]
        qc = a[i]q[i-1] + q[i-2]
        push!(conv, pc//qc)
        push!(p, pc)
        push!(q, qc)
        i += 1
        loop -= 1
    end
    return(conv)
end

#
# Display the output array in continued fraction format
# as used by convention
#

function displayCF(a)
    println("[$(a[1]); " * join(a[2:end], ", ") * "]")
end

### START OF TESTS ###

#
# Tests: A: Fraction to Continued Fraction
#

# 1. Test of zero as input: PASSED: [0; ]
#
num, denom = 0, 1
cf = fractocf(num, denom)
println("Input fraction is $num/$denom")
print("Output continued fraction is ")
displayCF(cf)

# 2. Test of a rational number with numerator greater than denominator
# PASSED: [19; 1, 2, 1, 2]
# Verified at https://www.wolframalpha.com/input?i=continuedFraction%28217%2F11%29
# to yield [19; 1, 2, 1, 2]
#
num, denom = 217, 11
cf = fractocf(num, denom)
println("Input fraction is $num/$denom")
print("Output continued fraction is ")
displayCF(cf)


# 3. Rational number with numerator less than denominator
# PASSED: [0; 19, 1, 2, 1, 2]
# Verified at https://www.wolframalpha.com/input?i=continuedFraction%28%2811%2F217%29
# to yield: [0; 19, 1, 2, 1, 2]
#
num, denom = 11, 217
cf = fractocf(num, denom)
println("Input fraction is $num/$denom")
print("Output continued fraction is ")
displayCF(cf)

# Tests: B: Continued Fraction to Fraction

# 1. 1-D zero vector: PASSED: 0

cf = [0]
frac = cftofrac(cf)
println("Input continued fraction is $cf")
println("Output fraction is $frac")

# 2. Continued fraction begins with first element zero
# PASSED: 477//1927
# https://www.wolframalpha.com/input?i=continuedFraction%5B0%3B+4%2C+25%2C+9%2C+2%5D
# yields 477/1927
#
cf = [0, 4, 25, 9, 2]
frac = cftofrac(cf)
println("Input continued fraction is $cf")
println("Output fraction is $frac")

# 3. Continued fraction begins with first element non-zero
# PASSED: 1927//477
# https://www.wolframalpha.com/input?i=continuedFraction%5B4%3B+25%2C+9%2C+2%5D
# yields 1927/477
#
cf = [4, 25, 9, 2]
frac = cftofrac(cf)
println("Input continued fraction is $cf")
println("Output fraction is $frac")

# 4. Last element of continued fraction is 1 and teh second last element
# is reduced by 1. The result should be the same.
# PASSED: 1927//477
#
cf = [4, 25, 9, 1, 1]
frac = cftofrac(cf)
println("Input continued fraction is $cf")
println("Output fraction is $frac")

# Tests: C: Convergents

# 1. Finite simple continued fraction
# PASSED: 3//1, 16//5, 35//11, 191//60, 1754//551, 14223//4468
# Verified at Wolfram Alpha:
# https://www.wolframalpha.com/input?i=Convergents%28%5B3%3B+5%2C+2%2C+5%2C+9%2C+8%5D%29
# {3, 16/5, 35/11, 191/60, 1754/551, 14223/4468}
#
cf = [3, 5, 2, 5, 9, 8]
conv = convergent(cf)
println("Input continued fraction is $cf")
println("Convergents are $conv")

# 2. Simulated infinite simple continued fraction for sqrt(2)
# PASSED: 1//1, 3//2, 7//5, 17//12, 41//29, 99//70, 239//169, 577//408, 1393//985, 3363//2378, 8119//5741, 19601//13860, 47321//33461, 114243//80782, 275807//195025, 665857//470832, 1607521//1136689
#
# Tested against Wolfram Alpha at
# https://www.wolframalpha.com/input?i=Convergents%28%5B1%3B+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%2C+2%5D%29
#
# to yield {1, 3/2, 7/5, 17/12, 41/29, 99/70, 239/169, 577/408, 1393/985, 3363/2378, 8119/5741, 19601/13860, 47321/33461, 114243/80782, 275807/195025, 665857/470832, 1607521/1136689}

cf = [1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
conv = convergent(cf)
println("Input continued fraction is $cf")
println("Convergents are $conv")

### END OF TESTS ###

### Blog ###

num = 3257
denom = 106
a = fractocf(num, denom)
println("$num/$denom = $a")

# [30; 1, 2, 1, 1, 1, 9] from Wolfram Alpha
# 30 + 1/(1 + 1/(2 + 1/(1 + 1/(1 + 1/(1 + 1/9)))))
