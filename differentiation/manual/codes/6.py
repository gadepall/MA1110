from __future__ import division
import numpy as np
import matplotlib.pyplot as plt
x = np.arange(-1,1,1e-3)
f=np.sqrt(1-x**2)
plt.plot(x,f)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.savefig('../figs/6.eps')
plt.show()

