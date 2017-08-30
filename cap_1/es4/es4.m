format long e;

h=zeros(12,1);
f=zeros(12,1);

for i=1:12
    h(i)= power(10,-i);
end

for j=1:12
    f(j)=lim(0,v(j));
end

f

function p=lim(x,y)
    p=(exp(x+y) - exp(x))/y;
end