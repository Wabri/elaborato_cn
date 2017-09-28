f = @(x) (x-pi)*(exp(1)^(10*x));
df =  @(x) (exp(1)^(10*x))*(10*x-10*pi+1);

disp('Con punto iniziale x0=0');
[res,nit] = Newton(f,df, 0, 100, 10^(-2))
disp('Con punto iniziale x0=4');
[res,nit] = Newton(f,df, 4, 100, 10^(-2))