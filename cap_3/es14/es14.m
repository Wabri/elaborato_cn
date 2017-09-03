format short 
format compact

% 3.5 3.6
A=[0,-3,8;-1,8,7;1,3,0]
[L,U,P] = factLUP(A)
b = [3.1416,1.1618,2.7183]';
[x] = linLUP(L,U,P,b)
r=A*x -b


% 3.11  3.12
A=[14,5,2;5,8,1;2,1,4]
b = [3.1416,1.1618,2.7183]';
[L,D] = factLDLT(A)
[x] = linLUP(L,D*L',eye(3),b)
r=A*x -b
