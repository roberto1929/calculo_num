format long

a= [5 2 1; -1 4 2; 2 3 10];
b = [7 ; 3 ;-1];

[n,m] = size(a);
for i = 1: m
    b(i) = b(i)/ a(i,i);
    a(i,:) = a(i,:)/a(i,i);
    a(i,i) = 0;
end

x0= [1;1;1];
x1 = x0;

for i = 1: m
    x1(i) = -a(i,:) * x1 + b(i);
    end
erro = sum(abs(x1 - x0))/sum(abs(x1));

while (erro > 0.0001)
   x0 = x1;
   for i = 1: m
    x1(i) = -a(i,:) * x1 + b(i)
   end
   erro = sum(abs(x1 - x0))/sum(abs(x1))
end

a2= [5 2 1; -1 4 2; 2 3 10];
a2 * x1