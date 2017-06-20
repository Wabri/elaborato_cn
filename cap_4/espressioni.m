function [ s ] = espressioni( xi, fi, m)
    n = length(xi) - 1;
    s = sym('x' , [n 1]);
    syms x;
    for i = 2 : n + 1
        hi = xi(i) - xi(i - 1);
        ri = fi(i - 1) - hi^2/6 * m(i - 1);
        qi = (fi(i) - fi(i - 1))/hi - hi/6 * (m(i) - m(i - 1));
        s(i - 1) = ( (x - xi(i - 1))^3 * m(i) + (xi(i) - x)^3 * m(i - 1) ) / (6 *hi) + qi * (x - xi(i - 1)) + ri;
    end
end