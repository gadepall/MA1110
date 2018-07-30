clear;
close;
clc;

t = linspace(-1,1.2,100);
x = 4*t.^2+3;
y = 8*t.^3 - 1;
z = 3*(x-7)+7;
plot(x,y,'r','LineWidth',4,x,z,'b','LineWidth',4);
hold
grid 
P = [7 7]';
Q = [4 -2]';
text(P(1),P(2)+1, 'P')
text(Q(1),Q(2)-1, 'Q')
plot([ P(1) Q(1)],[ P(2) Q(2) ],'ro')
legend('curve','tangent',"location","southeast")

xlabel('x');
ylabel('y');
print -deps -color ee16b1006.eps 
