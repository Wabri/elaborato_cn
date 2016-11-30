import scipy
import numpy, math

x_0 = 0
h = []
for i in range(1,13):
	h.append(math.pow(10,-i))

def psi(x,j):
	return (math.exp(x+j) - math.exp(x))/j

for i in h:
	print str(h.index(i)+1)+ " " + str(psi(x_0, i)) + "    "+ str(psi(x_0, i) -1)