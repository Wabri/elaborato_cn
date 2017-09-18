format longEng

conv=sqrt(2);
x=[2,1.5];
r=[x(1)-conv,x(2)-conv];

for i= 2:6
    x(i+1) = (x(i)*x(i-1)+2)/(x(i)+x(i-1));
end

for i=3:7
    r(i)=x(i)-conv;
end

x
r