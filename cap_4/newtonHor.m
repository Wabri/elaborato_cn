function [pval] = newtonHor(xi, fi, xval)
  dd = diffDiv(xi, fi);
  pval = hornerGen(xi,dd,xval);
end