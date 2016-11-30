
function y = NetwtonSqrt(alpha, x0, imax, tol)
    format long e
    x = (x0 + alpha/x0)/2;
    i = 1;
    while(i < imax) && (abs(x-x0)>tol)
        x0=x;
        i = i+1;
        x = (x0 + alpha/x0)/2;
    end
    y = x;
   
end
