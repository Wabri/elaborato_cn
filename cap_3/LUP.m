%[M, p] =LUP(A)
%Esercizio 5 capitolo 3
%Fattorizzazione LU con pivoting parziale

function [M, p] =  LUP(A)
    [m,n]=size(A);
    if m~=n
        error('Errore: matrice non quadrata');
    end
    p=1:n;
    for i=1:(n-1)
        [aki, ki] = max(abs(A(i:n, i)));
        if aki==0
            error('Matrice singolare');
        end
        ki=ki+i-1;
        if ki>i
            A([i, ki], :) = A([ki, i], :);
            p([i, ki]) = p([ki, i]);
        end
        A(i+1:n, i) = A(i+1:n, i)/A(i, i);
        A(i+1:n, i+1:n) = A(i+1:n, i+1:n) -A(i+1:n, i)*A(i,i+1:n);
    end
    M = A;
end