format shortE
v = [1,1,1,1,1,1,1,1,1];
A = (diag(v*(-100),-1)+eye(10))
disp('Il numero di condizionamento k senza la function cond e'':');
disp('con norma infinito');
normAinf = norm(A,inf);
normAIinf = norm(inv(A),inf);
kinf = normAinf*normAIinf
disp('con norma 1');
normA1 = norm(A,1);
normAI1 = norm(inv(A),1);
k1 = normA1*normAI1
disp('Il numero di condizionamento k con la funzione cond e'':');
disp('con norma infinito');
cond(A,inf)
disp('con norma 1');
cond(A,1)