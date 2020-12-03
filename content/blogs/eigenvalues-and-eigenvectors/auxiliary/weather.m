# weather.m
# Time-evolution of a given initial weather vector for a given first-order
# transition (Markov) matrix.
# Written specifically as an example for a blog on eigenvalues and eigenvectors
# and their importance.
# 
# The global variables are as follows:
#
# Markov or transition matrix M
# columns: today's weather: sunny, cloudy, rainy
# rows: tomorrow's weather: sunny, cloudy, rainy
# values: transition probabilities
# rule: column sum must equal one
#
# Weather vector w with column sum of one
#
# The recurrence relation is:
# w_(k+1) = M*w_k
#
# Usage: `weather` on the Octave command line interface (CLI).

# author:   R (Chandra) Chandrasekhar
# email:    chyavana@gmail.com | chandra@swanlotus.org
# website:  http://swanlotus.org
# written:  2015-11-20
# revised:  2015-12-06
# revised:  2015-12-12
# revised:  2019-12-29

# Erase all global variables
clear all;

# Input the transition matrix M
disp('The transition matrix M is: ')
disp(M = [0.65, 0.30, 0.10; 0.25, 0.45, 0.40; 0.10, 0.25, 0.50])

# Evaluate roots of characteristic polynomial of M
[rho] = roots(poly (M));
printf('\n')
disp('Roots of the characteristic polynomial of M are:'), disp(rho)

# Eigenvalues and eigenvectors of M are:
[eigenvectors, eigenvalues] = eig (M);

printf('\nThe eigenvalues are:\n')
for k = 1:3
  printf('%9s%d%s %10.5f\n', 'lambda_', k, ':', eigenvalues(k, k))
endfor

printf('\nThe eigenvectors are:')
for k = 1:3
  printf('\n%s%d%s\n', 'e_', k, ':')
  printf('%10.5f\n', eigenvectors(:, k))
endfor

# Confirm that M*e_1 = e_1
printf('\n')
disp('The product of M and eigenvector e_1 is:')
disp(M*eigenvectors(:, 1))
printf('\n')

# Assemble P and P_inv and confirm that their product is the identity matrix
disp('P:'), disp(P = eigenvectors), printf('\n')
disp('P_inv:'), disp(P_inv = inv(P)), printf('\n')
disp('Check that P*P_inv = '), disp(P*P_inv), printf('\n')

# Confirm that MP = PD and that M = P*D*P_inv
D = eigenvalues;
disp("The product M*P is:"), disp(M*P), printf('\n')
disp("The product P*D is:"), disp(P*D), printf('\n')
disp("The product P*D*P_inv is:"), disp(P*D*P_inv), disp("which is M.")
printf('\n')

# Initial weather vector is w_0
w_0(:, 1) = [0.55; 0.34; 0.11];
printf('The given initial weather vector w_0 is:\n'), printf('%10.5f\n', w_0)

# Compute M^n*w_0 for n = 1, 10, 20, 50, 100
for k = [1, 10, 20, 50, 100]
  printf('%s%d%s\n', "M^", k, "*w_0 ="), disp((M^k)*w_0), printf('\n')
endfor

# Substitute eigenvectors(:, 1) for w_0 and recompute
for k = [1, 10, 20, 50, 100]
  printf('%s%d%s\n', "M^", k, "*e_1 =")
  disp((M^k)*eigenvectors(:, 1))
  printf('\n')
endfor

disp("All values are the same as expected because the associated eigenvalue is 1, ")
disp("but the output weather vector has negative elements which do not sum to 1.")

# Sum the column of each eigenvector for normalization.
printf('\nNormalizing the eigenvectors to give a column sum of 1.')
colsum = zeros(1, 3);
for k = 1:3
  colsum(:, k) = sum(eigenvectors(:, k));
endfor
printf('\nEigenvector column sums are:\n'), printf ('%10.5f', colsum), printf('\n')

# Normalize only if the absolute value of the column sum
# is larger than, say, 1.0e-6
nev = zeros(3, 3); # Normalized eigenvectors
for k = 1:3
  if (abs(colsum(:, k)) < 1.0e-6)
    printf('\n%s%d%s\n', 'Column sum of eigenvector e_', k, ' is less than 1.0e-6')
    disp('Not normalizing it.')
  else
    printf('\n%s%d%s%d%s\n', 'Eigenvector n_', k, ' obtained by normalizing e_', k, ' is ')
    nev(:, k) = eigenvectors(:, k)/colsum(:, k);
    disp(nev(:, k))
  endif
endfor

printf('\n')

disp("M*normalized-eigenvector-n_1 ="), disp(M*nev(:, 1)), printf("\n")
disp("The normalized eigenvector associated with eigenvalue 1 is the ")
disp("steady-state weather vector.\n")

# Check whether a random initial vector w_r gives us e_1 in the end
r_3 = rand(3, 1);
w_r = r_3/sum(r_3); # not initialized to any particular seed
printf("One random initial weather vector w_r is:\n"), disp(w_r), printf("\n")
for k = 1:20
  w_r(:, k+1) = M*w_r(:, k);
endfor

disp("The time evolution of w_r for twenty iterations is shown in successive columns:"), disp(w_r), printf("\n")
