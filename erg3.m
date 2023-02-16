close all;
clear all;
pkg load signal;
pkg load control;
pkg load communications;


#1)

EsN0db = 5;
EsN0 = 10^(EsN0db/10);
N0=1/EsN0;
EbN0=EsN0/2;
disp("EsN0db")
disp(EsN0db)
disp("EsN0")
disp(EsN0)
disp("N0")
disp(N0)

Pb = 2*qfunc(sqrt(2*EbN0)) - qfunc(sqrt(2*EbN0))*qfunc(sqrt(2*EbN0));

#2) 
N = 10^5;
sigma = sqrt(N0/2);
error_count = 0; 
for i=1:N
  m=randi(4);
  s=m*2-1;
  n=randn*sigma + j*randn*sigma;
  r=s+n;
  

  if (r>0)
    shat=1;
  else
    shat=-1;
  endif
  
  if (shat-=s)
    error_count = error_count + 1; 
  endif

endfor

calculatedBer = error_count/N;
disp("error_count")
disp(error_count)
disp("calculatedBer")
disp(calculatedBer)
disp("Theoretical Ber")
disp(Pb)