function x = SecSqrt(x0,alpha,imax,tol)
   x1 = NewtonSqrt(alpha,x0,1,0.00000001);
   x = [x0,x1,(alpha+x1*x0)/(x1+x0)];
   i = 3;
   while(i < imax) && (abs(x(i)-x(i-1))>tol)
       x(i+1) = (alpha + x(i)*x(i-1))/(x(i)+x(i-1));
       disp(x(i+1));
       i = i+1;
   end
   y = x(i);
end

