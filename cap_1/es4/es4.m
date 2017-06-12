format long e;

x_0 = 0;

v = zeros(1);
p = zeros(1);

l = linspace(1,12,12);

for i=1:numel(l)
    v(i) = power(10,-i);
end

for j=1:numel(v)
    p(j) = psi(x_0,v(j));
end

plot(l,p);

function p = psi(x,j)
    %    This function takes in input
    %    two real values x,j and returns
    %    the difference quotient
    %    psi(x) = ( e^(x+j) - e^x )/j
    p = (exp(x+j) - exp(x))/j;
end