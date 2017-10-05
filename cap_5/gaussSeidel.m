function [x, k] = gaussSeidel(A, b, x0, tol, nmax)
    k=0; n = size(A); n=n(1:1); x=zeros(n,1);
    % implementazione del criterio d'arresto
    for i=1:n
        aux = 0;
        for j=1:i-1, aux = aux + (A(i,j)*x(j)); end
        temp = 0;
        for j=i+1:n, temp = temp + (A(i,j)*x0(j)); end
        x(i) = (b(i)-aux-temp)/(A(i,i));
    end
    k = k+1;
    % ciclo principale
    while ((k<nmax)&&(norm(A*x-b)>tol*norm(b)))
       x0=x; x=zeros(n,1);
       for i=1:n
           aux = 0;
           for j=1:i-1, aux = aux + (A(i,j))*x(j); end
           temp = 0;
           for j=i+1:n, temp = temp + (A(i,j)*x0(j)); end
           x(i) = (b(i)-aux-temp)/A(i,i);
       end
       k=k+1;
    end
    if k>nmax, error('Gauss-Seidel non converge nel numero di iterazioni fissato'); end
end
