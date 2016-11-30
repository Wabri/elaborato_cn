
function y = NetwtonSqrt(n, alpha, x0, imax, tol)
    format long e
    x = (((n-1)*x0^n + alpha)/ x0^(n-1)) / n;
    i = 1;
    while(i < imax) && (abs(x-x0)>tol)
        x0=x;
        i = i+1;
        x = (((n-1)*x0^n + alpha)/ x0^(n-1)) / n;
    end
    y = x;
   
end
