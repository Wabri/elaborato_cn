function norm = normaMatrix1(A)
    n=length(A);
    norm = 0;
    v = 0;
    for i= 1:n
        v = 0;
        for j=1:n
           v = v + abs(A(i,j));
        end
    end
    if norm <= v
        norm = v;
    end
end