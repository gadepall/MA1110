clear;
close;
clc;


function plot_line(a,b,str)
m = (b(2)-a(2))/(b(1)-a(1));
c = a(2)-m*a(1);
x = linspace(a(1),b(1),100);
y = m*x +c;
plot(x,y,str);
endfunction

function plot_point(Q,str,offset)
plot(Q(1),Q(2),'ro')
text(Q(1)-offset(1),Q(2)-offset(2), str)
endfunction


t = linspace(-pi,pi,100);
r = 1;
x = r*cos(t);
y = r*sin(t) - 6;

%Plotting the given circle and parabola
figure(1)
plot(x,y,'r','LineWidth',4) 
hold on
axis equal
grid
t = linspace(-1.5,1.5,100);
x = 2*t.^2;
y = 4*t;
plot(x,y,'g','LineWidth',4) 

%Plotting OP
O = [0 -6]';
P = [2 -4]';
plot_line(O,P,'b')

%Radius of the desired circle
OP = norm(O-P)

%Plotting the desired circle
t = linspace(-pi,pi,100);
r = OP;
x = r*cos(t) + 2;
y = r*sin(t) - 4;
plot(x,y,'c','LineWidth',4) 

plot_point(P,'P',[0 0.5])
plot_point(O,'O',[0 0.5])
xlabel('x')
ylabel('y')


legend('given circle','given parabola','','desired circle',"location","northeast")
hold off
print ('ee16b1037a.eps', '-color')
%Plotting the function for finding minimum
figure(2)
%t = linspace(-2,2,100);
OP = 2*sqrt(polyval([1 0 4 12 9], t));
plot(t,OP,'LineWidth',4)
grid
xlabel('t')
ylabel('OP')
print ('ee16b1037b.eps', '-color')
