function [x] = risolviSistemaLDLt(A,b)
    [L,D] = fattorizzaLDLt(A);
    x = L*(D*(L'*b));
end