% Risolve il sistema lineare Ax = b fattorizzando
% la matrice A con metodo LU a pivoting parziale
%
% Il vettore b viene riscritto con l'informazione
% necessaria per ottimizzare la memoria.

function [b] = solveLinearLUP(A, p, b)
    %[A,p] = LUP(A); A must be already LUP
    p = zeros(lenght(A)); % WTF
    for i=1:length(A)
        P(i, p(i)) = 1;
    end
    b = TriangolareInf(tril(A,-1) + eye(length(A)),p*b);
    b = TriangolareSup(triu(A),b);
end
