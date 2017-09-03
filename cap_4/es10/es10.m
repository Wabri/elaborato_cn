f1 = @(x,e,l) 5*x+ 2 +e*l;
l=rand(1);
e= 0.1;
s= linspace(-1,1,10);
y1 = zeros(10,1);
y = zeros(2,10);
for i=1:10
    l=rand(1);
    y1(i) = f1(s(i),e,l);
end

fit = sisSov(s, y1',1);
y(1,:)=polyval(fit, s);

invfit = sisSov(y1',s,1);
y(2,:)=polyval(invfit',y1);
plot(y1',y);