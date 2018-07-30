clear;
close;
clc;

%Plotting the circle
t = linspace(0,2*pi,100);
x = 6.*cos(t) + 4; 
y = 6.*sin(t) + 4;
plot(x,y,'r','LineWidth',4)
hold on


%Plotting the Loci
x = linspace(-3,12,100);
y1 = (x-4).^2/20 -1;
y2 = 5 - (x-4).^2/2;
plot(x,y1,'g','LineWidth',4,x,y2,'b','LineWidth',4)

grid;
ylabel('y')
xlabel('x')
legend('circle','locus 1','locus 2');
axis([-5 12 -5 10])
axis("equal");
print ('ee16b1035.eps', '-color')


