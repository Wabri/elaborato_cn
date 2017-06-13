function [fi] = diffDiv(xi, fi)
    for i=1:length(xi)-1
        for j=length(xi):-1:i+1
            fi(j) = (fi(j) - fi(j-1))/(xi(j)-xi(j-i));
        end
    end
end