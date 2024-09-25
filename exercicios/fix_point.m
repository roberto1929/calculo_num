phi = @(x)3.*sqrt(x+3);

x1 = 1;
x2 = phi(x1);

while(abs(x1-x2) > 0.001)
    x1 = x2;
    x2 = phi(x1)
end

