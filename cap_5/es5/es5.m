A = [-4,2,1;1,6,2;1,-2,5];
b = [1,2,3]';
x0=[0;0;0];

[resJ,iterJ] = jacobi(A,b,x0,10^(-3),25);
disp('jacobi:');
disp(resJ);
disp('con iterazioni');
disp(iterJ);

[resG, iterG] = gaussSeidel(A,b,x0,10^(-3),25);
disp('gaussSeidel:');
disp(resG);
disp('con iterazioni');
disp(iterG);