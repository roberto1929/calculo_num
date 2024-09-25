% format long
% f = @(x) x^2 - 3;
% fx = @(x) 2*x;x1 = 1;
% x2 = 1.2;
% Fx=fx(x2)
% x3 = x2 - f(x2)/Fx
% 
% while(abs(x3 - x2)> 10^-3)
% x1 = x2;
% x2 = x3;
% Fx=fx(x2)
% x3 = x2 - f(x2)/Fx
% 
% end  

format long
f = @(x)x^2+x-6;
fx = @(x)2*x+1;
x1 = -5;
x2 = x1 - f(x1)/fx(x1);

while(abs(x2 - x1) > 10^-3)
x1 = x2;
x2 = x1 - f(x1)/fx(x1)
end  