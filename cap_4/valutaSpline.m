function [sx] = valutaSpline(ptx, s, pt)
    sx = zeros(length(pt), 1);
    for i=1:length(pt)
        if pt(i)<ptx(1) || pt(i)>ptx(length(ptx))
            str=sprintf('%5.4f non valutato: punto esterno all''intervallo [%5.4f, %5.4f].', pt(i), ptx(1), ptx(length(ptx))); disp(str);
            sx(i)=NaN;
        else
            for j=2:length(ptx)
                if pt(i)>=ptx(j-1) && pt(i)<=ptx(j)
                    f = inline(s(j-1));
                    sx(i)=f(pt(i));
                    break;
                end
            end
        end
    end
end