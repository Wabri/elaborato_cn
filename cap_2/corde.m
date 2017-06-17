function [x,nit]=corde(f,m,x0,tolx,maxit)
  nit=0;
  err=tolx+1;
  x=x0;
  while (nit<maxit && err>tolx)
      fx=feval(f,x);
      tolf=tolx*abs(m);
      if abs(fx)<=tolf
         break
      end
      x1=x-fx/m;
      err=abs(x1-x);
      x=x1;
      nit=nit+1;
  end
end