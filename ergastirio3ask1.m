pkg load symbolic;
syms V t;
f0 = 3;
V0 = 2*pi*f0;
H = heaviside(V + V0) - heaviside(V - V0);
h = simplify(ifourier(H));
figure;
ezplot(h);grid;
xlabel('Amplitude');ylabel('h(t)');
title('Fourier Series');axis([-3 3 -2 8]);

#askisi 1 b

x1 = sin(3*pi*t);
x2 = cos(16*pi*t);
x  = x1 + x2;
X  = simplify(fourier(x));
YV  = H.*X;
yt  = simplify(ifourier(YV)); 

figure;
subplot(221);ezplot(x1);
xlabel("Time (s)"); ylabel("x1(t)");
title("Signal x1");
subplot(222);ezplot(x2);
xlabel("Time (s)"); ylabel("x2(t)");
title("Signal x2");
subplot(223);ezplot(x); 
xlabel("Time (s)"); ylabel("x(t)");
title("Signal x(t) = x1(t) + x2(t)"); 
subplot(224);ezplot(yt);
xlabel("Time (s)"); ylabel("y(t)");
title(" Filtered signal y(t)");


saveas(1, "askisi1a.jpg");
saveas(2, "askisi1b.jpg");
