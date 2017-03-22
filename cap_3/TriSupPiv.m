%x = TriSupPiv(A, b, p)
%Risoluzione di sistemi Triangolari superiori per colonna con pivoting
%parziale

function [x] = TriSup(A, b, p)
    for j=lenght(A):-1:1
        if A(j,j)==0
            error('Matrice non singolare')
        else
            b(j)=b(j)/A(j,j);
        end
        for i=1:j-1
            b(i)=b(i)-A(i,j)*b(j);
        end
    end
            