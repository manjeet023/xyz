clear
clc
h=input('enter step size ');
ti=input ('initial value of time ');
tf=input ('final value of time ');
n=(tf-ti)/h;
t(1,1)=ti;
x1(1,1)=0.0023;
x2(1,1)=0.0046;
for k=1:n 
   x1(k+1,1)=x1(k,1)+h*(x2(k,1))
   x2(k+1,1)=x2(k,1)+h*(5*t(k,1)*x1(k,1)*x1(k,1));
   t(k+1,1)=t(k,1)+h;
end   
x2dot=5*t.*x1.*x1;
subplot(2,2,1) 
plot(t,x1);
xlabel('time')
ylabel('x1')
title('plot of x1 vs t')
subplot(2,2,2)
plot(t,x2);
xlabel('time')
ylabel('x2')
title('plot of x2 vs t')
subplot(2,2,3)
plot(t,x2dot);
xlabel('time')
ylabel('x2dot')
title('plot of x2dot vs t')
