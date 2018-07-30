clear;
clc;
close;

function y = f(x)
y = abs(log(2)-sin(x));
endfunction

function y = g(x)
y = f(f(x));
endfunction


x = linspace(-1,1,100);
plot(x,g(x),'LineWidth',4)
grid
xlabel('x')
ylabel('g(x)')

print('ee16b1030.eps','-color');

h=10.^(-10);
%right hand limit
(g(h)-g(0))/h
%left hand limit
(g(0)-g(-h))/h
%actual limit
cos(log(2))


