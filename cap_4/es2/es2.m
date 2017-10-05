format longE

f1 = @(x) 1./(1.+x.^2);
a=-5;
b=5;
ferrors1 = zeros(2,10);
[errorsA1, plotsA1, l1] = evaluatePoli(f1,a,b,20,10,0,100);
[errorsC1, plotsC1] = evaluatePoli(f1,a,b,20,10,1,100);
disp('errori con ascisse equidistanti');
ferrors1(1,:) = max(abs(errorsA1'))';
disp(ferrors1(1,:));
disp('errori con ascisse di chebyshev');
ferrors1(2,:) = max(abs(errorsC1'))';
disp(ferrors1(2,:));

n_p = 5;

plotting1 = cat(2,plotsA1(n_p,:)',plotsC1(n_p,:)');
plotting1 = cat(2,plotting1,f1(l1)');

figure(1);
plot(l1,plotting1');

n_p = 3;

plotting1 = cat(2,plotsA1(n_p,:)',plotsC1(n_p,:)');
plotting1 = cat(2,plotting1,f1(l1)');

figure(4);
plot(l1,plotting1');

f2 = @(x) x.*sin(x);
a=0;
b=pi;
ferrors2 = zeros(2,10);
[errorsA2, plotsA2, l2] = evaluatePoli(f2,a,b,20,10,0,100);
[errorsC2, plotsC2] = evaluatePoli(f2,a,b,20,10,1,100);
disp('errori con ascisse equidistanti');
ferrors2(1,:) = max(abs(errorsA2'))';
disp(ferrors2(1,:));
disp('errori con ascisse di chebyshev');
ferrors2(2,:) = max(abs(errorsC2'))';
disp(ferrors2(2,:));

n_p = 1;

plotting2 = cat(2,plotsA2(n_p,:)',plotsC2(n_p,:)');
plotting2 = cat(2,plotting2,f2(l2)');
figure(2);
plot(l2,plotting2');

n_p = 2;

plotting2 = cat(2,plotsA2(n_p,:)',plotsC2(n_p,:)');
plotting2 = cat(2,plotting2,f2(l2)');
figure(3);
plot(l2,plotting2');