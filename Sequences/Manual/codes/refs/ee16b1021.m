close;
clc;
clear;
%Point of intersection
A = [2 1; 7 -1];
b = [1 -1]';
intersect = inv(A)*b

x=linspace(-3,3,5);
z=7*x+1;
plot(x,z,"b",'LineWidth',4);
hold
x=linspace(-3,0,5);
y=1-2*x;
w = 41/38*x+1;
plot(x,w,"g",'LineWidth',4,x,y,"r",'LineWidth',4)
grid
legend('surface','incident','reflected',"location","southwest")
axis([-5 5 -5 5])
axis equal
xlabel('x'); 
ylabel('y');
print ('ee16b1021.eps', '-color')
