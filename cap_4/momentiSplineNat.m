function [m] = momentiSplineNat(phi, xi, dd)
  dd = 6*dd;
  n = length(xi)+1;
  u = zeros(n-1, 1);
  l = zeros(n-2, 1);
  u(1)=2;
  for i=2:n-1
    l(i)=phi(i)/u(i-1);
    u(i)=2-l(i)*xi(i-1);
  end
  y = zeros(n-1, 1);
  y(1)=dd(1);
  for i=2:n-1
    y(i)=dd(i)-l(i)*y(i-1);
  end
  m = zeros(n-1, 1);
  m(n-1)=y(n-1)/u(n-1);
  for i=n-2:-1:1
    m(i)=(y(i)-xi(i)*dd(i+1))/u(i);
  end
  m = [0; m; 0];
end
