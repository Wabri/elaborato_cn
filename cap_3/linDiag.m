function [d] = linDiag(d,x)
    n = size(d);
    for i = 1:n
        d(i) = x(i)/d(i);
    end
end