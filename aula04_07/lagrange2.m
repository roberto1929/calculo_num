% Interpolação e Polinomio de lagrange
format short
x1 =-1;
x2 = 0;
x3 = 3;
x4 = 5;

y1 = -1;
y2 = -1;
y3 = 23;
y4 = 119;

x = [x1, x2, x3, x4];

y = [y1, y2, y3, y4];


xx = 2;
f1=((xx-x2).*(xx-x3).*(xx-x4))/((x1-x2).*(x1-x3).*(x1-x4));
f2=((xx-x1).*(xx-x3).*(xx-x4))/((x2-x1).*(x2-x3).*(x2-x4));
f3=((xx-x1).*(xx-x2).*(xx-x4))/((x3-x1).*(x3-x2).*(x3-x4));
f4=((xx-x1).*(xx-x2).*(xx-x3))/((x4-x1).*(x4-x2).*(x4-x3));

yy = y1*f1 + y2*f2 + y3*f3 + y4*f4

% plot(x,y,'r*',xx,yy,'bo-');

