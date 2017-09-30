v = [1,1,1,1,1,1,1,1,1];
A = (diag(v*(-100),-1)+eye(10));
b = [1 ,-99*ones(1,9)]';
c = 0.1*[1,-99*ones(1,9)]';

x = ones(10,1);
y = 0.1*x;

format shortE

rx = A*x -b
ry = A*y -c

x(1)=b(1);
for i=2:10
    x(i)=b(i)+100*x(i-1);
end
x=x(:)

y(1)=c(1);
for i=2:10
    y(i)=c(i)+100*y(i-1);
end
y=y(:)

rx = A*x -b
ry = A*y -c