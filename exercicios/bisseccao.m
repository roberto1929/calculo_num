f = @(x) x^8 - 2;

a = 2;
b = 4;

while (abs(b-a)> 0.001)
    x = (a+b)/2
    if f(x) < 0
        a = x;
    else
        b = x;
    end
end