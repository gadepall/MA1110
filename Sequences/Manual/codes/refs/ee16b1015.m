clear;
close;
clc;


x= linspace(1/2,5,50);
y2=sqrt(2*x+1)-sqrt(2*x-1)-1;
plot(x,y2,'LineWidth',4)
grid
P = [5/8 0]';
text(P(1)+0.2,P(2)+0.05, 'P')
hold
plot( P(1),P(2),'ro','LineWidth',4)
xlabel('x');
ylabel('y');
print -deps -color ee16b1015.eps 

