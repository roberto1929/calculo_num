% Interpolação e Polinomio de lagrange

x1 =-2;
x2 = 0;
x3 = 1;

y1 = 6;
y2 = 2;
y3 = 3;

x = [x1, x2, x3];

y = [y1, y2, y3];

xx = [x1: 0.01:x3];

f1=((xx- x2).*(xx-x3))/((x1-x3).*(x1-x2));
f2=((xx-x1).*(xx-x3))/((x2-x1).*(x2-x3));
f3=((xx-x1).*(xx-x2))/((x3-x1).*(x3-x2));

yy = y1*f1 + y2*f2 + y3*f3;

plot(x,y,'r*',xx,yy,'bo-')
ylim([0,7])