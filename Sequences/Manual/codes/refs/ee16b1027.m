clear;
close;
clc;

%case 1, base 1, any exponent
case1 = roots([1 -5 4])
%case 2, base -1, even exponent
two_root = roots([1 -5 6]);
pow_root= polyval([1 4 -60],two_root);
case2 = two_root(find(mod(round(pow_root),2)==0))
%case 3, any base, exponent 0
case3 = roots([1 4 -60])
%sum of roots
sum([case1' case2 case3'])


