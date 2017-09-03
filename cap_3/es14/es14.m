format longEng
format compact

% 3.5 3.6
A=[15,-3,2;-4,9,2;6,0,10]
[L,U,P] = factLUP(A)
b = [3.2,2.3,3.1]';
[x] = linLUP(L,U,P,b)
r=A*x -b


% 3.11  3.12
A=[15,-3,2;-4,9,2;6,0,10]
[L,D] = factLDLT(A)
b = [3.2,2.3,3.1]';
[x] = linLUP(L,D*L',eye(3),b)
r=A*x -b
