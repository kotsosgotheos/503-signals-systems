clear
close all
clc
#Ask1_a

n=[0:40];
s=2.*cos(pi.*n./4);
e=0.4*rand([1,41]);
x=s+e;
figure;
stem(n,s);
xlabel("n=[1,2,..,41]");ylabel("s[n]");
title("Katharo sima s[n] ");
figure;
stem(n,e);
xlabel("n=[1,2,..,41]");ylabel("e[n]");
title("Sima thorivou e[n] ");
figure;
stem(n,x);
xlabel("n=[1,2,..,41]");ylabel("x[n]");
title(" Sima diavrwmenou thorivou x[n]");
y=zeros(1,41);
y(1,1)=x(1)./4;
y(1,2)=(x(1)+x(2))./4;
y(1,3)=(x(1)+x(2)+x(3))./4;
for i=4:40
  y(i)=(x(i)+x(i-1)+x(i-2)+x(i-3))./4;
endfor
figure;
stem(n,y);
xlabel("n=[1,2,..,41]");ylabel("y[n]");
title("Filtrarismeno sima y[n]");


#Ask1_b

N=11;
w=[-pi:0.01:pi];
H=(sin((N./2).*w))./(N.*sin((1/2)*w)).*exp(((-j*(N-1))*w)./2);
figure;
plot(w, abs(H));
xlabel("Diastima apo -pi ews pi");ylabel("H(e^jw)");
title("Metro tou H gia [-pi,pi]");
figure;
plot(w, angle(H));
xlabel("Diastima apo-pi ews pi");ylabel("H(e^jw)");
title("Fasi tou H gia [-pi,pi]");
w=[-3*pi:0.01:3*pi];
H=(sin((N./2).*w))./(N.*sin((1/2)*w)).*exp(((-j*(N-1))*w)./2);
figure;
plot(w, abs(H));
xlabel("Diastima apo -3pi ews 3pi");ylabel("H(e^jw)");
title("Metro tou H gia [-3pi,3pi] ");
figure;
xlabel("Diastima apo -3pi ews 3pi");ylabel("H(e^jw)");plot(w, angle(H));
xlabel("Diastima apo -3pi ews 3pi");ylabel("H(e^jw)");
title("Fasi tou H gia [-3pi,3pi] ");


saveas(1,'Ask1a_1.jpg');
saveas(2,'Ask1a_2.jpg');
saveas(3,'Ask1a_3.jpg');
saveas(4,'Ask1a_4.jpg');


saveas(5,'Ask1b_1.jpg');
saveas(6,'Ask1b_2.jpg');
saveas(7,'Ask1b_3.jpg');
saveas(8,'Ask1b_4.jpg');