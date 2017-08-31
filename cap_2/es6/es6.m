myf = @(x) (1-x-(1+cos(10*x)/2)*sin(x));
df = @(x) (5*sin(x)*sin(10*x)-cos(x)*(cos(10*x)/2 + 1)-1);

x0 = 0;
x1 = 1;
tol = logspace(-1,-10,10);
disp(tol);
imax = 50;
count = zeros(3,10);
for i=1:10
    [temp, count(1,i)] = NewtonMod(myf,df,1,x0,imax,tol(i), 0);
    [temp, count(2,i)] = secanti(myf,x0,x1,tol(i),imax);
    [temp, count(3,i)] = corde(myf,feval(df,x0),x0,tol(i),imax);
end

disp('nella prima riga ci sono le iterazioni di newton modificato,');
disp('nella seconda riga ci sono il numero di iterazioni del metodo delle secanti');
disp('nella terza riga ci sono il numero di iterazioni del metodo delle corde');
count