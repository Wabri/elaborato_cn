f = @(x) (1-x-(1+cos(10*x)/2)*sin(x));
df = @(x) (5*sin(x)*sin(10*x)-cos(x)*(cos(10*x)/2 + 1)-1);

x0 = 0;
x1 = 1;
tol = logspace(-1,-10,10);
imax = 100;
iter = zeros(10,3);
res = zeros(10,3);
for i=1:10
    [res(i,1), iter(i,1)] = Newton(f,df,x0,imax,tol(i));
    [res(i,2), iter(i,2)] = secanti(f,df,x0,imax, tol(i));
    [res(i,3), iter(i,3)] = corde(f,df,x0,imax, tol(i));
end

disp('La prima colonna sono riferite al metodo di Newton (iterazioni e risultato)');
disp('La seconda colonna sono riferite al metodo delle secanti (iterazioni e risultato)');
disp('La terza colonna sono riferite al metodo delle corde (iterazioni e risultato)');
iter
res