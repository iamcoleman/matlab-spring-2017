function [Timpact, Tmax, Hmax] = Projectile2(v0, theta, y0)
% Projectile2
% Graphs projectile motion

% v0 = Initial velocity
% theta = Launch angle
% y0 = Initial launch height

% Usage: >> [Timpact, Tmax, Hmax] = Projectile2(v0, theta, y0)

g = 9.81;
theta = (theta*pi)/180; 
% Converts degrees to radians
Timpact = (v0 * sin(theta))/g + sqrt((v0 * sin(theta))^2 + 2*g*y0)/g; 
% Calculates the time (in seconds) of impact
t = 0:.01:(Timpact+Timpact/20); 
% Creates a time vector from 0 to the time of impact
Tmax = (v0 * sin(theta))/g; 
% Calculates the time at which the projectile reaches it's maximum height
y = -.5*g*t.^2 + v0*sin(theta)*t + y0; 
% Projectile motion formula
Hmax = max(y); 
% Finds the maximum height the object reaches

AnimatedPlot(t, y, 0.1)



end

