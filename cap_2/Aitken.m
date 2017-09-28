function y = Aitken( fx, dfx, x0, imax, tol )
    i = 0;
    x=x0;
    diverror=1;
    while((i < imax) && diverror)
        i=i+1;
        x0=x;
        fx0 = feval(fx,x0);
        dfx0 = feval(dfx,x0);
        x1 = x0 - fx0/dfx0;
        fx0 = feval (fx,x1);
        dfx0 = feval (dfx, x1);
        x = x1 - fx0/dfx0;
        if (x-2*x1+x0 == 0)
            disp('divisione per zero');
            diverror = 0;
            break;
        end
        x = (x*x0-x1^2)/(x-2*x1+x0);
        diverror = abs(x-x0)>tol;
    end
    if(diverror)
        disp('Il metodo non converge');
    end
    y = x;
end