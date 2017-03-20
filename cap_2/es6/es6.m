myfunct = '1-x-(1+cos(10*x)/2)*sin(x)';
dfdx = '5*sin(x)*sin(10 x)-cos(x)*(1/2 cos(10 x)+1)-1';

x0 = 0;

y1 = newton();
y2 = newton_mod();
y3 = secanti();
y4 = corde();

pseudo:

forall y :
	for decreasing values of tolx:
		print number of iterations;
		

 