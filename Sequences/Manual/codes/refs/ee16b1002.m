clear;
close;
clc;
P=[sqrt(3)/2,1/2;-1/2,sqrt(3)/2];
A=[1,1;0,1];
Q=P*A*(P');
ANS=(P')*(Q^2015)*P
