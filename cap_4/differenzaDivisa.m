function [dd] = differenzaDivisa(ptx, fi)
    dd = 0;
    for i=1:length(ptx)
        prod = 1;
        for j=1:length(ptx)
            if j~=i
                prod = prod*(ptx(i)-ptx(j));
            end
        end
        dd = dd+fi(i)/prod;
    end
end