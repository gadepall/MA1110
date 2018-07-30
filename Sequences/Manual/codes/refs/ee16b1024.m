clear;
close;
clc;

function plot_point(Q,str,offset)
plot(Q(1),Q(2),'ro','LineWidth',4)
text(Q(1)-offset(1),Q(2)-offset(2), str)
endfunction


%Plotting the ellipse

t = linspace(-pi,pi,50);
p = 2*sqrt(3);
q = 4;
x = p*cos(t);
y = q*sin(t);
e = sqrt(1 - (p/q)^2);

plot(x,y,'g','LineWidth',4) 
axis equal
grid
hold on
plot_point([0 q*e],'F_1',[0 0.5])
plot_point([0 -q*e],'F_2',[0 -0.5])


%Plotting the hyperbola
b = 2;
a = sqrt(5);

x = linspace(-4,4,100);
y1 = b*sqrt(x.^2/a^2 + 1);
y2 = -b*sqrt(x.^2/a^2 + 1);

plot(x,y1,'b','LineWidth',4) 

plot(x,y2,'b','LineWidth',4) 

pt1 = [0 2]';
pt2 = [sqrt(5) 2*sqrt(2)]';
pt3 = [sqrt(10) 2*sqrt(3)]';
pt4 = [5 2*sqrt(3)]';
%Plotting the given points
%plot_point(pt1,'A',[0 0.5])
plot_point(pt2,'A',[0 -0.5])
plot_point(pt3,'B',[0 0.5])
plot_point(pt4,'C',[0 0.5])

xlabel('x')
ylabel('y')

hold off
print ('ee16b1024.eps', '-color')









