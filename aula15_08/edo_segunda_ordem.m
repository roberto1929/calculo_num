v = [];
vh = [];

h = 0.01;
l = 1;
n = l/h;
g = zeros(n+1, 1);
g(2:n) = -2 * h*h;
for k = 0:5
m = zeros(n+1, n+1);
m(1,1) = 1;
m (n+1, n+1 )= 1;
for i =2:n
    m(i,i-1)=1;
    m(i,i) = -2;
    m(i,i+1)=1;
end

S = m\g;
x = [0:h:l];
f = @(x) -x.*x+l.*x;


erro = max(abs(S' - f(x)))

vh = [vh h];
v = [v erro];
end
figure();
plot(log10(vh), log10(v))
figure();
plot (x, S,'r*', x, f(x))
