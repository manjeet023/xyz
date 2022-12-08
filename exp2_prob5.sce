

clear
clc
h=input('enter step length ')
t0=input('enter initial value of time ')
t1=input('enter final value of time ')
n=(t1-t0)/h;
t(1,1)=0
x1(1,1)=0.0023;
x2(1,1)=0.0050;
for k=1:n 
    x1(k+1,1)=x1(k,1)+h*x2(k,1);
   x2(k+1,1)=x2(k,1)+h*(-2*x1(k,1)-3*x2(k,1)+1);
    t(k+1,1)=t(k,1)+h
end 
y=3*x1+4*x2; 
plot(t,x1,'*',t,x2,'+',t,y);
legend('x1','x2','y')
xlabel('time')
ylabel('x1/x2/y')
title('plot of x1/x2/y vs t')

enter step length 0.1
enter initial value of time 0
enter final value of time 7