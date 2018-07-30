clear;
close;
clc;

%numerical
function c = nCr (n,r)

c = factorial(n)./factorial(r)./factorial(n-r);

endfunction
	

sum = 0;

for r = 1:15
	sum += r^2 * nCr(15,r) / nCr(15,r-1);
end;

sum

clear;


%theoretical
r = 15;
sum = (-2*r^3 + 45*r^2 + 47*r)./6




