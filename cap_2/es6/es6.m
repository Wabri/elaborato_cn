format long

myf = @(x) (1-x-(1+cos(10*x)/2)*sin(x));
df = @(x) (5*sin(x)*sin(10*x)-cos(x)*(cos(10*x)/2 + 1)-1);

x0 = 0;
x1 = 1;
tol = logspace(-1,-10,10);
imax = 50;

for i=1:10
    y1 = newton(myf,df,x0,tol(i),imax);
    y3 = secanti(myf,x0,x1,tol(i),imax);
    y4 = corde(myf,feval(df,x0),x0,tol(i),imax);

end