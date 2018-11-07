% Coleman Lyski
%
% January 12, 2016
%
% Lab 1: Introduction to User Defined Functions
%% Part 1
clear; clc; close all; home
commandwindow
r=input('\nEnter the number r: ');
if abs(r) >= 1
    error('Will not converge. \nThe absolute value of r must be less than %i.',1)
end

sum = 1/(1-r);
diff = abs(r - sum);

k = 1;

while diff > 0.001
    if k == 1
        newsum(1) = 1;
    else
        newsum(k) = newsum(k-1) + r^(k-1);
    end
    diff = abs(newsum(k) - sum);
    k = k + 1;
end

fprintf('\nThe number of terms for convergence: %i',k)
fprintf('\nLast partial sum: %0.4f',newsum(k-1))

%% Part 2
clear; clc; close all; home
commandwindow
v0 = -1;
theta = -1;
y0 = -1;
g = 9.81;
while v0 < 0
    v0 = input('Enter intitial velocity (m/s): ');
end
while theta < 0 || theta > 90
    theta = input('Enter launch angle (degrees): ');
end
while y0 < 0
    y0 = input('Enter the launch height (m): ');
end
theta = (theta*pi)/180; % Converts degrees to radians
Timpact = (v0 * sin(theta))/g + sqrt((v0 * sin(theta))^2 + 2*g*y0)/g; % Calculates the time (in seconds) of impact
t = 0:.01:(Timpact+Timpact/20); % Creates a time vector from 0 to the time of impact
Tmax = (v0 * sin(theta))/g; % Calculates the time at which the projectile reaches it's maximum height
y = -.5*g*t.^2 + v0*sin(theta)*t + y0; % Projectile motion formula
Hmax = max(y); % Finds the maximum height the object reaches
figure(1)
clf
plot(t(1),y(1),'b*')
title('Projectile Motion')
xlabel('Time (s)')
ylabel('Height (m)')
axis([0 t(length(t)) 0 Hmax])
hold on
pause(0.01)
for p = 2:length(t)
    plot(t(p),y(p),'b*')
    pause(0.01)
end
fprintf('\nMaximum height reached: %0.2fm',Hmax)
fprintf('\nImpact Time: %0.2fs',Timpact)













