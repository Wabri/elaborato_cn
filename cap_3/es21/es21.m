format shortE

x(1)=0;
x(2)=0;
imax=100;
tolx=0.0001;

F = @(x) [4*x(1)^3 + 2*x(1) + x(2); x(1)+2*(1+x(2))];
J = @(x) [12*x(1)^2+2,1 ; 1, 2];
    
[x] = nonLinearNewton(F, J, x, imax, tolx , 0);

disp ('Il minimo ottenuto e''');
disp (x);
disp ('F(x): ');
disp (x(1)^4+x(1)*(x(1)+x(2))+(1+x(2))^2);
