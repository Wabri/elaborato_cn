Rungef = @(x) 1./(1.+x.^2);
a=-5; b=5;
max_n = 20;
n_steps = 5;
[plots, l] = evaluate_spline(Rungef,a,b, max_n, n_steps, 0, 1000);
hold on;
grid on;
plot(l, plots);
hold off
[plots2, l] = evaluate_spline(Rungef,a,b, max_n, n_steps, 1, 1000);
hold on;
grid on;
plot(l, plots2);
hold off

error = plots' - plots2';
boxplot(error(:,1:5), 4:4:max_n);

Sinf = @(x) x.*sin(x);
a=0; b=pi;
[plots, l] = evaluate_spline(Sinf,a,b, max_n, n_steps, 0, 1000);
hold on;
grid on;
plot(l, plots);
hold off

[plots2, l] = evaluate_spline(Sinf,a,b, max_n, n_steps, 1, 1000);
hold on;
grid on;
plot(l, plots2);
hold off
error = plots' - plots2';

boxplot(error(:,1:5), 4:4:max_n);

