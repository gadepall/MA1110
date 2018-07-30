from __future__ import division
import numpy as np
import matplotlib.pyplot as plt

n = np.arange(0,50)
s_n=0
b=[]

for i in n:
   	T_n=(2/3)**i-(1/3)**i
   	s_n=s_n+T_n
   	b.append(s_n)
plt.stem(n,b)
plt.grid()
plt.xlabel('$n$')
plt.ylabel('$S_n$')
# # # #Comment the following line
#plt.savefig('../figs/5.eps')
plt.show()
