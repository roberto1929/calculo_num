%aula 29/02
format long;
f = @(x)-x^2 +2;

xi = 2;
xf = 4;

fxi = f(xi);
fxf = f(xf);
fxn = f(x);

if(fxi*fxf < 0)
    while(abs(xi-xf)>0.001)  
    x = (xi + xf)/2
    fxn = f(x);
    if(fxi>0 && fxf<0 && fxn>0) xi =x;
    elseif(fxi>0 && fxf<0 && fxn<0) xf = x;
    elseif(fxi<0 && fxf>0  && fxn<0) xi=x;  
    elseif(fxi<0 && fxf>0 && fxn>0) xf =x;
    end
    
    fxi = f(xi);
    fxf = f(xf);
    
    end
end
plot(xi,xf)

