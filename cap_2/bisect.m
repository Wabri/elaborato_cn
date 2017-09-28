function [x,i]=bisect(f,a,b,tol)
    fa = feval (f,a);
    fb = feval (f,b);
    x = (a+b)/2;
    fx = feval(f,x);
    imax = ceil (log2(b-a) - log2(tol));
    for i=2:imax
        f1x = abs((fb-fa)/(b-a));
        if abs(fx)<=tol*f1x
            break
        elseif fa*fx<0
            b=x;
            fb=fx;
        else
            a=x;
            fa=fx;
        end
        x = (a+b)/2;
        fx = feval(f,x);
    end
end