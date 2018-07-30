clear;
close;
clc;

A = linspace(0,pi/6,100);
B = (pi./6)-A;

y = tan(A) + tan(B);

min_y = min(y);
min_x = pi/12;

plot(A,y,'LineWidth',4);
hold
plot(min_x,min_y,'ro','LineWidth',4)
grid
xlabel('A (radians)')
ylabel('tan(A)+tan(B)');
legend('','minimum',"location","northeast")
print('ee16b1025.eps','-color');
