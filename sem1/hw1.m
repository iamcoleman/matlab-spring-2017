% Coleman Lyski
%
% August 31, 2016
%
% Homework 1
%% Problem 2
clear
clc
p = [1 -1.25 -2.125 0.875 0.75]
roots(p)
roots = roots(p)
t = -2:.1:2.5
poly = 1*(t.^4) - 1.25*(t.^3) - 2.125*(t.^2) + 0.875*(t) + 0.75
xaxis = t - t
figure(1)
clf(1)
plot(t,poly,t,xaxis,roots(1),0,'*',roots(2),0,'*',roots(3),0,'*',roots(4),0,'*')
xlabel('x axis')
ylabel('y axis')
%% Problem 3
clear
clc
t = 0:.00001:.0005
Vcap = 12*(1 - exp(-10000*t))
plot(t,Vcap)
xlabel('Time (sec)')
ylabel('Vcap (V)')
title('Voltage across capacitor vs. Time')
%% Problem 4
clear
clc
T = 0:8e-6:0.0048
f = cos(2*pi*(1250)*T)
plot(T,f)
%% Problem 5
clear
clc
T = 0:.05:10
p = exp(-.5.*T).*cos(2.*pi*(2).*T)
v = -.5.*exp(-.5.*T).*cos(2.*pi*(2).*T) - 4.*pi.*exp(-.5.*T).*sin(2.*pi*(2).*T)
figure(1)
clf
subplot(2,1,1)
plot(T,p)
title('Position vs. Time')
xlabel('Time (sec)')
ylabel('Position (cm)')
subplot(2,1,2)
plot(T,v)
title('Velocity vs. Time')
xlabel('Time')
ylabel('Velocity (cm/s)')