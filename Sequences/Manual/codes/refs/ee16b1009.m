clear;
 close;
 clc;
 
 %point of intersection
 A = [1/3 1/4; 1/4 1/3];
 b = [1 1]';
 u = inv(A)*b
 
 %sketching the locus
 h = [linspace(0.5,5.9/7,50) linspace(6.1/7,1.2, 50)];
 k = 1./(7/6-1./h);
 stem(h,k)
 grid
 xlabel('h');
 ylabel('k');
 print -deps -color ee16b1009.eps 
