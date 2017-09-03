function [In,pt] = simpsonAda(f, a, b, tol)
  pt=5
  h = (b-a)/6;
  m = (a+b)/2;
  m1 = (a+m)/2;
  m2 = (m+b)/2;
  In1 = h*(feval(f, a) + 4*feval(f, m) + feval(f, b));
  In = In1/2 + h*(2*feval(f, m1) + 2*feval(f, m2) - feval(f, m));
  err = abs(In-In1)/15;
  if err>tol
    [intSx, ptSx] = simpsonAdattativaRicorsiva(f, a, m, tol/2, 1);
    [intDx, ptDx] = simpsonAdattativaRicorsiva(f, m, b, tol/2, 1);
    In = intSx+intDx;
    pt = pt+ptSx+ptDx;
  end
end
