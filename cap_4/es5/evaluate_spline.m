function [plots, value_space] = evaluate_spline(funct, a, b, max_n, n_steps, nak, plot_steps)
    value_space = linspace(a,b,plot_steps);
    plots = zeros(n_steps,plot_steps);
    ste = linspace(4,max_n,n_steps);
    parfor i=1:n_steps
       l = linspace(a,b,ste(i));
       s = splineCubica(l, funct(l));
       if nak
           plots(i,:) = spline(l,funct(l),value_space);
       else
           plots(i,:) = valutaSpline(l,s,value_space)';
       end
    end
    plots(n_steps,:) = funct(value_space);

end
