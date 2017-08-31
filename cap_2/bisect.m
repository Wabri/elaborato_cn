function [sol,nit]=bisect(f,a,b,tolx,maxit);
    nit=maxit;
    j=0;
    if(subs(f,a)*subs(f,b)>0)
        disp('[Warning] il metodo non puo'' essere usato');
    else
        while(j<=maxit)
            sol=(a+b)/2;
            ff=subs(f,sol);
            if(abs(ff)<=tolx)
                nit=j;
                break;
        end
        fa=subs(f,a);
        fm=subs(f,sol);
        if(fa*fm<=0)
            b=sol;
        else
            a=sol;
        end
        j=j+1; 
    end
end
