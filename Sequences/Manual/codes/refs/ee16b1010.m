clear;
close;
clc;

function plot_line(a,b,str)
m = (b(2)-a(2))/(b(1)-a(1));
c = a(2)-m*a(1);
x = linspace(a(1),b(1),100);
y = m*x +c;
plot(x,y,str,'LineWidth',4);
endfunction

function plot_point(Q,str,offset)
plot(Q(1),Q(2),'go','LineWidth',4)
text(Q(1)-offset(1),Q(2)-offset(2), str)
endfunction


%Plotting PQ
P = [2 1]';
Q = P - 2*sqrt(3)*cos(pi/4)*[1 1]';
plot_line(P,Q,'r')
hold on
grid
axis([-3 4 -5 2])
axis equal
plot_point(P,'P',[0 0.5])
plot_point(Q,'Q',[0 -0.5])
text(P(1)-0,P(2)+0.5, '(2,1)')

%Plotting the given line
x = linspace(Q(1),P(1),100);
y = x-4;
plot(x,y,'LineWidth',4)

%Plotting the perpendicular line
y = 3-2*sqrt(6)-x;
plot(x,y,'g','LineWidth',4)
legend('PQ','','','x-y=4','x-y = c',"location","northwest")

hold off
print ('ee16b1010.eps', '-color')
