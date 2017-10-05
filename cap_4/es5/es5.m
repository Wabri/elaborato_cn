fx = @(x) 1./(1.+x.^2);
xval = linspace(-5, 5);

temp = [];
temp2 = [];

temp = cat(2,temp,fx(xval));

for i = 4: 4: 20
    x = linspace(-5, 5, i);
    f = fx(x);

    M = moment(f, x);

    s = svalCubica(f, x, M, xval);

    ss = spline(x, f);
    ssval = ppval(ss, xval);

    temp = cat(1,temp,s);
    temp2 = cat(1, temp2, ssval);
end

figure(1);
plot(xval,cat(1,temp(1:2:4,:),temp2(2:2:3,:)));
legend('f(x)','spline cubica','not-a-knot');

fx = @(x) x.*sin(x);
xval = linspace(0, pi);

temp = [];
temp2 = [];

temp = cat(2,temp,fx(xval));

for i = 4: 4: 20
    x = linspace(-5, 5, i);
    f = fx(x);

    M = moment(f, x);

    s = svalCubica(f, x, M, xval);
    
    ss = spline(x, f);
    ssval = ppval(ss, xval);

    temp = cat(1,temp,s);

    temp2 = cat(1, temp2, ssval);

end

figure(2);
plot(xval,cat(1,temp(1:2:4,:),temp2(2:2:3,:)));
legend('f(x)','spline cubica','not-a-knot');