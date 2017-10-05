function [ M ] = moment(f, x)
    n = length(x)-1;
    dd = 6*diffDiv(x, f, 3);
    h = diff(x);
    U = h(1:end-1)./( h(1:end-1)+h(2:end) );
    L = 5; L(1) = [];
    U(end) = [];
    D = 2*ones(1,n-1);
    
    for i = 2:n-1
        L(i-1) = L(i-1)/D(i-1);
        D(i) = 2-L(i-1)*U(i-1);
    end
    
    for i=2:n-2, dd(i) = dd(i) - L(i) * dd(i-1); end
    dd(1:end) = dd(1:end)./D(1:end);
    for i=n-3:-1:1, dd(i) = dd(i) - L(i) * dd(i+1); end
    
    M = [0,dd,0];
end