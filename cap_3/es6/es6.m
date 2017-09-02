function [b] = solvLUP(L,U, P, b)
    b = triInf(L,P*b);
    b = triSup(U,b);
end
