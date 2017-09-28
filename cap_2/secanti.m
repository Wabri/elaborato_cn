function [x, i] = secanti(f,df,x0,imax, tol)
fx = feval(f,x0);
f1x = feval (df, x0);
x = x0 - fx/f1x;
i = 0;
while (i<imax) & (abs(x-x0)>tol)
    i = i+1;
    fx0 = fx;
    fx = feval(f,x);
    x1 = (fx*x0-fx0*x)/(fx-fx0);
    x0 = x;
    x = x1;
end
if (abs(x-x0)>tol), disp('il metodo non converge'), end
end