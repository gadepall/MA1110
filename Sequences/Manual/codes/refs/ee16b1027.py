import numpy as np

#case 1 - base 1
c1 = np.roots([1,-5,4])

#case 2 - base -1, even exponent
r1 = np.roots([1,-5,6])
r2 = np.polyval([1,4,-60],r1)
c2 = r1[np.nonzero(np.round(r2)%2 ==0)]

#case 3 - any base, 0 exponent
c3 = np.roots([1,4,-60])

print np.sum(c1) + np.sum(c2) + np.sum(c3)
