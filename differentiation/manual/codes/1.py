from __future__ import division
import numpy as np
import matplotlib.pyplot as plt
k=1e-5 
x = np.linspace(0.6,10,50)
y=[]
for i in x:	
	l=np.sqrt(2*(i+k)-1)-np.sqrt(2*i-1)
	l=l/k
	y.append(l)
fx=1/np.sqrt(2*x-1)
plt.plot(x,y,'o')
plt.plot(x,fx)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
# # # #Comment the following line
plt.savefig('../figs/1.eps')
plt.show()

