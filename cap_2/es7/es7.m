format long

myf = @(x) (1-x-(1+cos(10*x)/2)*sin(x));
df = @(x) (5*sin(x)*sin(10*x)-cos(x)*(cos(10*x)/2 + 1)-1);

x0 = 0;
x1 = 1;
tol = logspace(-1,-10,10);
disp(tol);
imax = 50;
y = zeros(4,10);
for i=1:10
    [temp, y(1,i)] = NewtonMod(myf,df,1,x0,imax,tol(i), 0);
    [temp, y(2,i)] = secanti(myf,x0,x1,tol(i),imax);
    [temp, y(3,i)] = corde(myf,feval(df,x0),x0,tol(i),imax);
    [temp, y(4,i)] = bisezione(myf,x0,x1,tol(i),imax);
end

plot(y')
