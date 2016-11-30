import scipy as sp
import numpy as np
import math
import matplotlib.pyplot as plt

x = np.arange((2/3),2,0.002)
y = np.empty(1000, dtype=np.float64)

for i in range(1,1000):
	y[i] = (math.log(abs(3*(1-x[i]) + 1))/2 + x[i]*x[i] + 1)

l = 4.0/3 + 0.00001
m = (math.log(abs(3*(1-l) + 1))/2 + l*l + 1)

print l
print m

plt.plot(x,y)
plt.show()