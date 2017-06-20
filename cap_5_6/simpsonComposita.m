function [In] = simpsonComp(f,a,b,n)
    h = (b-a)/n;
    In = f(a)-f(b);
    for i=1:n/2
        In = In + 4*f(a+(2*i-1)*h)+2*f((a+2*i*h));
    end
    In = In*(h/3);
end
