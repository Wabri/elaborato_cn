format long
x = [2,1.5];
y = [];
rad = sqrt(2)

for i = 2:15
   x(i+1) =  ((x(i)*x(i-1) +2)/(x(i) + x(i-1)));
end

for i=1:15
    y(i) = x(i) - rad;
end
