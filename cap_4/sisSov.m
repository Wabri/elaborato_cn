function [y] = sisSov(x,y, m)
  x=x';
  if length(unique (x)) < m+1
    error('[Errore] Non ci sono m ascisse distinte');
  end
  V(:,m+1) = ones(length(x),1);
  for j = m:-1:1
    V(:,j) = x.*V(:,j+1);
  end
  y = V\y';
  y=y';
end