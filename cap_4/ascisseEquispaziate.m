function [ptx] = ascisseEquispaziate(a, b, n)
  h = (b-a)/n;
  ptx = zeros(n+1, 1);
  for i=1:n+1
    ptx(i) = a +(i-1)*h;
  end
end
