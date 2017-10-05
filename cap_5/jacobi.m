function [x, k] = jacobi(A, b, x0, tol, nmax)
  k=0; n = size(A); n=n(1:1); temp = x0; x = x0;
  % implementazione del criterio d'arresto
  for i=1:n
      aux = 0;
      for j=1:n
          if j~=i, aux = aux + (A(i,j))*temp(j); end
      end
      x(i) = (b(i)-aux)/(A(i,i));
  end
  k = k+1;
  % ciclo principale
  while ((k<nmax)&&(norm(A*x-b)>tol*norm(b)))
      temp = x;
      for i=1:n
          aux = 0;
          for j=1:n
              if j~=i, aux = aux + (A(i,j))*temp(j); end
          end
          x(i) = (b(i)-aux)/A(i,i);
      end
      k=k+1;
  end
  if k>=nmax, disp('Jacobi non converge nel numero di iter fissato'); end
end
