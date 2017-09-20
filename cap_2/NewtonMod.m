function [y, i] = NewtonMod(fx, dfx, m, x0, imax, tol)
    i = 0;
    x = x0;
    diverror=1;
    while((i < imax) && diverror) 
        i = i+1;
        fx0 = feval(fx, x0);
        dfx0 = feval(dfx, x0);
        x = x0 - m * fx0 / dfx0;
        if(abs(x-x0)<tol)
            diverror = 0;
        end
        x0 = x;
    end
    y = x;
end

