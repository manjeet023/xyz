clear
clc
h=0.001
t0=0
t1=5
n=(t1-t0)/h;
t(1,1)=0
x1(1,1)=0.01;
x2(1,1)=0.01;
y(1,1)=x1(1,1);
for k=1:n 
    x1(k+1,1)=x1(k,1)+h*x2(k,1);
   x2(k+1,1)=x2(k,1)+h*(-12*x1(k,1)-7*x2(k,1)+1);
   y(k+1,1)=x1(k+1,1);
    t(k+1,1)=t(k,1)+h
    
end  
plot(t,x1,'g')
plot(t,x2,'r')
plot(t,y)
legend('x1','x2','y')
xlabel('time')
ylabel('x1/x2/y')

