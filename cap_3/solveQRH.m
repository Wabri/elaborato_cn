function [x] = solveQRH( A, b )
    [m,n] = size(A);
    Qt = factQRH(A);
    x = TriSup(triu(A(1:n, :)), Qt(1:n, :)*b);
end