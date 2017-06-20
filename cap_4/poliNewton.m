function [pval] = poliNewton(xi, fi, xval)
  dd = diffDiv(xi, fi);
  pval = HornerGeneralizzato(xi,dd,xval);
end
