% La funzione restituisce la soluzione
% del sistema lineare Ax = b con A
% matrice triangolare inferiore utilizzando
% il metodo di backsubstitution.
% Il vincolo sulla matrice e' che deve essere nonsingolare.
function [b] = TriangolareInf(A, b)
    for j=1:length(A)
        if A(j,j) ~= 0
            b(j) = b(j)/A(j,j);
        else
            error('le matrice è singolare')
        end
        for i=j+1:length(A)
            b(i) = b(i)-A(i,j)*b(j);
        end
    end
end
