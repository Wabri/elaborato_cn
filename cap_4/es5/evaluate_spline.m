function [plots, value_space] = evaluate_spline(funct, a, b, max_n, n_steps, nak, plot_steps)
    value_space = linspace(a,b,plot_steps);
    plots = zeros(n_steps+1,plot_steps);
    ste = linspace(4,max_n,n_steps);
    for i=1:n_steps
       l = linspace(a,b,ste(i));
       if nak
           plots(i,:) = fnval(csapi(l,funct(l)), value_space);
       else
           plots(i,:) = valuta(l,splineNat(l, funct(l)),value_space)';
       end
    end
    plots(n_steps+1,:) = funct(value_space);
end
