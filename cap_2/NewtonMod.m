function [y, i] = NewtonMod(f, df, m, x0, imax, tol)
    format long;
    i = 0;
    x = x0;
    diverror=1;
    while((i < imax) && diverror) 
        i = i+1;
        fx = feval(f, x0);
        dfx = feval(df, x0);
        if(dfx ~= 0)
            x = x0 - m * fx / dfx;
        else
            break;
        end
        if(abs(x-x0)<tol)
            diverror = 0;
        end
        x0 = x;
    end
    y = x;
end

