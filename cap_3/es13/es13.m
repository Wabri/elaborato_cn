format short
disp('matrice A1');
A1 = [1,1,1,1;1,2,2,2;1,2,3,3;1,2,3,4]
[L1,D1] = factLDLT(A1)
disp('matrice A2');
A2 = [1,1,1,1;1,2,2,2;1,2,3,3;1,2,3,2]
[L2,D2] = factLDLT(A2)