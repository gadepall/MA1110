clc;
clear;
close;

function plot_point(Q,str,offset)
plot(Q(1),Q(2),'ro','LineWidth',4)
text(Q(1)-offset(1),Q(2)-offset(2), str)
endfunction

x=linspace(0,pi/2,100);
y=-2*x + 2*pi/3;
%z=2*pi/3-2*x;
plot(x,y,'LineWidth',4);
hold on
plot_point([0 0],'(0,0)',[0 0.5]);
plot_point([0 2*pi/3],'(0,2\pi/3)',[0 0.5]);
plot_point([pi/6 0],'(\pi/6,0)',[0 0.5]);
plot_point([pi/4 0],'(\pi/4,0)',[0 0.5]);

xlabel('x')
ylabel('y')
grid;
hold off
print ('ee16b1031.eps', '-color')
