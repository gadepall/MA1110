clear;
close;
clc;

%Putting all coefficients of the quadratics in a matrix
A = [1 -3 -108;1 5 -84; 1 2 -80; 1 1 -110];
%finding the size of the matrix
[row,col] = size(A);

%looping to find the possible solutions
for i=1:row,
%finding roots for each equation
quad_root = (roots(A(i,:)));
%finding positive roots
sol_index = find(quad_root>0);
sol = quad_root(sol_index);
expr = sol*(sol-1)*(sol+1)*(sol+2)/factorial(6)
end



