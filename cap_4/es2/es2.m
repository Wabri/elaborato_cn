myfun = inline('1./(1.+x.^2)');
myotherfun = inline('x*sin(x)');

a=−5; b=5;
e = inline('abs( feval(f,x) − feval(p,x) )');

n = 5;
ascisse = ascisseEquispaziate(a, b, n);
funInterp = formaNewton(ascisse, myfun(ascisse));
maxErr = e(myfun, funInterp, fminbnd(@(x)(−e(myfun, funInterp, x)), a, b));
str = sprintf('Errore massimo con n = %d: %5.4f', n, maxErr); 
disp(str);

n = 10;
ascisse = ascisseEquidistanti(a, b, n);
funInterp = formaNewton(ascisse, myfun(ascisse));
maxErr = e(myfun, funInterp, fminbnd(@(x)(−e(myfun, funInterp, x)), a, b));
str = sprintf('Errore massimo con n = %d: %5.4f', n, maxErr); 
disp(str);

n = 15;
ascisse = ascisseEquidistanti(a, b, n);
funInterp = formaNewton(ascisse, myfun(ascisse));
maxErr = e(myfun, funInterp, fminbnd(@(x)(−e(myfun, funInterp, x)), a, b));
str = sprintf('Errore massimo con n = %d: %5.4f', n, maxErr); 
disp(str);

n = 20;
ascisse = ascisseEquidistanti(a, b, n);
funInterp = formaNewton(ascisse, myfun(ascisse));
maxErr = e(myfun, funInterp, fminbnd(@(x)(−e(myfun, funInterp, x)), a, b));
str = sprintf('Errore massimo con n = %d: %5.4f', n, maxErr); 
disp(str);

a=0; b=pi;

n = 5;
ascisse = ascisseEquispaziate(a, b, n);
secInterp = formaNewton(ascisse, myotherfun(ascisse));
maxErr = e(myotherfun, secInterp, fminbnd(@(x)(−e(myotherfun, secInterp, x)), a, b));
str = sprintf('Errore massimo con n = %d: %5.4f', n, maxErr); 
disp(str);

n = 10;
ascisse = ascisseEquispaziate(a, b, n);
secInterp = formaNewton(ascisse, myotherfun(ascisse));
maxErr = e(myotherfun, secInterp, fminbnd(@(x)(−e(myotherfun, secInterp, x)), a, b));
str = sprintf('Errore massimo con n = %d: %5.4f', n, maxErr); 
disp(str);

n = 15;
ascisse = ascisseEquispaziate(a, b, n);
secInterp = formaNewton(ascisse, myotherfun(ascisse));
maxErr = e(myotherfun, secInterp, fminbnd(@(x)(−e(myotherfun, secInterp, x)), a, b));
str = sprintf('Errore massimo con n = %d: %5.4f', n, maxErr); 
disp(str);

n = 20;
ascisse = ascisseEquispaziate(a, b, n);
secInterp = formaNewton(ascisse, myotherfun(ascisse));
maxErr = e(myotherfun, secInterp, fminbnd(@(x)(−e(myotherfun, secInterp, x)), a, b));
str = sprintf('Errore massimo con n = %d: %5.4f', n, maxErr); 
disp(str);
