% Function che implementa il metodo di bisezione
% Input:
% f : funzione di cui vogliamo trovare la radice
% a,b : estremi (rispettivamente sx e dx) dell'intervallo
% tolx : tolleranza con la quale siamo interessati ad approssimare
% la soluzione
% maxit : numero massimo di iterazioni 
% Output:
% sol : zero della funzione nell'intervallo
% nit : numero di iterazioni che sono state
% eseguite per trovare la soluzione

function [sol,nit]=bisezione(f,a,b,tolx,maxit);
    nit=maxit;
    j=0;
    if(subs(f,a)*subs(f,b)>0)
        disp('Il metodo di bisezione non puo essere utilizzato in questo caso!')
    else
        while(j<=maxit)
            sol=(a+b)/2;
            ff=subs(f,sol);
            if(abs(ff)<=tolx)
                nit=j;
                break;
        end
        fa=subs(f,a);
        fm=subs(f,sol);
        if(fa*fm<=0)
            b=sol;
        else
            a=sol;
        end
        j=j+1;

    end
    disp('Radice della funzione:')
    sol
    disp('Iterazioni effettuate:')
    nit
end