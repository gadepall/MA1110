clear;
close;
clc;

%Plotting the hyperbola
x=linspace(-10,10,100);
y1=sqrt(16*((x.^2)/9-1));
y2=-sqrt(16*((x.^2)/9-1));
plot(x,y1,'LineWidth',4,x,y2,'LineWidth',4)
grid;
xlabel('x');
ylabel('y');

print -deps -color ee16b1012.eps 
