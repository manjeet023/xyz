
clear all;
clc;
h=input('enter step length: ');
ti=input ('initial value of time: ');
tf=input ('final value of time: ');
n=(tf-ti)/h;
t(1,1)=0;
x(1,1)=3;
for k=1:n 
    x(k+1,1)=x(k,1)-h*(5)*x(k,1)
    t(k+1,1)=t(k,1)+h
end   
plot(t,x);
xlabel('time(t)')
ylabel('state variable(x)')
legend('x',1)

