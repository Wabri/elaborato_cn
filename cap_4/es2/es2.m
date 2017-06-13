e = inline('abs(feval(f,x) - feval(p,x))');
maxn = 8;
equi = [];
cheb = [];


Rungef = @(x) 1./(1.+x.^2);
a=-5; b=5;
plots_equi = [];
plots_chebi = [];
for n=2:2:maxn
    ascisse = ascisseEquispaziate(a, b, n);
    RungeInt = poliNewton(ascisse, Rungef(ascisse));
    equi(n)  = e(Rungef, RungeInt, fminbnd(@(x)(-e(Rungef, RungeInt, x)), a, b));  
    l = linspace(a,b,100);
    plots_equi=  cat(2, plots_equi, RungeInt(l)');    
    
    chebi = chebyshev(a, b, n);
    RungeInt = poliNewton(chebi, Rungef(chebi));
    cheb(n) = e(Rungef, RungeInt, fminbnd(@(x)(-e(Rungef, RungeInt, x)), a, b));
    %plots_chebi=  cat(2, plots_chebi, RungeInt(l)');    
end
%result_runge = [[2,4,6,8,10,12,14,16,18,20]', equi', cheb'];
surf(l', [2:2:maxn]',plots_equi');
s
Sinf = inline('x.*sin(x)');
a=0; b=pi;
for n=2:2:maxn
    ascisse = ascisseEquispaziate(a, b, n);
    SinInt = poliNewton(ascisse, Sinf(ascisse));
    equi(n)  = e(Sinf, SinInt, fminbnd(@(x)(-e(Sinf, SinInt, x)), a, b));
    chebi = chebyshev(a, b, n);
    SinInt = poliNewton(chebi, Sinf(chebi));
    cheb(n) = e(Sinf, SinInt, fminbnd(@(x)(-e(Sinf, SinInt, x)), a, b));
    %l = linspace(a,b,100);
    %plots=  cat(2, plots, SinInt(l)');    
end
%result_sin = [(1:maxn)', equi', cheb'];
