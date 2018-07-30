#Importing numy, scipy, mpmath and pyplot
import numpy as np
import mpmath as mp
import scipy 
import scipy.stats as sp
import matplotlib.pyplot as plt
import subprocess


def recr(n,x):
	if n%3 == 1:
		 return 1.0/(1-x);         #f0
	elif n%3 == 2:
		return recr(1,recr(1,x));  #f1
	

#%f100 which is equal to f1
a=recr(1,recr(100,3))   
b=recr(1,recr(1,2.0/3.0))   #f1
c=recr(1,recr(2,3.0/2.0))   #f2

print (a,b,c)

#%Gives the required result
Sum=a+b+c              

print (Sum)
