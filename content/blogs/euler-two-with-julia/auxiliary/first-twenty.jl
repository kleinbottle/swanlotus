# Generate the first twenty Fibonacci numbers
F = [0, 1];
for i in (3:20)
  push!(F, F[i-1] + F[i-2]); # append to array
end
println(F);
