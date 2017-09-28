function x = NewtonMod(fx, dfx, m, x0, imax, tol)
fx0 = feval(fx,x0);
dfx0 = feval(dfx,x0);
x = x0 - m * fx0 / dfx0;
i = 0;
while((i < imax) & abs(x-x0) > tol) 
    i = i+1;
    x0=x;
    fx0 = feval(fx, x0);
    dfx0 = feval(dfx, x0);
    x = x0 - m * fx0 / dfx0;
end
if abs(x-x0)>tol
    disp('il metodo non converge');
end

