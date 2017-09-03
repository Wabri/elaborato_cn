function [b] = triInf(A, b)
    for j=1:length(A)
        if A(j,j) ~= 0
            b(j) = b(j)/A(j,j);
        else
            error('[Attenzione]La matrice e'' singolare')
        end
        for i=j+1:length(A)
            b(i) = b(i)-A(i,j)*b(j);
        end
    end
end
