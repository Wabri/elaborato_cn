function [x] = nonLinearNewton(F,J, x, imax, tolx, out)
    i=0;
    xold = x+1;
    while (i< imax )&&( norm (x-xold )> tolx )
        i=i+1;
        xold =x;
        [L,U,P] = factLUP(feval(J,x));
        x=x+linLUP(L,U, P, -feval(F,x));
        if out
            disp(norm(x-xold));
            disp(x);
        end
    end
end