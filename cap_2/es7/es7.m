format long

f = @(x) (1-x-(1+cos(10*x)/2)*sin(x));
df = @(x) (5*sin(x)*sin(10*x)-cos(x)*(cos(10*x)/2 + 1)-1);

tol = logspace(-1,-10,10);

for i=1:10
    [res, countB(i,1)] = bisect(f,0,1,tol(i));
end

disp('il numero di iterazioni del metodo di bisezione con tolleranza decrescente da 10^(-1) a 10^(-10) e'' il seguente');
countB

for i=1:10
    count(i,4) = countB(i);
end

plot(count)
xlabel('10^{-x}');
ylabel('numero di iterazioni');