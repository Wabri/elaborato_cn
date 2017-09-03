function [L,D] = factLDLT(A)
    [m,n]=size(A);
    if m~=n
        error('[Errore] La matrice non e'' quadrata')
    end
    if A(1,1)<=0
        error('[Errore] La matrice non e'' SDP')
    end
    A(2:n,1)=A(2:n,1)/A(1,1);
    for j=2:n
        v = (A(j,1:(j-1))').*diag(A(1:(j-1),1:(j-1)));
        A(j,j) = A(j,j)-A(j,1:(j-1))*v;
        if A(j,j)<=0
            error('[Errore] La matrice non e'' SDP'); 
        end
        A((j+1):n,j)=(A((j+1):n,j)-A((j+1):n,1:(j-1))*v)/A(j,j);
    end
    if nargout==1
        L=A;
    else
    for j=1:n
      for i=1:n
           if i==j
                D(i,j) = A(i,j);
                L(i,j) = 1;
         end
           if i>j
                D(i,j) = 0;
                L(i,j) = A(i,j);
           end
            if i<j
                D(i,j) = 0;
                L(i,j) = 0;
           end
       end
    end
    end
end