# agm-float.jl
# 
# Function to compute the arithmetic-geometric mean (AGM)
#  of two positive real numbers, a0, g0.
#
# We use BigFloat for maintaining numerical precision.
#
# The TOLERANCE is the stopping criterion. Its value is fixed here.
# The difference between an and gn should be less than the TOLERANCE 
# for the computation to terminate.
#
# agm(1, √2) is computed and displayed to 25 places after the decimal point
# to compare it with the eleven figures that Gauss got in 1799.
# We also use it to compare with the values quoted in the paper by Cox.
#
# Nandakumar Chandrasekhar
# navanitachora@gmail.com
# First written: 2024-12-10
# Last revised : 2024-12-10
#

using Printf

const TOLERANCE = 1.0e-25

function agm(an::BigFloat, gn::BigFloat)
    if (an <= 0) || (gn <= 0)
        @printf("Inputs should be positive reals.\n")
    else
        n = 0
        @printf("%d %0.25f %0.25f\n", n, an, gn)
        while abs(an - gn) > TOLERANCE
            n += 1
            an, gn = (an + gn) / 2.0, sqrt(an * gn)
            @printf("%d %0.25f %0.25f\n", n, an, gn)
        end
    end
end

# Call the function with BigFloat arguments

agm(sqrt(BigFloat(2.0)), BigFloat(1.0))
