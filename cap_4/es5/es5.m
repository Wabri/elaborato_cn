Rungef = @(x) 1./(1.+x.^2);
a=-5; b=5;
max_n = 20;
n_steps = 10;
[plots, l] = evaluate_spline(Rungef,a,b, max_n, n_steps, 0, 50);
plot(l, plots);

[plots2, l] = evaluate_spline(Rungef,a,b, max_n, n_steps, 1, 50);
plot(l, plots2);

error = plots' - plots2';

Sinf = inline('x.*sin(x)');
a=0; b=pi;
[plots, l] = evaluate_spline(Sinf,a,b, max_n, n_steps, 0, 50);
plot(l, plots);


[plots2, l] = evaluate_spline(Sinf,a,b, max_n, n_steps, 1, 50);
plot(l, plots2);
error = plots' - plots2';

boxplot(error(:,1:9), 4:2:max_n);
