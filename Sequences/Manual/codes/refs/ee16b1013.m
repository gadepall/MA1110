clear;
close;
clc;

x=linspace (-3*sqrt(3),3*sqrt(3), 200) ;
y=(3.0*(1-((x.*x)./27.0))).^0.5 ;
z=-(3.0*(1-((x.*x)./27.0))).^0.5 ;

plot (x,y,'LineWidth',4,x,z,'LineWidth',4) ;
grid;
xlabel('x');
ylabel('y');

print -deps -color ee16b1013.eps 


