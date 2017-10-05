format shortE

% 3.5 3.6
disp('Vettore residuo con fattorizzazione LU con pivoting parziale:');
A=[0,-3,8;-1,8,7;1,3,0];
[L,U,P] = factLUP(A);
b = [3.1416,1.1618,2.7183]';
[x] = linLUP(L,U,P,b);
r=A*x -b

% 3.11  3.12
disp('Vettore residuo con fattorizzazione LDLT:');
A=[14,5,2;5,8,1;2,1,4];
[L,D] = factLDLT(A);
b = [3.1416,1.1618,2.7183]';
[x] = linLDLT(L,D,b);
r=A*x -b