f = @(x) x*exp(-x)*cos(2*x);

[In,px] = simpsonAda(f,0,2*pi,10^-5, 5);

disp(In);
disp(px);

[In,px] = trapeziAda(f,0,2*pi,10^-5,3);

disp(In);
disp(px);
