function [x] = linLDLT(L,D, b)
    x = linLUP(L,D*L',eye(size(D)),b);
end