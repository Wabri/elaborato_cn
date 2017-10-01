function [L,U,P]=factLUP(A)
[m,n]=size(A);
if m~=n 
    error('La matrice inserita non e'' quadrata'); 
end
L=eye(n); 
P=eye(n); 
U=A;
for k=1:n
    [pivot, m]=max(abs(U(k:n,k)));
    if pivot==0
        error('La matrice inserita e'' singolare');
    end
    m=m+k-1;
    if m~=k
        U([k,m], :) = U([m, k], :);
        P([k,m], :) = P([m, k], :);
        if k >= 2
            L([k,m],1:k-1) = L([m,k],1:k-1);
        end
    end
    L(k+1:n,k)=U(k+1:n,k)/U(k,k);  
    U(k+1:n,:)=U(k+1:n,:)-L(k+1:n,k)*U(k,:);
end