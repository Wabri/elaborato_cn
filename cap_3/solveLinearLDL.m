% Risolve il sistema lineare Ax = b fattorizzando
% la matrice A con metodo LDLt
%
% Il vettore b viene riscritto con l'informazione
% necessaria per ottimizzare la memoria.

function [b] = solveLinearLDL(A, b)
    
    b = TriangolareInf(tril(A,-1) + eye(length(A)),b);
    b = diagonale(diag(A),b);
    b = TriangolareSup((tril(A,-1) + eye(length(A)))',b);
end
