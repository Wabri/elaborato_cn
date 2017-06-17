f = @(x) x*exp(-x)*cos(2*x);

[In,px] = simpsonAdattiva(f,0,2*pi,10^-5);

disp(In);
disp(px);

[In,px] = trapeziAdattiva(f,0,2*pi,10^-5);

disp(In);
disp(px);