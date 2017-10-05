function [I] = simpsonAdattiva(f, a, b, tol,iterMax)
  h=b-a;
  m=(a+b)/2;
  I2 = h*(f(a)+4*feval(f,m)+f(b))/6; % metodo di simpson
  I = (I2+h*feval(f,m))/6;  % metodo di simpson composito su 2 intervalli
  if (iterMax>0)&&(abs(I-I2)/15)>tol, I = simpsonAdattiva(f,a,m,tol/2, iterMax-1)+simpsonAdattiva(f,m,b,tol/2, iterMax-1); end
end