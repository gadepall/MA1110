import numpy as np
import matplotlib.pyplot as plt

def f(x):
    return np.abs(np.log(2) - np.sin(x))
def g(x):
    return f(f(x))

x = np.linspace(-1,1,100)

plt.plot(x,g(x))
plt.grid()
plt.xlabel('$x$')
plt.ylabel('$g(x)$')
plt.savefig('../figs/ee16b1030.eps')
plt.show()

h = 10**(-10)

#right hand limit
print (g(h) - g(0))/h
     
#left hand limit
print (g(0) - g(-h))/h

print np.cos(np.log(2))
