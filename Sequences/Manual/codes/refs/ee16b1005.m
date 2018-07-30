clear;
close;
clc;
x1=1;
x2=linspace(-1,1,1000);
x3=linspace(1,2,1000);
b=-x1;
a=-x1-acos(b+x1);
c=a./b
y=-x2;
z=a+acos(b+x3);
plot(x3,z,"b",'LineWidth',4,x2,y,"r",'LineWidth',4);
axis([-1.5 2.5 -3 1.5]);
grid
xlabel('x')
ylabel('f(x)')
legend('f(x)=a+cos^{-1}(x+b)','f(x)=-x');
print -deps -color ee16b1005.eps 
