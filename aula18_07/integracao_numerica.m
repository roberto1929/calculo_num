% Integração numérica
format short 
dx = 0.00000001;
%f = @(x) exp(-x.*x);
f = @(x) x;
x = [0: dx:1];
y = f(x);

integral = sum(dx * y)