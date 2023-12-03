# Generate the Fibonacci numbers which do not exceed 4 million
const MAX = 4000000;
F = [0, 1, undef]
i = 3 # Array already has three elements
#
while true
  global i
  F[i] = F[i-1] + F[i-2]
  # println("$(i)" , " ", "$(F[i])") # for troubleshooting
  (F[i] + F[i-1]) <= MAX || break
  push!(F, F[i]) # append to array
  i += 1
end
#
println(i)
println(Int.(F))
#
# Sum of even Fibonacci numbers in F
#
E = F[1:3:end]
println(Int.(E))
println(sum(E)) # This is what we want
