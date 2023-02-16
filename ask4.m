pkg load symbolic
  #

  Dt = 0.01;
  t = 0.001:Dt:1;
  x = heaviside(t-1) - heaviside(t);
  figure;
  plot(x);
  xlabel("(t*0.01)=E[0,1]");
  ylabel("x(t)");
  title("Continuous signal of x(t)");
  saveas(1,"Ask4a-1.jpg");
  h = heaviside(t-1) - heaviside(t);
  y = Dt*conv(x,h)
  figure;
  plot(y);
  xlabel("(t*0.01)=Å[0,2]");
  ylabel("y(t)");
  title("Convolution of x(t) and h(t)");
  saveas(2,"Ask4a-2.jpg");
  
  
  
  z = Dt*conv(y,h);
  figure;
  plot(z);
  xlabel("(t*0.01)=Å[0,3]");
  ylabel("z(t)");
  title("Convolution of y(t) and h(t)");
  saveas(3,"Ask4b.jpg");
  
  
  
  w = Dt*conv(z,h);
  figure;
  plot(w);
  xlabel("(t*0.01)=Å[0,4]");
  ylabel("w(t)");
  title("Convolution of z(t) and h(t)");
  saveas(4,"Ask4c.jpg");

