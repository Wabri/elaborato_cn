format long

myf = @(x) (1-x-(1+cos(10*x)/2)*sin(x));
df = @(x) (5*sin(x)*sin(10*x)-cos(x)*(cos(10*x)/2 + 1)-1);

x0 = 0;
x1 = 1;
tol = logspace(-1,-10,10);
imax = 50;
count = zeros(1,10);
for i=1:10
    [temp, count(1,i)] = bisect(myf,x0,x1,tol(i),imax);
    dips('B');
    i
    temp
end

disp('nella riga ci sono il numero di iterazioni del metodo della bisezione');
count