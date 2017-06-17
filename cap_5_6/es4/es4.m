function [x1, i] = jacobi(A, b, x0, tol)
    M = diag(diag(A));
    i = 0;
    r = A*x0 - b;
    x1=x0;
    while norm(r)>tol
	i = i+1;
	u = diagonale(M, r);
	x1 = x0-u;
	x0 = x1;
	r = A*x0 - b;
    end
end

function [x1, i] = gaussSeidel(A, b, x0, tol)
    M = tril(A);
    i = 0;
    r = A*x0 - b;
    while norm(r)>tol
	i = i+1;
	u = triangolareInfCol(M, r);
	x1 = x0 - u;
	x0 = x1;
	r = A*x0 - b;
    end
end