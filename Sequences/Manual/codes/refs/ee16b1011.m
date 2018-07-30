clear;
close;
clc;

function plot_point(Q,str,offset)
plot(Q(1),Q(2),'go','LineWidth',4)
text(Q(1)-offset(1),Q(2)-offset(2), str)
endfunction

%Plotting the circle
t = linspace(-pi,pi,100);
r = 2;
x = -2+r*cos(t);
y = 2+r*sin(t);
plot(x,y,'g','LineWidth',4)
grid
hold on
axis([-4 0 0 4])
axis equal
x = linspace(-4,0,100);
y1 = (6-4*x)/5;
y2 = (10+2*x)/3;
y3 = 3/4*(1-x);
y4 = -(4+5*x)/2;
plot(x,y1,'LineWidth',4,x,y2,'LineWidth',4,x,y3,'LineWidth',4,x,y4,'LineWidth',4)
plot_point([-2 2],'O',[0 0.25])
legend('circle','4x+5y-6=0','2x-3y +10=0','3x+4y-3=0','5x+2y+4=0',"location","northwestoutside")
xlabel('x')
ylabel('y')
hold off

print ('ee16b1011.eps', '-color')
