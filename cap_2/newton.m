function[xs,nit,scarti]=Newton(myf,df,x0,tolx,maxit)

% Metodo di Newton per calcolare la radice di una equazione
% non lineare f(x)=0 mediante costruzione di una successione
% {x(k)} convergente alla radice x ( x(0) stima iniziale assegnata ).
%
% myf : stringa che contiene il nome della funzione f(x)
% df: stringa che contiene il nome della derivata prima f'(x)
% my2f: stringa che contiene il nome della derivata seconda f''(x)
% x0 : approssimazione iniziale della radice
% tolx : criterio di arresto (sullo scarto) | x(k+1)-x(k) | < toll
% maxit : numero massimo di iterazioni
% xs : approssimazione finale della radice
% nit : numero di iterazioni eseguite per trovare la soluzione
% scarti: vettore degli scarti d(k), k=1,....

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