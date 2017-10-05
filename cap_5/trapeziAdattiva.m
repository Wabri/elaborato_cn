function [I] = trapeziAdattiva(f, a, b, tol, iterMax)
  h=b-a;
  m=(a+b)/2;
  I1=0.5*h*(feval(f,a)+feval(f,b)); % metodo dei trapezi
  I=0.5*(I1+h*feval(f,m)); % metodo dei trapezi composito su 2 intervalli
  if (iterMax>0)&&(abs(I-I1)/3>tol), I=trapeziAdattiva(f,a,m,tol/2,iterMax-1)+trapeziAdattiva(f,m,b,tol/2,iterMax-1); end
end