function [p] = hermite(ptx, fi)
  n = length(ptx)-1;
  ptx2 = zeros(2*n+2, 1);
  ptx2(1:2:2*n+1)=ptx;
  ptx2(2:2:2*n+2)=ptx;
  dd = differenzeDiviseHermite(ptx2, fi);
  syms x;
  p = dd(1);
  for i=2:2*n+2
    prod = dd(i);
    for j=1:i-1
      prod = prod*(x-ptx2(j));
    end
    p = p + prod;
  end
  p = inline(p);
end
