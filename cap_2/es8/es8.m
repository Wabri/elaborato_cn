myfunct = @(x) (x-pi)^(10*x);
dfdx =  @(x) 10*((x-pi)^(10*x))*(x/(x-pi)+log(x-pi));
x0 = 0;

y = NewtonMod(myfunct,dfdx, 1, x0, 5, 0.01, 1);