import numpy as np
import matplotlib.pyplot as plt

a = np.linspace(0,2,100)
z = 1 + 1j*a
y = np.imag(z**3)
a_t = np.roots([-1,0,3,0])
ind = np.nonzero(a_t > 0)
a_v = a_t[ind]
plt.plot(a,y)
plt.plot(a_v,0,'o')
plt.ylabel('$Im(z)$')
plt.xlabel('$a$')
plt.grid()
plt.savefig('../figs/ee16b1016.eps')
plt.show()

