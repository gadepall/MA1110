from __future__ import division
import numpy as np
import matplotlib.pyplot as plt

x = np.arange(-10,20,0.1)
a=[]
b=[]
c=[]
y=[]
y1=[]
y2=[]
for i in x:
	if i<=1:
		a.append(i)	
		y.append(i)
	if 1<i<10:
		b.append(i)
		y1.append(i**2+4)
	if i>=10:
		c.append(i)
		y2.append(i)

plt.plot(a,y)
plt.plot(b,y1)
plt.plot(c,y2)
plt.grid()
plt.xlabel('$n$')
plt.ylabel('$S_n$')
# # # #Comment the following line
#plt.savefig('../figs/3.eps')
plt.show()

