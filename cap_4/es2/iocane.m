funct = @(x) 1./(1.+x.^2);
a=-5;
b=5;
ascisse = ascisseEquispaziate(a, b, 5);
xval = linspace(a,b,50);
xi = ascisse;
fi = funct(xi);
dd = diffDiv(xi, fi);

%pval = HornerGeneralizzato(xi,dd,xval);

plot (xval,p);