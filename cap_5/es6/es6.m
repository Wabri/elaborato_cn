H = [0,0,0,0,0;1,0,1,0,0;1,1,0,0,0;0,1,0,0,0;0,1,0,0,0];
p=0.85;

[n,m] = size(H);
if(n~=m), error('Matrice non quadrata'); end
s = sum(H);
S=zeros(n,n);
for i=1:n
    if s(i)~=0, S(:,i)=H(:,i)/s(i);
    else, S(:,i)=(1/n); end
end
A = eye(n) - p*S;
b = ((1-p)/n).*ones(n,1);
tols = logspace(-1,-10,10);
iters = zeros(10,3);

for i=1:10
    v=zeros(n,4);
    [v(:,1),iters(i,1)]=PotenzePR(S,p,tols(i));
    [v(:,2),iters(i,2)]=jacobi(A,b,ones(n,1), tols(i), 10000);
    [v(:,3),iters(i,3)]=gaussSeidel(A,b,ones(n,1), tols(i), 10000);
end

plot(iters);
legend('Potenze','Jacobi','Gauss-Seidel');
xlabel('i (con tol = 10^{-i})');
ylabel('iterazioni');

