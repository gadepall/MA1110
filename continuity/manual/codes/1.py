#from __future__ import division
import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0,10,50)
fx = np.sqrt(x)
 	
plt.plot(x,fx)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
# # # #Comment the following line
plt.savefig('../figs/1.eps')
plt.show()

