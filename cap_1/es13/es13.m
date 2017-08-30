format long;

x=linspace(2/3,2,1001);
y= [];

for i = 1:1001
    y(i) = log(abs(3*(1-x(i))+1))/80 + x(i)^2 +1;
end

plot(x,y);
disp (abs(3*(1-4/3)+1))