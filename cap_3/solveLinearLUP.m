% Risolve il sistema lineare Ax = b fattorizzando
% la matrice A con metodo LU a pivoting parziale
%
% Il vettore b viene riscritto con l'informazione
% necessaria per ottimizzare la memoria.

function [b] = solveLinearLUP(L,U, P, b)
    b = TriangolareInf(L,P*b);
    b = TriangolareSup(U,b);
end
