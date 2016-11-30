import scipy
import numpy as np
import math

x = []
x.append(2)
x.append(1.5)
rad = np.sqrt(2)
j=0

for i in range (1,15):
	j=j+1
	x.append((x[i]*x[i-1] + 2)/(x[i] +x[i-1]))
	print str(i) + " " + str(x[i]) + " " + str(x[i]-rad)

