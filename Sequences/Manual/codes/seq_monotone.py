import numpy as np
import matplotlib.pyplot as plt

x = []
temp = 1
for i in range(100):
    x.append(temp)
    temp = (temp+1.0)/3.0
 
plt.plot(range(100),x)
plt.grid()
plt.xlabel('$n$')
plt.ylabel('$x_n$')
#Comment the following line
#plt.savefig('../figs/seq_monotone.eps')
plt.show()


