import numpy as np

x = []
x.append(2)
x.append(1.5)
rad = np.sqrt(2)

print "indice		passo iterativo			delta"
print "\r"

for i in range (0,16):
	x.append((x[i]*x[i-1] + 2)/(x[i] +x[i-1]))
	print str(i) + "		" + str(x[i]) + "		" + str(x[i]-rad)

