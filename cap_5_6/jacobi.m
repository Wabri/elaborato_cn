function [xn, i, err] = jacobi(A, b, x0, tol, nmax)
    D = diag(diag(A));
    J = -inv(D)*(A-D);
    q = D\b;
    xn = J*x0 + q;
    i = 1;
    err(i) = norm(xn-x0)/norm(xn);
    while (i<=nmax && err(i)>tol)
	x0 = xn;
	xn = J*x0+q;
	i = i+1;
	err(i) = norm(xn-x0)/norm(xn);
    end
    if i>nmax
	disp('Jacobi non converge nel numero di iter fissato');
    end
end