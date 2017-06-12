mf = @(x) (x-pi)^10;
dmf = @(x) 10*(x-pi)^9;
y1 = NewtonMod(mf, dmf, 1, 3, 50, 0.5, 0);
y2 = NewtonMod(mf, dmf, 10, 3, 50, 0.5, 0);
y3 = Aitken(mf, dmf, 3, 50, 0.5);


mf2 = @(x) ((x-pi)^10)*(exp(1)^(2*x));
dmf2 = @(x) (5+x-pi)*(x-pi)^9*2*exp(1)^(2*x);

y21 = NewtonMod(mf2, dmf2, 1, 3, 50, 0.5, 0);
y22 = NewtonMod(mf2, dmf2, 10, 3, 50, 0.5, 0);
y23 = Aitken(mf2, dmf2, 3, 50, 0.5);
