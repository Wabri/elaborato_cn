x_0 = 3;
alpha = 3;
disp('n=3');
n3 = NewtonSqrtN(3, alpha, x_0, 100, 10^(-8));
disp('n=4');
n4 = NewtonSqrtN(4, alpha, x_0, 100, 10^(-8));
disp('n=5');
n5 = NewtonSqrtN(5, alpha, x_0, 100, 10^(-8));