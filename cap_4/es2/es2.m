Rungef = @(x) 1./(1.+x.^2);
a=-5; b=5;
max_n = 20;
res_err = [];
[errors, plots, l] = evaluate_poli(Rungef, a,b, 10, 5, 0, 100);
plot(plots');
plot(errors')
[errors, plots, l] = evaluate_poli(Rungef, a,b, 10, 5, 1, 100);
res_err = cat(2, res_err,errors');
plot(plots');
plot(errors')

Sinf = inline('x.*sin(x)');
a=0; b=pi;
[errors, plots, l] = evaluate_poli(Sinf, a,b, max_n, 10, 0, 100);
plot(plots');
plot(errors')
[errors, plots, l] = evaluate_poli(Sinf, a,b, max_n, 10, 1, 100);
plot(plots');
plot(errors')

