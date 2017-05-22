% [In, pt] = trapeziAdattativaRicorsiva(f, a, b, tol, pt)
% Formula dei trapezi adattativa per l'approssimazione dell'integrale
% definito di una funzione.
% Input:
% -f: la funzione di cui si vuol calcolare l'integrale;
% -a: estremo sinistro dell'intervallo di integrazione;
% -b: estremo destro dell'intervallo di integrazione;
% -tol: la tolleranza entro la quale si richiede debba rientrare la
% soluzione approssimata.
% Output:
% -In: l'approssimazione dell'integrale definito della funzione;
% -pt: numero di punti generati ricorsivamente.

function [In, pt] = trapeziAdattativa(f, a, b, tol)
    [In, pt] = trapeziAdattativaRicorsiva(f, a, b, tol, 3);
end

function [In, pt] = trapeziAdattivaRicorsiva(f, a, b, tol, pt)
    h = (b-a)/2;
    m = (b+a)/2;
    In1 = h*(feval(f, a) + feval(f, b));
    In = In1/2 + h*feval(f, m);
    err = abs(In - In1)/3;
    if err>tol
	[intSx, ptSx] = trapeziAdattativaRicorsiva(f, a, m, tol/2, 1);
	[intDx, ptDx] = trapeziAdattativaRicorsiva(f, m, b, tol/2, 1);
	In = intSx + intDx;
	pt = pt+ptSx+ptDx;
    end
end