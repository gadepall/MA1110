clear;
close;
clc;

%Finding point of intersection
A = [1 -1; 2 1];
b = [1 3]';
O = inv(A)*b

%Finding the radius
P = [-1 1]';
r = norm(O-P)

%Intersection plot
x=linspace(-3,5,100);
y=x-1;
z=3-2*x;
plot(x,y,'g','LineWidth',4,x,z,'r','LineWidth',4)
axis("equal")
grid
hold
%clear;
%close;
%clc;
y=sqrt(53/9 - (x-(4/3)).^2)+1/3;
z=-(sqrt(53/9 - (x-(4/3)).^2))+1/3;
r=3-4*x;
s=-(3+x)./4;
t=3*x-4;
u=(x-4)./3;
plot(x,y,'LineWidth',4,x,z,'LineWidth',4,x,r,'LineWidth',4,x,s,'LineWidth',4,x,t,'LineWidth',4,x,u,'LineWidth',4)
axis([-3 5 -3 3])
legend('x-y=1','2x-y=3','circle','circle','4x+y=3','x+4y=3','3x-y=4','x-3y=4','location','northwest')
print ('ee16b1022.eps', '-color')
