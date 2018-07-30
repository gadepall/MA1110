clear;
close;
clc;

x = linspace(1,4,100);
y1=1-x;
y2 = x.^2 -5*x +4;
X = [x,fliplr(x)];
Y=[y1,fliplr(y2)];
area(x,y2,"facecolor","green");
hold on
fill(X,Y,'r');
grid

print ('ee16b1008.eps', '-color')

