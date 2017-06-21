function [ m ] = momenti_periodica(phi, xi, dd)
    n = length(xi);
    A=zeros(n);
    dd = 6 * dd;
    for i=1:n
        for j=1:n
            if j==i
                A(i,j)=2;
            elseif i==j+1 || (i==1 && j==n)
                A(i,j)=phi(j);
            elseif i==j-1 || (i==n && j==1)
                A(i,j)=xi(i);
            end
        end
    end
    m_lins = A\dd;
    
    lambda=zeros(1,n-1);
    l=zeros(1,n);
    u=zeros(1,n);
    gamma=zeros(1,n-1);
    u(1)=2;
    lambda(1)=phi(1);
    gamma(1)=xi(1)/2;
    for j=2:n-2
        l(j)=phi(j)/u(j-1);
        u(j)=2-l(j)*xi(j-1);
        lambda(j)=-l(j)*lambda(j-1);
        gamma(j)=-lambda(j-1)*xi(j-1)/u(j);
    end
    j=n-1;
        l(j)=phi(j)/u(j-1);
        u(j)=2-l(j)*xi(j-1);
        lambda(j)=xi(j)-l(j)*l(j)*lambda(j-1);
        gamma(j)=phi(n)-gamma(j-1)*xi(j-1)/u(j);
    for j=1:n-1
        sum = gamma(j)*lambda(j);
    end
    u(n) = 2-sum;
    
    L=zeros(n);
    U=zeros(n);
    for i=1:n
        for j=1:n
            if j==i
                L(i,j)=1;
                U(i,j)=1;
            elseif i==j+1 && j<n
                L(i,j)=l(j);
            elseif i==j-1 && j<n
                U(i,j)=xi(i);
            elseif i==n && j<n
                L(i,j)=gamma(j);
            elseif j==n && i<n
                U(i,j)=lambda(i);
            end
        end
    end
    m_alg = solveLinearLUP(L,U,eye(n), dd);
        
end