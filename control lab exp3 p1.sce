//Second order system
//Given x1dot=x2 ; x2dot=-12*x1-7*x2+1
clear;
clc;
h=0.05;
t0=0;
t1=5;
n=(t1-t0)/h;
t(1,1)=0;
x1(1,1)=2.9;
x2(1,1)=3.5;
y(1,1)=x1(1,1);
x2dot(1,1)=-12*x1(1,1)-7*x2(1,1)+1;
for k=1:n
    x1(k+1,1)=x1(k,1)+h*x2(k,1)
    x2(k+1,1)= x2(k,1)+h*(-12*x1(k,1)-7*x2(k,1)+1)
    y(k+1,1)=x1(k+1,1)
    t(k+1,1)=t(k,1)+h
    x2dot(k+1,1)=-12*x1(k,1)-7*x2(k,1)+1
end
subplot(2,2,1)
plot(t,x1)
xlabel('time')
ylabel('x1')
title('x1   vs    t')
subplot(2,2,2)
plot(t,x2)
xlabel('time')
ylabel('x2')
title('x2   vs    t')
subplot(2,2,3)
plot(t,x2dot)
xlabel('time')
ylabel('x2dot')
title('x2dot   vs    t')
subplot(2,2,4)
plot(t,y)
xlabel('time')
ylabel('y')
title('y    vs    t')
