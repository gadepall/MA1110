import numpy as np
import matplotlib.pyplot as plt
n = np.arange(0,2,1e-3)
b=[]
for i in n:
   	if(i<=1):
   		b.append(np.sin(np.pi*i))
   	else:
   		b.append(np.log(i))
plt.plot(n,b)
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.savefig('../figs/4.eps')
plt.show()

