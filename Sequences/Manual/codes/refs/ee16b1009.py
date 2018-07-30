import numpy as np
import matplotlib.pyplot as plt

#Point of intersection
A = np.array([[1.0/3,1.0/4] , [1.0/4,1.0/3]])
B = np.array([1,1])
U = np.dot(np.linalg.inv(A),np.transpose(B))


#Sketching tThe curve
h = np.concatenate((np.linspace(0.5,5.9/7,50), np.linspace(6.1/7,1.2,50)), axis=0)
k = 1/(7.0/6 - 1/h)
plt.stem(h,k, label='$\\frac{1}{h} + \\frac{1}{k} = \\frac{7}{6}$')
plt.xlabel('$h$')
plt.ylabel('$k$')
plt.grid()
plt.legend()
plt.savefig('../figs/ee16b1009.eps')
plt.show()
