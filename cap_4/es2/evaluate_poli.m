function [errors, plots, l] = evaluate_poli(funct, a, b, maxn, n_steps, cheb_asc, plot_steps)
    errors = zeros(n_steps,plot_steps);
    plots = zeros(n_steps,plot_steps);
    l = linspace(a,b,plot_steps);
    steps = linspace(2, maxn, n_steps);
    for i=1:n_steps
        if cheb_asc == 0
            ascisse = ascisseEquispaziate(a, b, steps(i));
        elseif cheb_asc == 1
            ascisse = chebyshev(a, b, steps(i));
        end
        
        fInt = poliNewton(ascisse, funct(ascisse), l);
        errors(i,:) = abs(fInt-funct(l));
        plots(i,:) = fInt;
    end
end
