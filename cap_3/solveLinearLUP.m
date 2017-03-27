% Risolve il sistema lineare Ax = b fattorizzando
% la matrice A con metodo LU a pivoting parziale
%
% Il vettore b viene riscritto con l'informazione
% necessaria per ottimizzare la memoria.

function [b] = solveLinearLUP(A, p, b)
    P = zeros(length(A));
    for i=1:length(A)
        P(i, p(i)) = 1;
    end
    disp(P)
    b = TriangolareInf(tril(A,-1) + eye(length(A)),P*b');
    b = TriangolareSup(triu(A),b);
end
