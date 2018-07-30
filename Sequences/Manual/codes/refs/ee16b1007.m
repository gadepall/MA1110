close;
clear;
clc;
%For minimising
k=linspace(-5,5,100);
d = sqrt(k.^2+k+4);
dist=min(d)*ones(100);
plot(k,d,'r','LineWidth',4,k,dist,'go','LineWidth',4);
grid
xlabel('k')
ylabel('d')
legend('d','min d',"location","southeast")
print -deps -color ee16b1007a.eps 

%For the parabola
x = linspace(-2.5,2.5,100);
y = x.^2-4;
plot(x,y,'b','LineWidth',4);
xlabel('x')
ylabel('y')
axis([-2.5 2.5 -6 1])
grid
hold
P = [sqrt(7/2) -1/2  ]';
Q = [ -sqrt(7/2) -1/2 ]';
O = [0 0]';
text(P(1),P(2)+0.5, 'P')
text(Q(1),Q(2)+0.5, 'Q')
text(O(1),O(2)+0.5, 'O')
plot([ P(1) Q(1) O(1)],[ P(2) Q(2) O(2)],'ro')
print -deps -color ee16b1007b.eps 



