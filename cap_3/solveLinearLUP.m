function [b] = solveLinearLUP(L, U, P, b)
    b = TriangolareInf(L,P*b);
    b = TriangolareSup(U,b);
end
