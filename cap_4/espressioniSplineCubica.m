function [s] = espressioniSplineCubica(ptx, fi, mi)
    s = sym('x', [length(ptx)-1 1]);
    syms x;
    for i=2:length(ptx)
        hi = ptx(i)-ptx(i-1);
        ri = fi(i-1)-((hi^2)/6)*mi(i-1);
        qi = (fi(i)-fi(i-1))/hi -(hi/6)*(mi(i)-mi(i-1));
        s(i-1)=(((x - ptx(i-1))^3)*mi(i) + ((ptx(i) - x)^3)*mi(i-1))/(6*hi) +qi*(x - ptx(i-1)) +ri;
    end
end