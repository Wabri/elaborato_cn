%Definire una procedura iterativa basata sul metodo di Newton per
%determinare sqrt(alpha)

x_0 = 3;
alpha = x_0;

z3 = NewtonNSqrt(3, alpha, x_0, 200, 0.0001);
z4 = NewtonNSqrt(4, alpha, x_0, 200, 0.0001);
z5 = NewtonNSqrt(5, alpha, x_0, 200, 0.0001);
