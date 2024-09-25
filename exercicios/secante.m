fx = @(x) x^2 - 2
x0 = 1;
x1 = 3;

fx(x0)
fx(x1)

f = (fx(x1) - fx(x0))/(x1 - x0)
x3 = x1 - fx(x1)/f

while( abs(x3 - x1) > 10^-3)
    x0 = x1;
    x1 = x3;
    f = (fx(x1) - fx(x0))/(x1 - x0)
    x3 = x1 - fx(x1)/f
end