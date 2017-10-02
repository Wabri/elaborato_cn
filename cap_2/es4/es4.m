funct = @(x) (x-pi)^10;
dfunct = @(x) 10*(x-pi)^9;

disp('metodo newton funct 1');
for i=0:5
    N1(i+1) = Newton(funct, dfunct, 5, 50, 10^(-i));
end

disp('newton modificato funct 1');
for i =0:5
    NM1(i+1) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-i));
end

disp('aitken funct 1');
for i = 0:5
    A1(i+1) = Aitken(funct, dfunct, 5, 50, 10^(-i));
end


funct = @(x) ((x-pi)^10)*(exp(1)^(2*x));
dfunct = @(x) (5+x-pi)*(x-pi)^9*2*exp(1)^(2*x);

disp('metodo newton funct 2');
for i=0:5
    N2(i+1) = Newton(funct, dfunct, 5, 50 ,10^(-i));
end

disp('newton modificato funct 2');
for i=0:5
    NM2(i+1) = NewtonMod(funct, dfunct, 1, 5, 50, 10^(-i));
end

disp('aitken funct 2');
for i=0:5
    A2(i+1) = Aitken(funct, dfunct, 5, 50, 10^(-i));
end