format short

x(1)=1;
x(2)=1;
imax=1000;
tolx=0.0001;

F= @(x) [x(2) - cos(x(1)); x(1)*x(2)-1/2];
J = @(x) [sin(x(1)),1 ; x(2), x(1)];
    
[x] = NewtonNL(F, J, x, imax, tolx , 1);


disp ('Radice di F : '), disp (x)
disp ('F(x): '), disp ([x(2) - cos(x(1)), x(1)*x(2)-1/2]);
