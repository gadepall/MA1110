clear;
close;
clc;


function plot_point(Q,str,offset)
plot(Q(1),Q(2),'ro')
text(Q(1)-offset(1),Q(2)-offset(2), str)
endfunction

function A = f(x)
A = x.^2 + (1-2*x).^2/pi;
endfunction

x = linspace(0,1,20);

plot(x,f(x),'g','LineWidth',4)
hold on

x = 2/(pi+4);

P = [x f(x)];

r = (1 - 2*x)/pi

plot_point(P,'P',[0 -0.1],'LineWidth',4)
hold off
xlabel('x')
ylabel('A')
legend('','minimum')

print ('ee16b1039.eps', '-color')

