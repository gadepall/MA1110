from __future__ import division 
import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(1e-5,1,100)
fx = 2*x*np.sin(1/x)-np.cos(1/x)
 	
plt.plot(x,fx)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.ylim([0, 2])
# # # #Comment the following line
plt.savefig('../figs/2.eps')
plt.show()

