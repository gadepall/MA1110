clear;
close;
clc;

theta=linspace(-pi/2,pi/2,100);
im_z=(2-6*((sin(theta)).^2))./(1+4*((sin(theta)).^2));
plot(theta,im_z,'LineWidth',4)
grid
sol= asin(1/(3.^(1/2)))*[-1 1];
im_z_0 = zeros(1,2)
hold
plot(sol,im_z_0,'ro','LineWidth',4)
xlabel('\theta (radians)')
ylabel('Imaginary part');
legend('imaginary','solution',"location","northeast")
print('ee16b1026.eps','-color');

