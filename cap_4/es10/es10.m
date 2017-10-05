f1 = @(x,e,l) 5*x+ 2 +e*l;
e= 0.1;
s= linspace(-1,1,10);
yi = zeros(10,1);
yd = zeros(10,1);
m=1;

% calcolo dei valori di y variabile indipendente
for i=1:10
    yi(i) = f1(s(i),e,rand(1));
end

a = polBetter(s,yi',m);
% calcolo dei valori di y variabile dipendente
for i=1:10  
    for k=1:m+1
        yd(i) = yd(i) + a(k)*s(i)^(k-1);
    end
end

y = cat(2,yi,yd);
plot(s,y)