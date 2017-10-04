% m -> grado del polinomio
function [y] = polBetter(x,y, m)
  x=x';
  
  %controllo esistenza di m+1 ascisse distinte
  if length(unique (x)) < m+1
    error('[Errore] Non ci sono m ascisse distinte');
  end
  
  %creazione matrice vandermonde rettangolare
  V(:,m+1) = ones(length(x),1);
  for j = m:-1:1
    V(:,j) = x.*V(:,j+1);
  end
 
  %backslash
  y = V\y';
  y=y';
end