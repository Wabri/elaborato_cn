function [x] = linLUP(L,U, P, b)
    x = triInf(L,P*b);
    x = triSup(U,x);
end
