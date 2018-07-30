clear;
close;
clc;

%all cases
a = sqrt(2)*[1 -1 1 -1 ]; b = 1 + sqrt(3)*[-1 1 1 -1];

%intervals
x1 = linspace(0, 1, 100);
x2 = linspace(1, sqrt(2), 100);
x3 = linspace(sqrt(2), 5, 100);

temp = toascii('a');
%Plotting all cases
for i = 1:4,

y1 = 2.*(x1.^2)./a(i);
y2 = a(i);
y3 = (2*(b(i)^2) - 4*b(i))./(x3.^3);

figure(i)

plot(x1, y1, "2",'LineWidth',4, x2, y2, "5", 'LineWidth',4, x3, y3, "3",'LineWidth',4);
grid ;

xlabel("x");
ylabel("f(x)");

print (strcat('ee16b1019',char(temp+i-1),'.eps'), '-color')

end
