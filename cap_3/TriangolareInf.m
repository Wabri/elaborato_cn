function [b] = TriangolareInf(A, b)
%TRIANGOLAREINF Summary of this function goes here
%   Detailed explanation goes here
    [n,m] = size(A);
    for j=1:n
        for i=1:j-1
            if A(i,i) ~= 0
                b(j) = ((b(j) - A(j,i) * b(i)))/A(i,i);
            else
                error('le matrice non è singolare')
            end
        end
    end
end

