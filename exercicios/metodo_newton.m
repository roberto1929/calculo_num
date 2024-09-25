f = @(x) x^3 - x -1;
df = @(x) 2*x+1;

x1 = 2;
x2 = x1 - f(x1)/df(x1);

while(abs(x1 - x2) > 10^-3)
    x1 = x2;
    x2 = x1 - f(x1)/df(x1)
end