function [f] = differenzeDiviseHermite(x, f)
  for i = length(x)-1:-2:3
    f(i) = (f(i)-f(i-2))/(x(i)-x(i-2));
  end
  for i=2:length(x)-1
    for j=length(x):-1:i+1
      f(j) = (f(j)-f(j-1))/(x(j)-x(j-i));
    end
  end
end
