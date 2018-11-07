% Coleman Lyski
%
% September 6, 2016
%
% Lecture 3
figure(1)
clf
plot(time,height,'k*')
figure(2)
clf
plot(time,distance,'k*')
coef2=polyfit(time,height,2)
coef1=polyfit(time,distance,1)
h_fit=polyval(coef2,time)
d_fit=polyval(coef1,time)
figure(3)
clf
plot(time,height,'k*',time,h_fit,'r')
xlabel('Time (s)')
ylabel('Height (m)')
figure(4)
clf
plot(time,distance,'k*',time,d_fit,'r')
xlabel('Time (s)')
ylabel('Height (m)')