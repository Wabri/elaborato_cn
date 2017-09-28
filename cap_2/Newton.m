function [x, i] = Newton(fx,dfx, x0, imax, tolx)
fx0 = feval(fx,x0);
dfx0 = feval(dfx,x0);
x = x0 - fx0/dfx0;
i=0;
while (i<imax) & (abs(x-x0)>tolx)
    i=i+1;
    x0=x;
    fx0=feval(fx,x0);
    dfx0=feval(dfx,x0);
    x=x0-fx0/dfx0;
end

if abs(x-x0)>tolx
    disp('il metodo non converge');

end

