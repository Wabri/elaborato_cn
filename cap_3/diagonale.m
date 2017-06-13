function [d] = diagonale(d,b)
    n = size(d);
    for i = 1:n
        d(i) = b(i)/d(i);
    end
end
