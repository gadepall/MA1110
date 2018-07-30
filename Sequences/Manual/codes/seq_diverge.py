import numpy as np
import matplotlib.pyplot as plt

n = np.linspace(0,1e3,100)
x_n = np.sqrt(n+1) - 1
plt.plot(n,x_n)
plt.grid()
plt.xlabel('$n$')
plt.ylabel('$x_n$')
#Comment the following line
#plt.savefig('../figs/seq_diverge.eps')
plt.show()

