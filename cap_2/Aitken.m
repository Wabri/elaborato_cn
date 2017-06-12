function y = Aitken( f, df, x0, imax, tol )
    format long;
    i = 0;
    vai=1;

    while((i < imax) && vai)
        x1 = NewtonMod(f, df, 1, x0, 1, tol, 0);
        x2 = NewtonMod(f, df, 1, x1, 1, tol, 0);
        i = i+1;
        disp('x0= '),disp(x0);
        disp('x1= '),disp(x1);
        disp('x2= '),disp(x2);
        if((x0 - 2*x1 +x2) == 0)
            disp('cannot divide by 0');
            vai = 0;
            break;
        end
        x = (x2*x0 - x1^2)/(x0 - 2*x1 +x2);
        disp('x='), disp(x0);
        if(abs(x-x0)<tol)
            vai = 0;
        end
        x0 = x;
    end
    if(vai)
        disp('Impossibile calcolare la tolleranza richiesta nel numero di iter');
        disp(i);
    end
    y = x;
end
