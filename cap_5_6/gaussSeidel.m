function [xn, i, err] = gaussSeidel(A, b, x0, tol, nmax)
  D=diag(diag(A));
  L=tril(A)-D;
  U=triu(A)-D;
  DI=inv(D+L);
  GS=-DI*U;
  b1=(D+L)\b;
  xn=GS*x0+b1;
  i=1;
  err(i)=norm(xn-x0,inf)/norm(xn);

  while(err(i)>tol && i<=nmax)
    x0=xn;
    xn=GS*x0+b1;
    i=i+1;
    err(i)=norm(xn-x0,inf)/norm(xn);
  end
  if i>nmax
    error('Gauss-Seidel non converge nel numero di iterazioni fissato');
  end
  i=i-1;
end
