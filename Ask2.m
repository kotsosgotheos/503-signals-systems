#Ask2a
n= 0:15;
x = [7,6,5,4,4,4,4,10,10,10,8,8,7,6,0];


for i = 2:15
  y(i) = x(i) - x(i-1);
end;
figure; 
stem(n(2:15), y(2:15));
xlabel("n=0,1..,15 ");ylabel("y[n] = x[n] - x[n-1] ");
title(" ");
figure; 
stem(n(1:15), x(1:15));
xlabel("n=0,1,..,15 ");ylabel(" x[n]");
title(" "); 
 
 
 
 
 
#Ask2b
pkg load symbolic
w = [-pi:0.01:pi];
H = 1 - cos(w) + j*sin(w);
figure; plot(w, abs(H));
xlabel("Diastima apo -pi ews pi ");ylabel("H(e^jw)");
title(" Metro tou H gia [-pi,pi] ");
figure; plot(w, angle(H));
xlabel("Diastima apo -pi ews pi ");ylabel("H(e^jw)");
title("Fasi tou H gia [-pi,pi] ");
w1 = [-3*pi:0.01:3*pi];
H1 = 1 - cos(w1) + j*sin(w1);
figure; plot(w1, abs(H1));
xlabel("Diastima apo -3pi ews 3pi");ylabel("H(e^jw)");
title("Metro tou H gia [-3pi,3pi] ");
figure; plot(w1, angle(H1));
xlabel("Diastima apo -3pi ews 3pi");ylabel("H(e^jw)");
title(" Fasi tou H gia [-3pi,3pi]");




saveas(1,'Ask2a_1.jpg');
saveas(2,'Ask2a_2.jpg');


saveas(3,'Ask2b_1.jpg');
saveas(4,'Ask2b_2.jpg');
saveas(5,'Ask2b_3.jpg');
saveas(6,'Ask2b_4.jpg');