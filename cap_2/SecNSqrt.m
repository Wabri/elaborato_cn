function y = SecNSqrt(n, alpha, x0, imax, tol)
    %format long e
    x1 = (x0 + alpha/x0)/2;
    x = (f(x1,n, alpha) * x0 - f(x0,n, alpha)*x1 ) / (f(x1, n, alpha) - f(x0, n, alpha));
    i = 1;
    while(i < imax) && (abs(x-x0)>tol)
        x0=x1;
        x1=x;
        i = i+1;
        x = (f(x1,n, alpha) * x0 - f(x0,n, alpha)*x1 ) / (f(x1, n, alpha) - f(x0, n, alpha));
    end
    y = x;
   
end


function y = f(x, n, alpha)
    y = (x ^ n) - alpha;
end
