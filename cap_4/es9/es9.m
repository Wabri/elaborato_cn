f1 = @(x,e,l) 5*x+ 2 +e*l;
f2 = @(x,e,l) 3*x^2 + 2*x +1 + e*l;
l=rand(1);
e= 0.1;
s= linspace(-1,1,10);
y1 = zeros(10,1);
y2 = zeros(10,1);

for i=1:10
    l=rand(1);
    y1(i) = f1(s(i),e,l);
    y2(i) = f2(s(i),e,l);

end

res1 = sovradet(s,y1',1);
res2 = sovradet(s,y2',2);