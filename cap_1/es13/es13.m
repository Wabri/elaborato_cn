format long;

x=linspace(2/3,2,1001);
y= [];

for i = 1:1001
    y(i) = log(abs(3*(1-x(i))+1))/80 + x(i)^2 +1;
end

plot(x,y);
xlabel('x');
ylabel('f(x)');
disp ('valore interno al limite in x=4/3 : ');
disp (abs(3*(1-4/3)+1))
disp ('la funzione calcolata in 4/3 ha in output:');
disp(log(abs(3*(1-(4/3))+1))/80 + (4/3)^2 +1);