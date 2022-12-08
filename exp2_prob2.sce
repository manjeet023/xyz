clear; 
clc;
h=input('enter step length ');
t0=input('enter initial value of time ');
t1=input('enter final value of time ');
n=(t1-t0)/h;
t(1,1)=t0;
x1(1,1)=0.23;
x2(1,1)=0.46;
for k=1:n 
    x1(k+1,1)=x1(k,1)+h*(x2(k,1))
   x2(k+1,1)=x2(k,1)+h*(5*x1(k,1)+3*x2(k,1)+3)
    t(k+1,1)=t(k,1)+h  
end  
x2dot=3*x2+3*x1+3;
subplot(2,2,1) 
plot(t,x2);
xlabel('time')
ylabel('x2')
subplot(2,2,2)
plot(t,x1);
xlabel('time')
ylabel('x1')
subplot(2,2,3)
plot(t,x2dot);
xlabel('time')
ylabel('x2dot')