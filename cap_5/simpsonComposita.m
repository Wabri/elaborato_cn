function [res] = simpsonComposita(f,a,b,n)
    h = (b - a)/n;
    res = - f(a) - f(b);
    for i=1:n/2
        res = res + 4*f(a+(2*i - 1)*h)+2*f((a+2*i*h));
    end
    res = res*(h/3);
end
