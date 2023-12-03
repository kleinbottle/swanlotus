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
println(F)
