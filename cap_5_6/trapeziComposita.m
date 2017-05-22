% In = trapeziComposita(f, a, b, n)
% Formula dei trapezi composita per l'approssimazione dell'integrale
% definito di una funzione.
% Input:
% -f: la funzione di cui si vuol calcolare l'integrale;
% -a: estremo sinistro dell'intervallo di integrazione;
% -b: estremo destro dell'intervallo di integrazione;
% -n: numero di sottointervalli sui quali applicare la formula dei
% trapezi semplice.
% Output:
% -In: l'approssimazione dell'integrale definito della funzione.


function [In] = trapeziComposita(f,a,b,n)
    h = (b-a)/n;
    In = 0;
    for i=1:n-1
        In = In + f(a+i*h);
    end
    In = (h/2)*(2*In + f(a) + f(b));
end    
