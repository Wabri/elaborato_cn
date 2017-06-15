format short

x(1)=1;
x(2)=1;
imax=1000;
tolx=0.1;

F= @(x) [4*x(1)^3+2* x(1)+ x(2); x(1)+2*x(2)-2];

i=0;
xold(1) = 0;
xold(2) = 0;
while (i< imax )&&( norm (x-xold )> tolx )
  i=i+1;
  xold =x;
  J =[12*x(1)^2+2, 1; 1, 2];
  [L,U,P] = LUP(J);
  x=x+solveLinearLUP(L,U, P, -feval(F,x));
end
disp ('Minimo : '), disp (x)
disp ('F(x): '), disp (x(1)^4+ x(1)*( x(1)+ x(2))+(1-x(2))^2)
