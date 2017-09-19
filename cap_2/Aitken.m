function y = Aitken( f, df, x0, imax, tol )
    format long;
    i = 0;
    diverror=1;

    while((i < imax) && diverror)
        x1 = NewtonMod(f, df, 1, x0, 1, tol);
        x2 = NewtonMod(f, df, 1, x1, 1, tol);
        i = i+1;
        if((x0 - 2*x1 +x2) == 0)
            disp('[Errore] Divisione per 0');
            diverror = 0;
            break;
        end
        x = (x2*x0 - x1^2)/(x0 - 2*x1 +x2);
        if(abs(x-x0)<tol)
            diverror = 0;
        end
        x0 = x;
    end
    if(diverror)
        disp('[Errore] Tolleranza non calcolabile');
        disp(i);
    end
    y = x;
end