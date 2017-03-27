% 3.5
A=[0,-3,8;-1,8,7;1,3,0]
[A,p] = LUP(A)
% 3.6
b = [3.1416,1.1618,2.7183];
[x] = solveLinearLUP(A,p,b)
% 3.11
A=[14,5,2;-5,8,1;2,1,4]
[LDL] = fattorizzaLDLt(A)
% 3.12
[x] = solveLinearLDL(LDL,b)

