funct = @(x) (x-pi)^10;
dfunct = @(x) 10*(x-pi)^9;
disp('newton modificato funct 1');
NM11 = NewtonMod(funct, dfunct, 1, 3, 50, 1, 0)
NM12 = NewtonMod(funct, dfunct, 1, 3, 50, 0.1, 0)
NM13 = NewtonMod(funct, dfunct, 1, 3, 50, 0.01, 0)
NM14 = NewtonMod(funct, dfunct, 1, 3, 50, 0.001, 0)
NM15 = NewtonMod(funct, dfunct, 1, 3, 50, 0.0001, 0)
NM16 = NewtonMod(funct, dfunct, 1, 3, 50, 0.00001, 0)
NM17 = NewtonMod(funct, dfunct, 1, 3, 50, 0.000001, 0)
disp('aitken funct 1');
A11 = Aitken(funct, dfunct, 3, 50, 1)
A12 = Aitken(funct, dfunct, 3, 50, 0.1)
A13 = Aitken(funct, dfunct, 3, 50, 0.01)
funct2 = @(x) ((x-pi)^10)*(exp(1)^(2*x));
dfunct2 = @(x) (5+x-pi)*(x-pi)^9*2*exp(1)^(2*x);
disp('newton modificato funct 2');
NM21 = NewtonMod(funct2, dfunct2, 1, 3, 50, 1, 0)
NM22 = NewtonMod(funct2, dfunct2, 1, 3, 50, 0.1, 0)
NM23 = NewtonMod(funct2, dfunct2, 1, 3, 50, 0.01, 0)
NM24 = NewtonMod(funct2, dfunct2, 1, 3, 50, 0.001, 0)
NM25 = NewtonMod(funct2, dfunct2, 1, 3, 50, 0.0001, 0)
NM26 = NewtonMod(funct2, dfunct2, 1, 3, 50, 0.00001, 0)
NM27 = NewtonMod(funct2, dfunct2, 1, 3, 50, 0.000001, 0)
disp('aitken funct 2');
A21 = Aitken(funct2, dfunct2, 3, 50, 1)
A22 = Aitken(funct2, dfunct2, 3, 50, 0.1)
A23 = Aitken(funct2, dfunct2, 3, 50, 0.01)