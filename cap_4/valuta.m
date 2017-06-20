function [ xx ] = valuta(p, s, xx)
    n=length(p) - 1;
    k=1;
    j=1;
    for i = 1 : n
        inInt = 1;
        while j <= length(xx) && inInt
            if xx(j) >= p(i) && xx(j) <= p(i + 1)
                j = j + 1;
            else
                inInt = 0;
            end
        end
        xx(k : j - 1) = subs(s(i), xx(k : j - 1));
        k = j;
    end
end