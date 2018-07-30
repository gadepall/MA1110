from __future__ import division
import numpy as np
import matplotlib.pyplot as plt
x = np.arange(1e-5,0.2,1e-4)
f=((x**2)*np.sin(1/x))/(np.sin(x))
plt.plot(x,f)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.savefig('../figs/5.eps')
plt.show()

