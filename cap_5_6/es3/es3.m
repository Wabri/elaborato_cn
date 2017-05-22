%	ATTENZIONE !!!
%	NON TESTATO
%	DVX NOBIS

f = inline (' x*exp(-x)*cos(2x) ');

[In,px] = simpsonAdattiva(f,0,2*pi,e-5);

disp(In);
disp(px);

[In,px] = trapeziAdattiva(f,0,2*pi,e-5);

disp(In);
disp(px);