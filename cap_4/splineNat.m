function [ s ] = splineNat(x, f)
    n = length(x) - 1;
    xi = zeros(1, n - 1);
    phi = zeros(1, n - 1);
    for i = 1 : n - 1
        phi(i) = ( x(i + 1) - x(i) ) / ( x(i + 2) - x(i) );
        xi(i) = ( x(i + 2) - x(i + 1) ) / ( x(i + 2) - x(i) );
    end
    dd = diffdiv(x, f);
    m = momenti(phi, xi, dd);
    s = espressioni(x, f, m);
end