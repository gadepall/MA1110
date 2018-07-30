import numpy as np
import matplotlib.pyplot as plt

n = np.linspace(0,1e9,100)
T_n = (2.0*n)/(n+4.0*np.sqrt(n))
plt.plot(n,T_n)
plt.grid()
plt.xlabel('$n$')
plt.ylabel('$x_n$')
#Comment the following line
#plt.savefig('../figs/seq_converge.eps')
plt.show()

