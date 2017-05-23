% In = simpsonComposita(f, a, b, n)
% Formula di Simpson composita per l'approssimazione dell'integrale
% definito di una funzione.
% Input:
% -f: la funzione di cui si vuol calcolare l'integrale;
% -a: estremo sinistro dell'intervallo di integrazione;
% -b: estremo destro dell'intervallo di integrazione;
% -n: numero, pari, di sottointervalli sui quali applicare la formula
% di Simpson semplice.
% Output:
% -In: l'approssimazione dell'integrale definito della funzione.

function [In] = simpsonComposita(f,a,b,n)
    h = (b-a)/n;
    In = f(a)-f(b);
    for i=1:n/2
        In = In + 4*f(a+(2*i-1)*h)+2*f((a+2*i*h));
    end
    In = In*(h/3);
end