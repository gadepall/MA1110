clear;
close;
clc;

%Finding a
a=linspace(0,2,100);
i=sqrt(-1);
z=1+(a*i);
y=imag(z.^3);
a_theoretical=roots([-1 0 3 0]);
ind = find(a_theoretical > 0);
a_val = a_theoretical(ind)
plot(a,y,'LineWidth',4, a_val,0,'ro','LineWidth',4);
grid
xlabel('a')
ylabel('Im(z)')
legend('','solution',"location","northeast")
print -deps -color ee16b1016.eps 

%Numerical evaluation of the sum
z = 1+ a_val*i;
pow_z = 0:11;
sum(z.^pow_z)
%Closed form solution
2^12/(sqrt(3)*i)




