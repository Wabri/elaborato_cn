A = [-4,2,1;1,6,2;1,-2,5];
b = [1,2,3]';
x0 = 0;
x = gaussSeidel(A,b,x0,1.e-3);
y = jacobi(A,b,x0,1.e-3);