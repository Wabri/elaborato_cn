function [errors, plots, l] = evaluate_poli(funct, a, b, maxn, n_steps, cheb_asc, plot_steps)
    e = inline('abs(feval(f,x) - feval(p,x))');
    Rungef = @(x) 1./(1.+x.^2);
    a=-5; b=5;
    errors = [];
    plots = [];
    steps = linspace(2, maxn, n_steps);
    l = linspace(a,b,plot_steps);
    for n=1:n_steps
        if cheb_asc == 0
            ascisse = ascisseEquispaziate(a, b, steps(n));
        elseif cheb_asc == 1
            ascisse = chebyshev(a, b, steps(n));
        end
        fInt = poliNewton(ascisse, funct(ascisse));
        errors(n)  = e(funct, fInt, fminbnd(@(x)(-e(funct, fInt, x)), a, b));
        plots =  cat(2, plots, fInt(l)');    
    
    end
end
