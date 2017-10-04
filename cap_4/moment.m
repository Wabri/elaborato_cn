function [ M ] = moment(f, x)
	n = length(x);
	U = zeros(1, n-2);
	L = zeros(1, n-2);
    dd = 6*diffDiv(x, f, 3);
	
    h = diff(x);
    U = h(1:end-1)./( h(1:end-1)+h(2:end) );
    L = 1-U;
    L(1) = [];
    U(end) = [];
    D = 2*ones(1,n-1);
    for i = 2:n-2
        L(i-1) = L(i-1)/D(i-1);
        D(i) = 2-L(i-1)*U(i-1);
    end
	y = zeros(1, n-1);
	y(1) = dd(1);
	for i = 2 : n-1
		y(i) = dd(i)-L(i)*y(i-1);
	end
	M = zeros(1, n);
	M(n-1) = y(n-1)/U(n-1);
	for i = n-2 : -1 : 2
		M(i) = (y(i)-x(i)*M(i+1))/U(i);
    end
end