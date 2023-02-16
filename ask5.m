pkg load symbolic;
syms y(t);
syms x(t);
x(t)= 5*t + 3;
dy2 = diff(y,t,2);
dy = diff(y,t);
dx = diff(x,t);
yzi = dsolve(dy2 + 6*dy + 9*y == 0, y(0) == 1,dy(0) == -1)
yzs = dsolve(dy2 + 6*dy + 9*y == 9*x(t) + 2*dx, y(0) == 1,dy(0) == -1)
ytotal = yzi + yzs 