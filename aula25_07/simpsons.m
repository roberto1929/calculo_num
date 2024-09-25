%interpolação lagrange com integrção numŕica

D = 0.0000001
x = [-2:D:3];
f= @(x)x.*x
F = f(x);
n = size(x,2);
v = ones(1,n);
v(2:2:n)= 4;
v(3:2:n-1) = 2;
integral = sum(D * F.*v/3)