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
plot(Q(1),Q(2),'ro','LineWidth',4)
text(Q(1)-offset(1),Q(2)-offset(2), str)
endfunction

%Matrix representation for finding P
A =[1 -1;7 -1];
b=[-1;5];
P=inv(A)*b
%Matrix representation for finding Q
A =[1 2;1 -1];
b=[-5;-1];
Q=inv(A)*b
%Matrix representation for finding S
A =[1 2;7 -1];
b=[-5;5];
S=inv(A)*b
%
R = [-3 -6]';
O = [-1 -2]';

%Plotting the rhombus
plot_line(P,Q,'r')
hold on
plot_line(S,P,'g')
plot_line(Q,S,'b')
plot_line(Q,R,'c')
plot_line(R,S,'m')



plot_point(P,'P',[0 0.5])
plot_point(Q,'Q',[0 0.5])
plot_point(R,'R',[0 0.5])
plot_point(S,'S',[0 0.5])
plot_point(O,'O',[0 0.5])

hold off
grid
axis equal
legend('x-y=1','x+2y=-5','7x-y=5',"location","northeast")
xlabel('x')
ylabel('y')
print ('ee16b1034.eps', '-color')





