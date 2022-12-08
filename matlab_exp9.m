clear all 
w=2; 
zeta=.5;
num = [w^2] ; 
den= [1 2*zeta*w w^2] ; 
t=0:0.01:5; 
cloop=tf(num,den)
step(cloop)
data=stepinfo(cloop)
xlabel('Time(sees)') 
ylabel('Amplitude') 
title(' Closed-Loop Step')
