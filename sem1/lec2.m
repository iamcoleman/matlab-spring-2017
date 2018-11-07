% Coleman Lyski
%
% August 29, 2016
%
% Lecture 2: Plotting
%% Engineering Section
x0 = 0;
y0 = 0;
v0 = 100;
g = 9.81;
th = 45*pi/180;
tmax = roots([-.5*g v0*sin(th) y0]);
t = 0:.01:tmax(2);
y = -.5*g*t.^2 + v0*sin(th)*t + y0;
x = v0*cos(th)*t+x0;
%% Plotting
figure(1)
clf
subplot(2,1,1)
plot(t,x,'r',t,y,'k')
xlabel('Time (s)')
ylabel('(m)')
title('Projectile Motion')
subplot(2,1,2)
plot(x,y,'k')
xlabel('Distance Down Range (m)')
ylabel('Height (m)')
title('Projectile Motion')