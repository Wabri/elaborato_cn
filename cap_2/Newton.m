function x = Newton(fx,dfx, x0, imax, tolx)
f = feval(fx,x0);
df = feval(dfx,x0);
x = x0 - f/df;
i=0;
while (i<imax) & (abs(x-x0)>tolx)
    i=i+1;
    x0=x;
    f=feval(fx,x0);
    df=feval(dfx,x0);
    x=x0-f/df;
end

if abs(x-x0)>tolx
    disp('il metodo non converge');

end

