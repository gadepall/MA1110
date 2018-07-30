from __future__ import division
import numpy as np
import matplotlib.pyplot as plt
n = np.arange(1e-5,1e-1,1e-3/5)
f=n*np.sin(1/n)
n[0]=0
f[0]=5
plt.figure(1)
plt.subplot(211)
plt.plot(n, f)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
n = np.arange(1e-5,1e-1,1e-3/5)
f=n*np.sin(1/n)
n[0]=0
f[0]=0
plt.subplot(212)
plt.plot(n, f)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.savefig('../figs/7.eps')
plt.show()

