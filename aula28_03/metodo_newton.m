% % format long
% F = @(x)[x(1)^2 + x(2)^2-2; x(2) - x(1)];
% J= @(x)[2*x(1) 2*x(2); -1 1]
% x1 = [1 ; 0];
% J(x1)
% F(x1)
% x2 = x1 - inv(J(x1)) * F(x1);
% 
% while(sum(abs(x2 - x1)) > 10^-3)
% x1 = x2;
% x2 = x1 - inv(J(x1)) * F(x1);
% 
% end  
% x2
% 
% F = @(x)[x(1)^2+x(2)^2+x(3)^2-9; x(1)^2+x(2)^2-x(3)^2-1; x(3)-x(2)];
% J= @(x)[2*x(1) 2*x(2)  2*x(3); 2*x(1) 2*x(2) -2*x(3) ; 0 -1 1];
% x1 = [1 ; 1; 1];
% J(x1)
% F(x1)
% x2 = x1 - inv(J(x1)) * F(x1);
% 
% while(sum(abs(x2 - x1)) > 10^-3)
% x1 = x2;
% x2 = x1 - inv(J(x1)) * F(x1);
% 
% end  
% x2

% format long
% F = @(x)[x(1)+x(2)-1;x(1)^2+2*x(2)-2];
% J= @(x)[1 1; 2^x(1) 2];
% x1 = [0 ; 0];
% J(x1)
% F(x1)
% x2 = x1 - inv(J(x1)) * F(x1);
% 
% while(sum(abs(x2 - x1)) > 10^-3)
% x1 = x2;
% x2 = x1 - inv(J(x1)) * F(x1);
% end  
% x2

J= @(x)
x1 = [0 ; 0];
J(x1)
F(x1)
x2 = x1 - inv(J(x1)) * F(x1);

while(sum(abs(x2 - x1)) > 10^-3)
x1 = x2;
x2 = x1 - inv(J(x1)) * F(x1);
end  
x2