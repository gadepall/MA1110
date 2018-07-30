from __future__ import division
import numpy as np
import matplotlib.pyplot as plt

k=np.pi
n = np.arange(1,200)
s_n=0
b=[]
for i in range(1,200):
   	T_n = np.cos(k*i)/np.sqrt(i) #this function can be changed
   	s_n=s_n+T_n
   	b.append(s_n)
print(s_n)
plt.stem(n,b)
plt.grid()
plt.xlabel('$n$')
plt.ylabel('$S_n$')
# # # #Comment the following line
#plt.savefig('../figs/7.eps')
plt.show()

