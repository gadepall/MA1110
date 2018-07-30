clear;
close;
clc;

x = linspace(-10,10,100);
y = (1./(2.*x)).*log(1+(tan(x.^(1./2)).^2));

plot(x,y,'LineWidth',4,0,0.5,'ro','LineWidth',4);
xlabel("x");
ylabel("log(p)");
grid;
print ('ee16b1029.eps', '-color')
