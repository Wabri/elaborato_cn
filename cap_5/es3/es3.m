f = @(x) x*exp(-x)*cos(2*x);

[I] = trapeziAdattiva(f,0,2*pi,10^(-5),10);
disp('Formulazione adattiva con metodo dei trapezi:');
disp(I);

[I] = simpsonAdattiva(f,0,2*pi,10^(-3),10);
disp('Formulazione adattiva con metodo di Simpson');
disp(I);

