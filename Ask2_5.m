pkg load signal;
pkg load symbolic;
#Α) r=1
num = [1, -cos(0.07*pi)];
den = [1, -2*cos(0.07*pi),  1];
roots(num);
roots(den);
figure;
zplane(num,den);
n = [0:128];
delta = zeros(1,length(n));
delta(1,n==0) = 1;
h=filter(num,den,delta);
figure;
stem(h);
xlabel("ask2a");
#Β) r=1-e
e=0.01; 
num = [1, -(1-e)*cos(0.07*pi)];
den = [1, -2*(1-e)*cos(0.07*pi), (1-e)^2];
roots(num);
roots(den);
figure;
zplane(num,den);
n = [0:128];
delta = zeros(1,length(n));
delta(1,n==0) = 1;
h=filter(num,den,delta);
figure;
stem(h);
xlabel("ask2b");


saveas(1,"Ask2a_1.jpg");
saveas(2,"Ask2a_2.jpg");
saveas(3,"Ask2b_1.jpg");
saveas(4,"Ask2b_2.jpg");