clear;
close;
clc;

figure(1);
x=linspace(0,20,100);
y1=2*sqrt(x);
y2=-2*sqrt(x);
plot(x,y1,"3",'LineWidth',4,x,y2,"3",'LineWidth',4);
grid;
xlabel('x')
ylabel('y^2 = 4x')
hold
%Visualisation
temp = sqrt(2)*(0.2:0.2:1.6);
n = length(temp);

for i = 1:n,

t = temp(i);
P = [ t^2 2*t];
if i == 5
plot(P(1),P(2),'ro','LineWidth',4)
text(P(1),P(2)+0.5, 'P')
else
plot(P(1),P(2),'go','LineWidth',4)
end
y = 2*t - t*(x-t^2);
%hold
plot(x,y,'LineWidth',4)

end
t1 = -2*sqrt(2);
Q = [t1^2,2*t1];
plot(Q(1),Q(2),'ro','LineWidth',4)
text(Q(1),Q(2)-0.5, 'Q')

axis equal
axis([0 13 -7 6])


print ('ee16b1023.eps', '-color')


