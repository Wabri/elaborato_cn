function [x] = triInf(A, b)
    x = b;
    for j=1:length(A)
        if A(j,j) ~= 0
            x(j) = x(j)/A(j,j);
        else
            error('La matrice e'' singolare')
        end
        for i=j+1:length(A)
            x(i) = x(i)-A(i,j)*x(j);
        end
    end
end
