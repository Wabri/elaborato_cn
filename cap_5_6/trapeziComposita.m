function [In] = trapeziComp(f,a,b,n)
    h = (b-a)/n;
    In = 0;
    for i=1:n-1
        In = In + f(a+i*h);
    end
    In = (h/2)*(2*In + f(a) + f(b));
end
