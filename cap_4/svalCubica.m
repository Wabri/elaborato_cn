function [ sval ] = svalCubica( f, x, M, xval)
    n = length(x);
    nval = length(xval);
    sval = zeros(1, nval);
    r = zeros(1, n+1); q = r; h = q; k=1;
    for i = 2:n
        h(i) = x(i) - x(i-1);
        r(i) = f(i-1) - (h(i)^2)*M(i-1)/6;
        q(i) = (f(i) - f(i-1))/h(i) - h(i)*( M(i) - M(i-1) )/6;
    end
    sp = @(xval, i) (((xval(k)-x(i-1))^3) * M(i) + ((x(i)-xval(k))^3) * M(i-1))/(6*h(i)) + q(i)*(xval(k)-x(i-1)) + r(i);
    t=2; k=1;
    while k <= nval
        if x(t-1) <= xval(k) && xval(k) <= x(t), sval(k) = sp(xval(k), t); k = k + 1;
        else, t = t + 1;
        end
    end
end