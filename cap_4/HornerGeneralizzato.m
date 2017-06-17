function [p] = hornerGeneralizzato(xi, dd, xval)
    n=length(dd);
    for i=1:length(xval) 
        p(i)=dd(n);
        for k=n-1:-1:1
            p(i)=p(i)*(xval(i)-xi(k))+dd(k);
        end
    end
end
