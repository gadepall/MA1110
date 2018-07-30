clear;
close;
clc;

function plot_point(Q,str,offset)
plot(Q(1),Q(2),'ro','LineWidth',4)
text(Q(1)-offset(1),Q(2)-offset(2), str)
endfunction


%Plotting the hyperbola
a = 3/2;
b = sqrt(3)/2;
e = sqrt(1 + (b/a)^2)

x = linspace(-4,4,100);
y1 = b*sqrt(x.^2/a^2 - 1);
y2 = -b*sqrt(x.^2/a^2 - 1);

plot(x,y1,'g','LineWidth',4) 
hold
plot(x,y2,'g','LineWidth',4) 
grid

%Plotting the foci
F1= [a*e 0]';
F2= [-a*e 0]';

plot_point(F1,'F_1',[-0.5 0])
plot_point(F2,'F_2',[0.5 0])

xlabel('x')
ylabel('y')
print ('ee16b1038.eps', '-color')



