format long

myf = @(x) (1-x-(1+cos(10*x)/2)*sin(x));
df = @(x) (5*sin(x)*sin(10*x)-cos(x)*(cos(10*x)/2 + 1)-1);

x0 = 0;
tol = logspace(-1,-10,10);
disp(tol);
imax = 50;

for i=1:10
    y2 = bisezione(myf,0,1,tol(i),imax);
end
