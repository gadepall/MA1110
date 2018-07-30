from __future__ import division
import numpy as np
import matplotlib.pyplot as plt

n = np.arange(1,10001)
s_n=0
b=[0]
#print(n)
for i in range(1,10000):
   	T_n = 1/(i*np.sqrt(i+1)) #this function can be changed
   	s_n=s_n+T_n
   	b.append(s_n)

print(s_n) 	

plt.stem(n[1:100:25],b[1:100:25])
plt.stem(n[100:1000:100],b[100:1000:100])
plt.stem(n[1000:5000:500],b[1000:5000:500])
plt.grid()
plt.xlabel('$n$')
plt.ylabel('$S_n$')
# # # #Comment the following line
#plt.savefig('../figs/6.eps')
plt.show()

