clear;
close;
clc;

function plot_line(a,b,str)
m = (b(2)-a(2))/(b(1)-a(1));
c = a(2)-m*a(1);
x = linspace(a(1),b(1),100);
y = m*x +c;
plot(x,y,str,'Linewidth',4);
endfunction

function plot_point(Q,str,offset)
plot(Q(1),Q(2),'ro','Linewidth',4)
text(Q(1)-offset(1),Q(2)-offset(2), str)
endfunction


%Plotting the circle with centre O
t = linspace(0,2*pi,100);
x = 5.*cos(t) + 2; 
y = 5.*sin(t) - 3;
plot(x,y,'g','LineWidth',4)
axis("equal");
grid
hold on

%Plotting the diameter 
y = x - 5;
plot(x,y,'c','LineWidth',4)

%Plotting the centres
S = [-3 2]';
plot_point(S,'S',[0 1]);
O = [2 -3]';
plot_point(O,'O',[0 1]);
%plotting line joining the circles
plot_line(O,S,'b')
%Plotting the circle with centre S
t = linspace(0,2*pi,100);
r = 5*sqrt(3);
x = r.*cos(t) - 3; 
y = r.*sin(t) + 2;
plot(x,y,'m','LineWidth',4)
hold off

print ('ee16b1036.eps', '-color')


