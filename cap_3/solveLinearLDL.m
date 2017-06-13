% Risolve il sistema lineare Ax = b fattorizzando
% in cui la matrice A e' fattorizzata LDLt
%
% Il vettore b viene riscritto con l'informazione
% necessaria per ottimizzare la memoria.

function [b] = solveLinearLDL(L,D, b)
    b = TriangolareInf(L,b');
    b = diagonale(diag(D),b');
    b = TriangolareSup(L',b');
end
