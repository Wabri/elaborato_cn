format short

x(1)=1;
x(2)=1;
imax=1000;
tolx=0.1;

F= @(x) [4*x(1)^3+2* x(1)+ x(2); x(1)+2*x(2)-2];
J = @(x) [12*x(1)^2+2, 1; 1, 2];

[x] = NewtonNL(F, J, x, imax, tolx, 0);

disp ('Minimo : '), disp (x)
disp ('F(x): '), disp (x(1)^4+ x(1)*( x(1)+ x(2))+(1-x(2))^2)
