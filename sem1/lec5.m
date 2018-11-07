% Coleman Lyski
%
% September 12, 2016
%
% Lecture 4
clear; close all; home
%
% program to calculate height and range
% projectile motion
%
% variables:
% (x0,y0) - initial position
% ts - time step
% thd - firing angle in degrees
% v0 - firing velocity
% g - gravitational constant
% thr - firing angle in radians
% t - time vector
% thit - time for projectile to hit ground
% height - height of projectile
% range - distance down range of projectile
%
% input section
name = input('Enter your name ','s');
x0 = input('Enter the value for x0 in meters = ');
y0 = input('Enter the value for y0 in meters = ');
ts = input('Enter the number time steps = ');
thd = input('Enter value for firing angle in degrees = ');
v0 = input('Enter value for firing velocity in m/s = ');
g=9.81;
% engineering work
% convert to radians
thr=thd*pi/180;
% find time for projectile to hit ground
hit=roots([-.5*g v0*sin(thr) x0]);
thit=max(abs(hit));
% set time vector
t=0:thit/ts:thit;
% compute motion
height=-.5*g*t.^2+v0*sin(thr)*t+y0;
range=v0*cos(thr)*t+x0;
% output section
% plots
figure(1)
clf
subplot(2,1,1)
plot(t,range,'k',t,height,'r')
xlabel('Time (s)');
ylabel('Range and Height (m)');
title('Range and Height vs Time');
legend('Range','Height','location','best');
axis([0 thit 0 max(range)]);
subplot(2,1,2)
plot(range,height)
xlabel('Range (m)');
ylabel('Height (m)');
title('Projectile Motion');
axis([0 max(range) 0 max(height)])
% formatted output
home
fprintf('Name: %0s\n',name)
fprintf('\n\nYour input:\n')
fprintf('x0 = %0.2f m \t y0 = %0.2f m\n',x0,y0)
fprintf('Initial angle and velocity = %0.2f degrees fired at %0.2f m/s\n',thd,v0)
fprintf('\n\nYour output:\n')
fprintf('The time it took to hit the ground = %0.2f seconds\n',thit)
fprintf('The maximum height = %0.2f meters\n',max(height))
fprintf('The total distance down range = %0.2f meters\n',max(range))

