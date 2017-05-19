% p = hornerGeneralizzato(x, f, xval)
% Algoritmo di Horner generalizzato che valuta un polinomio in forma di
% Newton su un vettore di punti.
%
% Input:
% −x: vettore contenente le ascisse di interpolazione;
% −f: vettore contenente le differenze divise;
% −xval: vettore di punti sui quali valutare il polinomio.
% Output:
% −pval: vettore contenente le valutazioni del polinomio sui punti in xval.

function [p] = hornerGeneralizzato(x, f, xval)
    n = length(x)−1;
    p = zeros(length(xval), 1);
    for i=1:length(xval)
	pval(i) = f(n+1);
	for k=n:−1:1
	    pval = pval*(xval(i)−x(k)) +f(k);
	end
    end
endf