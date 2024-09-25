phi = @(x)sqrt(x+2)
%phi = @(x)x^2-2
% phi = @(x)1+2/x
x1 = 3;
x2 = phi(x1)

while(abs(x1-x2)>0.001)
    x1 = x2;
    x2 = phi(x1)
end