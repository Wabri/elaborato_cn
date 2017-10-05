format longE

f = @(x) x*exp(-x)*cos(2*x);
I = (-10*pi*exp(-2*pi)+3*(exp(-2*pi)-1))/25;
kmax = 8;
error = zeros(kmax,2);
rap = zeros(kmax-1,2);

for k=1:kmax
    trap(k) = trapeziComposita(f,0,2*pi,2.^k);
    error(k,1) = abs(I-trap(k));
    simp(k) = simpsonComposita(f,0,2*pi,2.^k);
    error(k,2) = abs(I-simp(k));
    if k>=2
        rap(k-1,1) = error(k,1)/error(k-1,1);
        rap(k-1,2) = error(k,2)/error(k-1,2);
    end
end

figure(1);
plot((cat(1,I*ones(size(trap)),cat(1,trap,simp)))');
title('Valori ottenuti mediante le due formule');
legend('Valore vero','Trapezi Composita (i=1)','Simpson Composita (i=2)');
xlabel('k');
ylabel('I_i^{2^k}');

figure(2);
plot(error);
title('Andamento degli errori');
legend('Errori Trapezi Composita (i=1)','Errori Simpson Composita (i=2)');
xlabel('k');
ylabel('E_i^{2^k}');

figure(3);
plot(rap);
title('Rapporto tra gli errori correnti con i precedenti');
legend('Trapezi Composita (i=1)','Simpson Composita (i=2)');
xlabel('k-1');
ylabel('Valore del rapporto');