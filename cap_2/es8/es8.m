pi = 3.1416;
myfunct = '(x-pi)^(10*x)';
dfdx = '10*((x-pi)^(10 x))*(x/(x-pi)+log(x-pi))';
x0 = 0;

y = Newton(myfunct,dfdx,x0);