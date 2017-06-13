%[M, p] =LUP(A)
%Esercizio 5 capitolo 3
%Fattorizzazione LU con pivoting parziale

function [A] =  LU(A)
    [m,n]=size(A);
    if m~=n
        error('Errore: matrice non quadrata');
    end
    for i=1:n-1
        if A(i,i)==0
            error('Errore: matrice non fattorizzabile');
        end
        A(i+1:n, i) = A(i+1:n, i)/A(i, i);
        A(i+1:n, i+1:n) = A(i+1:n, i+1:n) -A(i+1:n, i)*A(i,i+1:n);
    end
end