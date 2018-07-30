clear;
close;
clc;

x=linspace(0,pi/4,100);
z=linspace(pi/4,pi/2,100);
t=linspace(pi/2,3*pi/4,100);
s=linspace(3*pi/4,pi,100);

y=sin(x).^4+cos(x).^4;
u=sin(z).^4+cos(z).^4;
v=sin(t).^4+cos(t).^4;
w=sin(s).^4+cos(s).^4;

plot (x,y,"3",z,u,"3",t,v,"3",s,w,"3");
hold on;
area(z,u,"facecolor","green");
area(s,w,"facecolor","green");
grid;
xlabel(['0 < x < \pi']); 
ylabel('y=sin^4(x)+cos^4(x)');
print ('ee16b1020.eps', '-color')
