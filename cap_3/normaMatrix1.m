function norm = normaMatrix1(A)
    norm = 0
    v = 0
    for i= 1:length(A)
        v = 0
        for j=1:length(A)
           v = v + A(i,j)
        end
    end
    if norm <= v
        norm = v
    end
end