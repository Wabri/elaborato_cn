function [x1, k, err] = gaussSeidel(A, b, x0, nmax, tol)
  D=diag(diag(A));
  L=tril(A)-D;
  U=triu(A)-D;
  DI=inv(D+L);
  GS=-DI*U;
  b1=(D+L)\b;
  x1=GS*x0+b1;
  k=1;
  err(k)=norm(x1-x0,inf)/norm(x1);

  while(err(k)>tol && k<=nmax)
    x0=x1;
    x1=GS*x0+b1;
    k=k+1;
    err(k)=norm(x1-x0,inf)/norm(x1);
  end
  if k>nmax
    disp('** Gauss-Seidel non converge nel numero di iterazioni fissato');
  end
  k=k-1;
end
