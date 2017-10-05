% funct -> funzione da interpolare
% a,b -> intervallo di interpolazione
% maxn -> limite massimo del grado di interpolazione della funzione
% n_steps -> numero di polinomi interpolanti da calcolare
% cheb_asc -> = 1 ascisse calcolate con chebyshev | = 0 ascisse calcolate
% con ascisse equispaziate
% plot_steps -> numero di nodi
function [errors, plots, l] = evaluatePoli(funct, a, b, maxn, n_steps, cheb_asc, plot_steps)
    errors = zeros(n_steps,plot_steps);
    plots = zeros(n_steps,plot_steps);
    l = linspace(a,b,plot_steps);
    steps = linspace(2, maxn, n_steps);
    for i=1:n_steps
        if cheb_asc == 0
            ascisse = eqAscisse(a, b, steps(i));
        elseif cheb_asc == 1
            ascisse = cheby(a, b, steps(i));
        end
        
        fInt = newtonHor(ascisse, funct(ascisse), l);
        errors(i,:) = funct(l)-fInt;
        plots(i,:) = fInt;
    end
end