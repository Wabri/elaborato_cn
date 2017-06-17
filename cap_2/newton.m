function[xs,nit,scarti]=Newton(myf,df,x0,tolx,maxit)
    scarti0 = 1.0e5;
    x(1) = x0;
    fk = feval(myf,x0);
    dfk = feval(df,x0);
    k = 0;
    err = 2*tolx;
    while( err >= tolx & k < maxit)
        k = k+1;
        x(k+1) = x(k)-fk/dfk;
        scarti(k) = abs(fk/dfk);
        rapp(k) = scarti(k)/scarti0^2;
        fk = feval(myf,x(k+1));
        dfk = feval(df,x(k+1));
        err = abs(x(k+1)-x(k));
        if abs(dfk)< tolx*abs(fk)
            error('La derivata f''(x(%d)) e'' nulla',k);
        end
        scarti0 = scarti(k);
    end
    xs = x(k+1)
    nit = k+1
end