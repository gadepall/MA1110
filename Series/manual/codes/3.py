from __future__ import division
import numpy as np
import matplotlib.pyplot as plt

n = np.arange(1,100)
s_n=0
b=[1]

for i in range(1,99):
   	T_n = np.sqrt(i+1)-np.sqrt(i) #this function can be changed
   	s_n=s_n+T_n
   	b.append(s_n)

plt.stem(n,b)
plt.grid()
plt.xlabel('$n$')
plt.ylabel('$S_n$')
# # # #Comment the following line
#plt.savefig('../figs/3.eps')
plt.show()

