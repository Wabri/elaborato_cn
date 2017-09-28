function y = NetwtonSqrtN(n, alpha, x0, imax, tol)
    format long e
    x = [x0, (((n-1)*x0^n + alpha)/ x0^(n-1)) / n];
    i = 2;
    while(i < imax) && (abs(x(i)-x(i-1))>tol)
        x(i+1) = (((n-1)*x(i)^n + alpha)/ (x(i)^(n-1)) / n);
        disp(x(i+1));
        i = i+1;
    end
    y = x(i);
end
