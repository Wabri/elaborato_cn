function [p] = poliNewton(xi, fi)
    n = length(xi)-1;
    dd = diffDiv(xi, fi);
    syms x;
    p = dd(1);
    for i=2:n+1
        prod = dd(i);
        for j=1:i-1
            prod = prod*(x-xi(j));
        end
        p = p + prod;
    end
    p = inline(p);
end