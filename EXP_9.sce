clc
clear
h=0.001;
x1(1,1)=0;
x2(1,1)=0;
y(1,1)=x1(1,1);
tin=0
tfin=20
nk= ((tfin-tin)/h);
t(1,1)=tin
for k=1:nk
    x1(k+1,1)=x1(k,1)+h*x2(k,1)
    x2(k+1,1)=x2(k,1)+h*(-4*x1(k,1)-2*x2(k,1)+1)
    y(k+1,1)= 4*x1(k+1,1)
    t(k+1,1)=t(k,1)+h
end
plot (t,y,'r')
legend('y','x2','y','-4*x1-2*x2+1')
xlabel('time')
ylabel('X')
rise=0;
rise1=0;
cont=0
maximum_peak=max(y)
steady_state=y($)
for i=1:length(y)
    if y(i)==maximum_peak
        count=i
    end
end
tol=0.001;
max_overshoot=100*(1-maximum_peak)
for i=1:length(y)
   
    if abs(y(i)-1)<=tol
        rise=i
        break;
    end
end
risetime=t(rise)
peak_time=t(count)
