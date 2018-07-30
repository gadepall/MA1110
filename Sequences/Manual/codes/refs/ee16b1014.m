clear;
close;
clc;

x = linspace(-pi,pi,100);
y = 4 + 1/2*sin(2*x).^2 -2*cos(x).^4;
plot(x,y,'LineWidth',4);
xlabel('x');
ylabel('y');
grid

print ('ee16b1014.eps', '-color')
