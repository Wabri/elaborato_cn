function y = NewtonMod(f, df, m, x0, imax, tol, output)
    format long;
    i = 0;
    x = x0;
    vai=1;
    disp(x0);
    while((i < imax) && vai) 
        i = i+1;
        fx = feval(f, x0);
        disp(fx);
        dfx = feval(df, x0);
        disp(dfx);
        if(dfx ~= 0)
            x = x0 - m * fx / dfx;
        else
            break;
        end
        if(abs(x-x0)<tol)
            vai = 0;
        end
        x0 = x;
    end
    if(output)
        if(vai)
            disp('Impossibile calcolare la tolleranza richiesta nel numero di iter');
        else
           disp(i);
        end
    end
    y = x;
end

