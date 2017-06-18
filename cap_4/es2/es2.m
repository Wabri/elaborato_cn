Rungef = @(x) 1./(1.+x.^2);
a=-5; b=5;
res_err = zeros(4,10);
[errors, plots, l] = evaluate_poli(Rungef, a,b, 20, 10, 0, 100);
plots = cat(2,plots', Rungef(l)');
res_err(1,:) = max(abs(errors'))';
plot(l,plots');
lgd=legend('2','4','6','8','10','\infty');
title(lgd, 'Ascisse');
plot(l,errors')
lgd=legend('2','4','6','8','10');
title(lgd, 'Ascisse');
[errors, plots, l] = evaluate_poli(Rungef, a,b, 20, 10, 1, 100);
res_err(2,:) = max(abs(errors'))';
plots = cat(2,plots', Rungef(l)');
plot(l,plots');
lgd=legend('2','4','6','8','10','12','14','16','18','20','\infty');
title(lgd, 'Ascisse');
plot(l,errors')
lgd=legend('2','4','6','8','10','12','14','16','18','20');
title(lgd, 'Ascisse');

Sinf = inline('x.*sin(x)');
a=0; b=pi;
max_n = 20;
[errors, plots, l] = evaluate_poli(Sinf, a,b, max_n, 10, 0, 100);
res_err(3,:) = max(abs(errors'))';

plots = cat(2,plots', Sinf(l)');
lgd=legend('2','4','6','8','10','12','14','16','18','20','\infty');
title(lgd, 'Ascisse');
plot(l,plots');
plot(l,errors')
lgd=legend('2','4','6','8','10','12','14','16','18','20');
title(lgd, 'Ascisse');
[errors, plots, l] = evaluate_poli(Sinf, a,b, max_n, 10, 1, 100);
res_err(4,:) = max(abs(errors'))';

plots = cat(2,plots', Sinf(l)');
plot(l,plots');
lgd=legend('2','4','6','8','10','12','14','16','18','20','\infty');
title(lgd, 'Ascisse');
plot(l,errors')
lgd=legend('2','4','6','8','10','12','14','16','18','20');
title(lgd, 'Ascisse');

