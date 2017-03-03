import numpy as np
import math

def secanti(n,alpha,x0,imax,tolx):
	print "x0 = " +str(x0)
	x = ((x0+alpha/x0)/2.0)
	print "x1 = " +str(x)
	i = 1
	while ( (i<imax) & (math.fabs(x-x0)>tolx)):
		i = i+1
		x1 = (f(x,n,alpha)*x0 - x*f(x0,n,alpha))/(f(x,n,alpha) - f(x0,n,alpha))
		x0 = x
		x=x1;
		print "x"+str(i)+" = "+str(x)

def f(x,n,alpha):
	return pow(x,n) - alpha

secanti(2.0,2.0,2.0,7,0.000001)