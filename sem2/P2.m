% Coleman Lyski
% March 9, 2017
% Midterm - P2
clear; clc; close all; home
commandwindow

load P2

figure(1)
clf
plot(t,Ind_V,'k*')
title('Voltage vs. Time')
xlabel('Time (s)')
ylabel('Voltage (V)')

L = 0.005;
deltaT = t(2) - t(1);


for k = 2:length(t)
    Areas_RRE(k) = (1000/L) * (Ind_V(k)*deltaT);
end
RRE(1) = Areas_RRE(1);
for k = 2:length(t)
   RRE(k) = RRE(k-1) + Areas_RRE(k); 
end

figure(2)
clf
plot(t,RRE,'b*')
title('Right Riemann Estimates')
xlabel('Time (s)')
ylabel('Current (mA)')


for k = 2:length(t)
   Areas_Trap(k) = (1000/L) * (((Ind_V(k-1)+Ind_V(k))/2)*deltaT);
end
trap(1) = Areas_Trap(1);
for k = 2:length(t)
    trap(k) = trap(k-1) + Areas_Trap(k);
end

figure(3)
clf
plot(t,trap,'r*')
title('Trapezoidal Estimates')
xlabel('Time (s)')
ylabel('Current (mA)')


fprintf('\nFinal Current Value for Right Riemann Sum Estimate: %0.2f mA',RRE(length(RRE)))
fprintf('\nFinal Current Value for Trapezoidal Sum Estimate: %0.2f mA',trap(length(trap)))


