Rungef = @(x) 1./(1.+x.^2);
l = linspace(-5,5,2);
s = splineCubica(l, Rungef(l));
