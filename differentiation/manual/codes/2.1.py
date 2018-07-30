import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(-2*np.pi,2*np.pi,50)
fx = np.sin(x)
 	
plt.plot(x,fx)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$\sin(x)$')
#plt.ylim([0, 1.3])
# # # #Comment the following line
plt.savefig('../figs/2_1.eps')
plt.show()

