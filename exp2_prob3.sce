 
                          EXPERIMENT-02               
RN-B200023EE                          
/*AIM: Implementation and system responses of linear time invariant , 
linear time variant and non linear system.plot t vs x,xdot,xdoubledot,y
(as per the case) for the following system(assuming availability of initial condition)*/        
PROBLEM-01
clear
clc
h=input('enter step size ');
ti=input ('initial value of time ');
tf=input ('final value of time ');
n=(tf-ti)/h;
t(1,1)=ti;
x1(1,1)=2.3;
x2(1,1)=4.6;
for k=1:n 
    x1(k+1,1)=x1(k,1)+h*x2(k,1);
   x2(k+1,1)=x2(k,1)+h*5*x1(k,1);
    t(k+1,1)=t(k,1)+h;
end  
x2dot=5*x1; 
subplot(2,2,1) 
plot(t,x2);
xlabel('time')
ylabel('x2')
subplot(2,2,2)
plot(t,x1);
xlabel('time')
ylabel('x1')
subplot(2,2,3)
plot(t,x2dot)
xlabel('time')
ylabel('x2dot')



