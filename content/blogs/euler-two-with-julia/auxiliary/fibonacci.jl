#! /usr/local/bin/julia
# Generate Fibonacci numbers than 4000000
F = [0, 1];
push!(F, F[1]+F[2]);
println("$(F)");
# Fmax = 4000000;
# for i in (3:20)
#   F[i] = F[i-1] + F[i-2];
#   append!(F, F[i])
#   if (F[i] > Fmax)
#     break;
#   end
# end
