#askisi 2a
t  = 0:0.0001:1;
n  = 0:50;
Ts = 0.02; 

x  = 2*cos(8*pi*t) - sin(12*pi*t);
xn = 2*cos(8*pi*n*Ts) - sin(12*pi*n*Ts);
figure; 
subplot(311);plot(t, x);
xlabel("Time(s)");ylabel("x(t)");
title("Continuous time signal x(t)");

subplot(312); stem(n, xn);
xlabel("Time(s)");ylabel("x[n]");
title("Discrete time signal x[n] for Ts=0.02");


#askisi 2b
Ts2 = 0.3;
xn2 = 2*cos(8*pi*n*Ts2) - sin(12*pi*n*Ts2);
figure;
subplot(311);plot(t, x);
xlabel("Time(s)");ylabel("x(t)");
title("Continuous time signal x(t)")

subplot(312); stem(n, xn2);
xlabel("Time(s)");ylabel("x[n]");
title("Discrete time signal x[n] for Ts=0.3");
#Paratiroume oti exei alloiothei h morfi tou shmatos otan h periodos digmatolipsias einai 0.3


saveas(1, "askisi2a.jpg");
saveas(2, "askisi2b.jpg");