function y = NetwtonSqrt(alpha, x0, imax, tol)
    format long e
    x = [x0,(x0+alpha/x0)/2];
    i = 2;
    while(i < imax) && (abs(x(i)-x(i-1))>tol)
        x(i+1) = (x(i) + alpha/x(i))/2;
        disp(x(i+1));
        i = i+1;
    end
    y = x(i);
end
