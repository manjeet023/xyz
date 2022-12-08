//Second order system
//Given x1dotold=x2old ; x2dotold=-2*x1old-3*x2old+1
//y=x1old
//x1dotnew=x2new ; x2dotnew=-9*x1new-6*x2new+1
//y=x1new

clear
clc
x1old(1,1)=0.02;
x2old(1,1)=0.06;
x1new(1,1)=x1old(1,1);
x2new(1,1)=x1new(1,1);
yold(1,1)=0.08
ynew(1,1)=(1,1);
ti = 0;
tf = 4;
h = 0.05;
n = (tf-ti)/h
t(1,1) = ti;
for k=1:n
    x1old(k+1,1) = x1old(k,1) + h*x2old(k,1);
    x2old(k+1,1) = x2old(k,1) + h*(-2*x1old(k,1)-3*x2old(k,1)+1);
    yold(k+1,1) = x1old(k+1,1);
    x1new(k+1,1)=x1new(k,1)+h*x2new(k,1)
    x2new(k+1,1)= x2new(k,1)+h*(-9*x1new(k,1)-6*x2new(k,1)+1)
    ynew(k+1,1)=x1new(k+1,1)
    t(k+1,1) = t(k,1) + h;
end
plot(t,x1old,'o')
plot(t,x2old,'--')
plot(t,yold,'+')
plot(t,x1new,'*')
plot(t,x2new,'..')
plot(t,ynew)
xlabel('time')
ylabel('x1old,x2old,yold,x1new,x2new,ynew')
legend('x1old','x2old','yold','x1new','x2new','ynew')
title('x1old,x2old,yold,x1new,x2new,ynew   vs     t')
