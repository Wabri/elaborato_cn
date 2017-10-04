function [res] = trapeziComposita(f,a,b,n)
    h = (b - a)/n;
    res = 0;
    for i=1:n - 1
        res = res + f(a+i*h);
    end
    res = (h/2)*(2*res + f(a) + f(b));
end
