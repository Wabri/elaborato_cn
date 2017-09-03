function [x,i] = PotenzePR(H, p, tol)
  [m,n] = size(H);
  if m~=n
    error('Errore: H non quadrata');
  end
  delta = zeros(n, 1);
  for j=1:n
    for i=1:n
      delta(j) = delta(j) + H(i, j);
    end
  end
  for j=1:n
    for i=1:n
      if delta(j)==0
        H(i, j) = 0;
      else
        H(i, j) = H(i, j)/delta(j);
      end
    end
    if delta(j)==0
      delta(j)=1;
    else
      delta(j)=0;
    end
  end
  x = rand(n,1);
  x = x/norm(x);
  imax = (log(tol)-log(2))/(log(p));
  for i=1:imax
    x = p*(H*x)+((1+p*(delta'*x -1))/n)*ones(n,1);
  end
end
