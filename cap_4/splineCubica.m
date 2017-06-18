function [s] = splineCubica(ptx, fi)
    phi = zeros(length(ptx)-2, 1);
    xi = zeros(length(ptx)-2, 1);
    dd = zeros(length(ptx)-2, 1);
    for i=2:length(ptx)-1
        hi = ptx(i) - ptx(i-1);
        hi1 = ptx(i+1) - ptx(i);
        phi(i) = hi/(hi+hi1);
        xi(i) = hi1/(hi+hi1);
        dd(i) = differenzaDivisa(ptx(i-1:i+1), fi(i-1:i+1));
    end
    mi = momentiSplineNat(phi, xi, dd);
    s = espressioniSplineCubica(ptx, fi, mi);
end
