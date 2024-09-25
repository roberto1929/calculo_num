% MÉTODO MÍNIMOS QUADRADOS
    x = [0:10]
    y = 3*exp(x) + rand(size(x));
    A = [sum(x.*x) sum(x); sum(x) size(x,2)];
    B = [sum(x.*log(y)); sum(log(y))];
    sol = A\B;
    b = exp(sol(1,1))
    a = exp(sol(2,1))
    
    plot(x,y,'', x, ab.^x)