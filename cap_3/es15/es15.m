v = [1,1,1,1,1,1,1,1,1];
A = (diag(v*(-100),-1)+eye(10));

norm(A,1)
norm(A,inf)

cond(A,1)