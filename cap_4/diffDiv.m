function [fi] = diffDiv(xi, fi,n)
  for i=1:n-1
    for j=n:-1:i+1
      fi(j) = (fi(j) - fi(j-1))/(xi(j)-xi(j-i));
    end
  end
end
