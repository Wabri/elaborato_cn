function [x,nit]=corde(f,m,x0,tolx,maxit)
% Metodo delle corde, per la risoluzione di f(x)=0
%
%   [x,i,tolf]=CORDE(x0,m,f,tolx,nmax)
%
%   I parametri della funzione sono:
%       x0 -> il punto iniziale
%       m -> il coefficiente angolare che verrà mantenuto costante durante
%            tutto l'algoritmo
%       f -> funzione di cui valutare uno zero
%       tolx -> tolleranza per la radice
%       nmax -> limite superiore al numero di iterazioni
%
%   I valori di ritorno sono:
%       x -> la soluzione trovata
%       i -> il numero di iterazioni impiegate per ottenere la soluzione
%       tolf -> la tolleranza sulla funzione
%
%   See Also NEWTON, SECANTI, STEFFENSEN
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
  x,nit
end