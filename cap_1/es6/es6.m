format longEng
format compact

conv=sqrt(2);
x=[2,1.5];
r=[x(1)-conv,x(2)-conv];

for i= 2:7
    x(i+1) = (x(i)*x(i-1)+2)/(x(i)+x(i-1))
end

for i=3:8
    r(i)=x(i)-conv;
end

x
r