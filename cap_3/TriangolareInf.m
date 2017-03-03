function [x] = TriangolareInf(A, b)
%TRIANGOLAREINF Summary of this function goes here
%   Detailed explanation goes here
    [m, n] = size(A);
    x = [];
    for j=1:n
        for i=1:m-1
            disp(i);
            if A(i,i) ~= 0
                x(i) = (b(i) - A(i,j) * x(j)) / A(i,i);
            else
                error('impossibile dividere per 0');
            end
        end
    end
end

