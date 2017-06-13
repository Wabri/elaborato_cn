Rungef = @(x) 1./(1.+x.^2);
a=-5; b=5;
max_n = 20;
res_err = [];
[errors, plots, l] = evaluate_poli(Rungef, a,b, max_n, 10, 0, 100);
res_err = cat(2, res_err,errors');
surf(l', [2:2:max_n]', plots');
[errors, plots, l] = evaluate_poli(Rungef, a,b, max_n, 10, 1, 100);
res_err = cat(2, res_err,errors');
surf(l', [2:2:max_n]', plots');

Sinf = inline('x.*sin(x)');
a=0; b=pi;
[errors, plots, l] = evaluate_poli(Sinf, a,b, max_n, 10, 0, 100);
res_err = cat(2, res_err,errors);
surf(l', [2:2:max_n]', plots');
[errors, plots, l] = evaluate_poli(Sinf, a,b, max_n, 10, 1, 100);
res_err = cat(2, res_err,errors);
surf(l', [2:2:max_n]', plots');


