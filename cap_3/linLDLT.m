function [x] = linLDLT(L,D, x)
    x = triInf(L,x');
    x = linDiag(diag(D),x');
    x = triSup(L',x');
end