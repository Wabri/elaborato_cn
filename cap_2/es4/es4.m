funct = @(x) (x-pi)^10;
dfunct = @(x) 10*(x-pi)^9;
disp('metodo newton funct 1');
N11 = Newton(funct, dfunct, 5, 50 ,10^(-1))
N12 = Newton(funct, dfunct, 5, 50 ,10^(-2))
N13 = Newton(funct, dfunct, 5, 50 ,10^(-3))
N14 = Newton(funct, dfunct, 5, 50 ,10^(-4))
N15 = Newton(funct, dfunct, 5, 50 ,10^(-5))
N16 = Newton(funct, dfunct, 5, 50 ,10^(-6))
N17 = Newton(funct, dfunct, 5, 50 ,10^(-7))
N18 = Newton(funct, dfunct, 5, 50 ,10^(-8))
disp('newton modificato funct 1');
NM11 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-1))
NM12 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-2))
NM13 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-3))
NM14 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-4))
NM15 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-5))
NM16 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-6))
NM17 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-7))
NM18 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-8))
disp('aitken funct 1');
A11 = Aitken(funct, dfunct, 5, 50, 10^(-1))
A12 = Aitken(funct, dfunct, 5, 50, 10^(-2))
A13 = Aitken(funct, dfunct, 5, 50, 10^(-3))
A14 = Aitken(funct, dfunct, 5, 50, 10^(-4))
funct = @(x) ((x-pi)^10)*(exp(1)^(2*x));
dfunct = @(x) (5+x-pi)*(x-pi)^9*2*exp(1)^(2*x);
disp('metodo newton funct 2');
N21 = Newton(funct, dfunct, 5, 50 ,10^(-1))
N22 = Newton(funct, dfunct, 5, 50 ,10^(-2))
N23 = Newton(funct, dfunct, 5, 50 ,10^(-3))
N24 = Newton(funct, dfunct, 5, 50 ,10^(-4))
N25 = Newton(funct, dfunct, 5, 50 ,10^(-5))
N26 = Newton(funct, dfunct, 5, 50 ,10^(-6))
N27 = Newton(funct, dfunct, 5, 50 ,10^(-7))
N28 = Newton(funct, dfunct, 5, 50 ,10^(-8))
disp('newton modificato funct 2');
NM21 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-1))
NM22 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-2))
NM23 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-3))
NM24 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-4))
NM25 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-5))
NM26 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-6))
NM27 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-7))
NM28 = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-8))
disp('aitken funct 2');
A21 = Aitken(funct, dfunct, 5, 50, 10^(-1))
A22 = Aitken(funct, dfunct, 5, 50, 10^(-2))
A23 = Aitken(funct, dfunct, 5, 50, 10^(-3))
A24 = Aitken(funct, dfunct, 5, 50, 10^(-4))