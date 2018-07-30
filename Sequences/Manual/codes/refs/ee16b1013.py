import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(-3*np.sqrt(3),3*np.sqrt(3),1000)
y = np.sqrt(3*(1-(x**2)/27))
z = -np.sqrt(3*(1-(x**2)/27))
plt.plot(x,y)
plt.plot(x,z)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$y$')
plt.savefig('../figs/ee16b1013.eps')
plt.show()
