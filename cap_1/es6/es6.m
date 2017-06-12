format long

x = [2,1.5];
y = [];
rad = sqrt(2);

for i = 2:10
   x(i+1) =  ((x(i)*x(i-1) +2)/(x(i) + x(i-1)));
end

for i=1:10
    y(i) = x(i) - rad;
end


i = [1:10];
semilogy(i,y(i));