# buffon.jl
# Buffon's Needle Simulation in Julia
# 
# Adapted from a response from ChatGPT to the request
# 
# Buffon's needle simulation program in Julia
# 
# The script is remarkably close to my mathematical development
# and I think it is well written.
# 
# It uses angle in [0, pi/2] but I use angles in [0, pi].
# The numerical result is unchanged.
# 
# C/N = 2L/pi*d => pi = 2L/d * N/C.
#
# R (Chandra) Chandrasekhar
# independent Scholar, Thinker, Author, Researcher (iSTAR)
# lnesqrt1cos0@gmail.com | chyavana@gmail.com
# First written: 2024-12-16
# Last revised : 2024-12-16
# 
function buffon_needle(num_trials::Int, L::Float64, d::Float64)
    if L > d
        println("Warning: The needle length L should not exceed the line spacing d.")
    end
    
    # Counter for needle crossings
    crossings = 0
    
    for _ in 1:num_trials
        # Randomly generate the distance from the needle's center to the nearest line (uniform [0, d/2])
        distance_to_line = rand() * (d / 2)
        
        # Randomly generate the angle of the needle relative to the lines (uniform [0, π]); not π/2.
        angle = rand() * (π) # Instead of pi/2, use pi as in blog.
        
        # Check if the needle crosses a line
        if distance_to_line <= (L / 2) * sin(angle)
            crossings += 1
        end
    end
    
    # Estimate π
    if crossings > 0
        pi_estimate = (2 * L * num_trials) / (crossings * d)
    else
        pi_estimate = Inf # Avoid division by zero
    end
    
    return pi_estimate
end

# Parameters
num_trials = 100000  # Number of needle drops
L = 2.0              # Length of the needle in blog
d = 3.0              # Distance between parallel lines in blog

# Run the simulation
pi_estimate = buffon_needle(num_trials, L, d)
println("Estimated value of π: $pi_estimate")
