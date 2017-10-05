f1 = @(x,e,g) 5*x+ 2 +e*g;
f2 = @(x,e,g) 3*x^2 + 2*x +1 + e*g;
e= [0.1,0.2];
s= linspace(-1,1,10);
y1 = zeros(10,2);
y2 = zeros(10,2);

for j=1:2 
for i=1:10
    y1(i,j) = f1(s(i),e(j),rand(1));
    y2(i,j) = f2(s(i),e(j),rand(1));
end
end

format shortE

disp('I coefficienti relativi al primo test con e=0.1');
res1(:,1) = polBetter(s,y1(:,1)',1);
disp(res1(:,1))
disp('I coefficienti relativi al primo test con e=0.2');
res1(:,2) = polBetter(s,y1(:,2)',1);
disp(res1(:,2))
disp('I coefficienti relativi al secondo test con e=0.1');
res2(:,1) = polBetter(s,y2(:,1)',2);
disp(res2(:,1))
disp('I coefficienti relativi al secondo test con e=0.2');
res2(:,2) = polBetter(s,y2(:,2)',2);
disp(res2(:,2))