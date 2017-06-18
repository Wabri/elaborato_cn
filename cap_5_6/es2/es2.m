format long
F = @(x) x*exp(1)^-x*cos(2*x);
y = (3*(exp(1)^(-2*pi) -1) -10*pi*exp(1)^(-2*pi))/25;
nmax = 8;
err = zeros(nmax,2);
rap = zeros(nmax-1,2);
for i=1:8
    err(i,1) = abs(y - trapeziComposita(F,0,2*pi,2^i));
    err(i,2) = abs(y - simpsonComposita(F,0,2*pi,2^i));
    if i>1
        rap(i-1,:) = err(i,:)./err(i-1,:);
    end
end

semilogy([1:8],err);
plot([2:nmax],rap);