%Método para resolução de sistemas
%linha 2 = linha 2 - linha 1 x A;
%pivo => a = a21/ a11

A = [1 4 2 ;-1 0 3;1 -2 1]; 
b = [17; 11; 1];

sol = zeros(size(b));
[m,n] = size(A);


for j=1:n-1
    for i=j+1:m
    pivo = A(i,j)/A(j,j);
    A(i,:) = A(i,:)-A(j,:)*pivo;
    b(i,:) = b(i,:)-b(j,:)*pivo;
    end
end

for i = 1:n
     b(i,:) = b(i,:)/A(i,i);
     A(i,:) = A(i,:)/A(i,i);
   
end

for i=n-1:-1:1
    soma = 0;
    for j =i+1:m;
        soma = soma + A(i,j) *b(j);
    end
    b(i) = b(i)-soma;
end
sol=b
