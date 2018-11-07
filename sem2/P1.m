% Coleman Lyski
% March 9, 2017
% Midterm - P1
clear; clc; close all; home
commandwindow

load P1;

figure(1)
clf
plot(t,Qflow,'k*')
title('Fluid Flow Measurments vs. Time')
xlabel('Time (s)')
ylabel('Fluid Flow (kg)')

vel(1) = 0;
for k = 2:length(t)
   vel(k) = (1/(1100*0.005)) * (Qflow(k) - Qflow(k-1))/(t(2)-t(1)); 
end

figure(2)
clf
plot(t,vel,'r*')
title('Velocity Estimates')
xlabel('Time (s)')
ylabel('Velocity (m/s)')

maxvel = max(vel);
meanvel = (sum(vel))/length(vel);

fprintf('\nMaximum Velocity: %0.3f m/s',maxvel)
fprintf('\nAverage Velocity: %0.3f m/s',meanvel)