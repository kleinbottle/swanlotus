# agm
# Function to compute the arithmetic-geometric mean (AGM) of two
# positive real numbers, a0, g0.
# 
# We use BigFloat for maintaining numerical precision.
# 
# The tolerance is the stopping criterion.
# The difference between # an and gn should be less than the tolerance 
# for  the computation to terminate.
# 
# If the tolerance is not specified as an argument during the function call
# the default tolerance of 1.0e-25 is used instead.
# 
# We use it to compute agm(1, √2) to 25 places after the decimal point
# to compare it with the eleven decimal places that Gauss got in 1799.
# 
# R (Chandra) Chandrasekhar
# lnesqrt1cos0@gmail.com | feedback.swanlotus@gmail.com
# First written: 2024-12-10
# Last revised : 2024-12-10
# 

using Printf

function agm(a0::BigFloat, g0::BigFloat, tolerance::BigFloat=BigFloat("1.0e-25"))
    if (a0 <= 0) || (g0 <= 0) 
        @printf("Inputs should be positive reals\n.")
    else
        n = 0
        @printf("%s %d %0.25f %0.25f\n", "Start", n, a0, g0)
        #
        an, gn = (a0 + g0) / 2.0, sqrt(a0 * g0)
        @printf("%d %0.25f %0.25f\n", n, an, gn)
        while abs(an - gn) > tolerance
            @printf("%d %0.25f %0.25f\n", n, an, gn)
            an, gn = (an + gn) / 2.0, sqrt(an * gn)
            @printf("%d %0.25f %0.25f\n", n, an, gn)
#             @printf("%d %0.25f %0.25f\n", n, an, gn)
            n += 1
        end
    end
end

# Call the function with BigFloat arguments
# Can test that inputs are within range and also set tolerance
# 
# agm(BigFloat(1.0), sqrt(BigFloat(2.0)), BigFloat(1e-2))
# 
agm(BigFloat(1.0), sqrt(BigFloat(2.0)))
