import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(-np.pi,np.pi,50)
fx = np.abs(np.sin(x))
 	
plt.plot(x,fx,x,np.abs(x),'o')
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$| \sin(x)|$')
plt.ylim([0, 1.3])
# # # #Comment the following line
plt.savefig('../figs/2.eps')
plt.show()

