N1 = [0];
NM1 = [0];
A1 = [0];

funct = @(x) (x-pi)^10;
dfunct = @(x) 10*(x-pi)^9;
disp('metodo newton funct 1');
N1(1) = Newton(funct, dfunct, 5, 50 ,10^(0));
N1(2) = Newton(funct, dfunct, 5, 50 ,10^(-1));
N1(3) = Newton(funct, dfunct, 5, 50 ,10^(-2));
N1(4) = Newton(funct, dfunct, 5, 50 ,10^(-3));
N1(5) = Newton(funct, dfunct, 5, 50 ,10^(-4));
N1(6) = Newton(funct, dfunct, 5, 50 ,10^(-5));
disp('newton modificato funct 1');
NM1(1) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(0));
NM1(2) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-1));
NM1(3) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-2));
NM1(4) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-3));
NM1(5) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-4));
NM1(6) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-5));
disp('aitken funct 1');
A1(1) = Aitken(funct, dfunct, 5, 50, 10^(0));
A1(2) = Aitken(funct, dfunct, 5, 50, 10^(-1));
A1(3) = Aitken(funct, dfunct, 5, 50, 10^(-2));
A1(4) = Aitken(funct, dfunct, 5, 50, 10^(-3));
A1(5) = Aitken(funct, dfunct, 5, 50, 10^(-4));
A1(6) = Aitken(funct, dfunct, 5, 50, 10^(-5));

N2 = [0];
NM2 = [0];
A2 = [0];

funct = @(x) ((x-pi)^10)*(exp(1)^(2*x));
dfunct = @(x) (5+x-pi)*(x-pi)^9*2*exp(1)^(2*x);
disp('metodo newton funct 2');
N2(1) = Newton(funct, dfunct, 5, 50 ,10^(0));
N2(2) = Newton(funct, dfunct, 5, 50 ,10^(-1));
N2(3) = Newton(funct, dfunct, 5, 50 ,10^(-2));
N2(4) = Newton(funct, dfunct, 5, 50 ,10^(-3));
N2(5) = Newton(funct, dfunct, 5, 50 ,10^(-4));
N2(6) = Newton(funct, dfunct, 5, 50 ,10^(-5));
disp('newton modificato funct 2');
NM2(1) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(0));
NM2(2) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-1));
NM2(3) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-2));
NM2(4) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-3));
NM2(5) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-4));
NM2(6) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-5));
disp('aitken funct 2');
A2(1) = Aitken(funct, dfunct, 5, 50, 10^(0));
A2(2) = Aitken(funct, dfunct, 5, 50, 10^(-1));
A2(3) = Aitken(funct, dfunct, 5, 50, 10^(-2));
A2(4) = Aitken(funct, dfunct, 5, 50, 10^(-3));
A2(5) = Aitken(funct, dfunct, 5, 50, 10^(-4));
A2(6) = Aitken(funct, dfunct, 5, 50, 10^(-5));

format long

N1
NM1
A1
N2
NM2
A2