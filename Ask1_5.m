pkg load signal;
pkg load symbolic;
#a)
num = [0, 1, 1.5];
den = [1, 0.2, 1];

roots(num)
roots(den)
zplane(num, den);xlabel("Real Part");ylabel("Imaginary Part");
#b)
[r, p, k] = residuez(num, den);
n = [0:1:9];
h = (r(1,1))*((p(1,1)).^n) + (r(2,1))*((p(2,1)).^n);
figure;
stem(h);



#c)

n = [0:9];
delta = zeros(1,length(n));
delta(1,n==0) = 1;
h=filter(num,den,delta);
figure;
stem(h);

saveas(1,"Ask1a.jpg");
saveas(2,"Ask1b.jpg");
saveas(3,"Ask1c.jpg");

