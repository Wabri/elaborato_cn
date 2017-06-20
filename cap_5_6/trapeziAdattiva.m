function [In, pt] = trapeziAda(f, a, b, tol, pt)
  h = (b-a)/2;
  m = (b+a)/2;
  In1 = h*(feval(f, a) + feval(f, b));
  In = In1/2 + h*feval(f, m);
  err = abs(In - In1)/3;
  if err>tol
    [intSx, ptSx] = trapeziAdattativaRicorsiva(f, a, m, tol/2, 1);
    [intDx, ptDx] = trapeziAdattativaRicorsiva(f, m, b, tol/2, 1);
    In = intSx + intDx;
    pt = pt+ptSx+ptDx;
  end
end
