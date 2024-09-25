% diferenciação numérica com Euler
format short
% L = 10;
% f0 = 1;
% f = [f0];
% h = 10^-6;
% F = @(x) exp(x);
% 
% x = [0:h:L];
% for i = 1: L/h 
%    f1 = (h + 1) * f0;
%    f = [f f1];
%    f0 = f1; 
% end    
% plot( x, f,'*y', x, F(x), '*k')
% erro = max(abs( f-F(x)))


% V = [];
% L = 1;
% Vh=[];
% f0 = 1;
% F = @(x) exp(x);
% h = 1;
% for i = 1:4
%     f = [f0];
%     h = h/10;
% x = [0:h:L];
% for i = 1: L/h 
%    f1 = (h + 1) * f0;
%    f = [f f1];
%    f0 = f1; 
% end 
% erro = max(abs(f-F(x)));
% V = [V erro];
% Vh = [Vh h];
% end
% plot(log10(Vh),log10(V))

V = [];
Vh = [];
yy0 = 1;
L = 1;
f = @(x) exp(x);
h = 1;
x = [0:0.1:1000];


for i = 1: 4
    y0 = yy0;
    g = [y0];
    h = h/10;
    for j = 1: L/h
        k1 = y0;
        k2 = y0 + h*k1/2;
        k3 = y0 + h * k2/2;
        k4 = y0 + h * k3;
        f1 = y0 + h*(k1 + 2 * k2 +2 * k3 + k4) / 6;
        g = [g f1];
        y0 = f1;
        x = [0:h:L];
    end
   
    erro = max(abs(g - f(x)));
    V = [V erro];
    Vh = [Vh h];
end

plot(x,f(x))
plot(log10(Vh), log10(V))
