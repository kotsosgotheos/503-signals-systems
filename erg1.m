close all;
clear all;
pkg load signal;
pkg load control;
pkg load communications;


#1)
EbN0db = 5;
EbN0 = 10^(EbN0db/10);
Pb=qfunc(sqrt(2*EbN0))
#2) 
N = 10^6;
m=randi([0 1],1,N);
sigma = sqrt(1/(2*EbN0));
for i=1:N
  if m(i)==0
    s(i)=0;
  else
    s(i)=1;
  endif
endfor

for EbN0db=5:1:10;
EbN0 = 10^(EbN0db/10);
n=sigma.*randn(1,N);
r=s+n;
m_cap=(r > 0.5);
Nerr = sum(m ~= m_cap);
ber = Nerr/N
endfor