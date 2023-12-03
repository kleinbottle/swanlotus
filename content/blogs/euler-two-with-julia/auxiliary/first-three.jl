# Append the third Fibonacci number to the Fibonacci array
F = [0, 1];
push!(F, F[1] + F[2]);
println(F);

