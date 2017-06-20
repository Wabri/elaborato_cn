function[ f ] = diffdiv(x, f)
n = length(x) - 1;
for j = 1 : 2
    for i = n + 1 : - 1 : j + 1f(i) = ( f(i) - f(i - 1) )/(x(i) - x(i - j) );
    end
end
f = f(3 : length(f))';
end