%x = TriangolareSup(A, b)
%Risoluzione di sistemi Triangolari superiori per colonna

function [b] = TriangolareSup(A, b)
    for j=lenght(A):-1:1
        if A(i,i)==0
            error('Matrice non singolare')
        else
            b(j)=b(j)/A(j,j);
        end
        for i=1:j-1
            b(i)=b(i)-A(i,j)*b(j);
        end
    end
end
