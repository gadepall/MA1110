clear;
close;
clc;

x = 1e3;
a=linspace(0,2,100);
y=(1.+(a./(x))-(4./(x.^2))).^(2.*x);
plot(a,y,'LineWidth',4);
z = e^3*ones(1,100);
hold;
plot(a,z,'ro','LineWidth',4);
xlabel('a')
ylabel('LHS and e^3')
legend('LHS','e^3',"location","northeast")
grid
print -deps -color ee16b1004.eps 
