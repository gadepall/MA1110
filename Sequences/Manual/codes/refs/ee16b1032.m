clc;
clear;
close;

maxlen = 20;
for n = 1:maxlen,
k = 1:2*n;
p(n)= (prod(n+k)/(n^(2*n)))^(1/n);
end

stem(1:maxlen,p,'r','LineWidth',4)
hold
sol = [18/e^4 27/e^2 9/e^2 3*log(3)-2];
%stem(sol,'b','LineWidth',4)
y = ones(1,maxlen);
plot(1:maxlen,sol(1)*y,'b','LineWidth',4)
plot(1:maxlen,sol(2)*y,'g','LineWidth',4)
plot(1:maxlen,sol(3)*y,'m','LineWidth',4)
plot(1:maxlen,sol(4)*y,'c','LineWidth',4)
hold off
legend('','18/e^4','27/e^2', '9/e^2', '3*log(3)-2',"location","northeast");
xlabel('n')
ylabel('p_n')
grid;
hold off
print ('ee16b1032.eps', '-color')

