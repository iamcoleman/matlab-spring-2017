% Coleman Lyski
%
% September 20, 2016
%
% HW 3: Simple Harmonic Motion
%% Problem 1
clear; close all; home;
A = input('Enter initial displacement of mass (m) = ');
K = input('Enter spring constant (N/m) = ');
M = input('Enter mass of suspended mass and spring (kg) = ');
f = (sqrt(K/M))/2*pi;
T = 1/f;
fprintf('\nThe frequency is %0.4f (Hz)',f);
fprintf('\nThe period is %0.4f (s)', T);
t = 0:0.0001:3*T;
p = A*cos(sqrt(K/M).*t);
% fprintf('\n\nThe position is %0.4f (m)', p);
v = -A*sqrt(K/M)*sin(sqrt(K/M).*t);
% fprintf('\nThe velocity is %0.4f (m/s)', v);
KE = (1/2)*M.*v.^2;
% fprintf('\nThe KE is %0.4f (J)', KE);
PE = (1/2)*M.*p.^2;
% fprintf('\nThe PE is %0.4f (J)', PE);
figure(1)
clf
subplot(2,2,1)
plot(t,p)
xlabel('Time (s)')
ylabel('Position (m)')
title('Time vs. Position')
subplot(2,2,2)
plot(t,v)
xlabel('Time (s)')
ylabel('Velocity (m/s)')
title('Time vs. Velocity')
subplot(2,2,3)
plot(t,KE)
xlabel('Time (s)')
ylabel('KE (J)')
title('Time vs. KE')
subplot(2,2,4)
plot(t,PE)
xlabel('Time (s)')
ylabel('PE (J)')
title('Time vs. PE')
%
%% Problem 2
clear; close all; home;
g = 9.81
v0 = input('Enter launch velocity (m/s) = ');
theta = input('Enter launch angle in degrees (theta) = ');
y0 = input('Enter initial launch height (m) = ');
x0 = 0;
Tmax = (v0*sin(theta))/g;
ymax = ((-1/2)*g*Tmax^2)+(v0*sin(theta)*Tmax)+(y0);
Timpact = ((v0*sin(theta))/g)+(sqrt((v0*sin(theta))^2+2*g*y0)/g);
fprintf('\n\nThe time when the projectile reaches its maximum height is %0.2f (s)', Tmax);
fprintf('\nThe maximum height is %0.2f (m)', ymax);
fprintf('\nThe time of impact is %0.2f (s)', Timpact);
t = 0:0.001:Timpact;
y = ((-1/2)*g.*t.^2)+(v0*sin(theta).*t)+(y0);
figure(1)
clf
plot(t,y)
xlabel('Time (s)')
ylabel('Height (m)')
title('Time vs. Height')

















