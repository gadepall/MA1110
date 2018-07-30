clear;
close;
clc;
x=linspace(0,4,100);
y1=(2.*x).^0.5;
y2=(4.*x-x.^2).^0.5;
area (x, max ([y1; y2]), "FaceColor", "green");
hold on 
area(x,y1,"facecolor","red");
plot(x,y2,'b')
grid
hold off
print ('ee16b1033.eps', '-color')

