function [b] = solveLinearLDL(L,D, b)
    b = TriangolareInf(L,b');
    b = diagonale(diag(D),b');
    b = TriangolareSup(L',b');
end
