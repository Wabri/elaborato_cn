%% DA ESEGUIRE, NON TESTATO

A = [3,2,1;1,2,3;1,2,1;2,1,2]

b = [6;6;4;4]

x = solveQR(A,b)

r = A*x-b

disp("Norma di r : "), norm(r,2)^2