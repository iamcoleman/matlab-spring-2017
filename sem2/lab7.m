% Coleman Lyski
% February 23, 2017
% Lab 7
%% Part B
clear; clc; close all; home
commandwindow

h0 = input('Enter initial water level in the tank (m): ');
minh = input('Enter minimum allowable water level in the tank before the pump turns on (m): ');
maxh = input('Enter maximum allowable water level in the tank before the pump turns off (m): ');
flowin = input('Enter rate at which water enters the tank when the pump is engaged (gal/min): ');
flowin = flowin*0.0038;
flowout = input('Enter rate at which water leaves the tank (gal/min): ');
flowout = flowout*0.0038;

r = 5;
volume0_m = pi*(r^2)*h0;
volume0_gal = (volume0_m/0.0038);

t = 0:2:1440;
pump = 0;

for n = 2:length(t)
    h(1) = h0;
    if h(n-1) < minh
        pump = 1;
    elseif h(n-1) > maxh
        pump = 0;
    end
    if pump == 0
        h(n) = ((h(n-1)*r^2*pi) + (-flowout)*2) / (pi * r^2);
    elseif pump == 1
        h(n) = ((h(n-1)*r^2*pi) + (flowin + (-flowout))*2) / (pi * r^2);
    end
end

figure(1)
clf
plot(t,h,'b')
line([0 max(t)],[minh minh])
line([0 max(t)],[maxh maxh])
title('Water Level vs. Time')
xlabel('Time (min)')
ylabel('Height (m)')

fprintf('\nStarting Water Level: %0.3f m',h0)
fprintf('\nEnding Water Level: %0.3f m',h(length(t)))

%% Part C
clear; clc; close all; home
commandwindow

load('PartC_Data.mat')
h0 = input('Enter initial water level in the tank (m): ');
minh = input('Enter minimum allowable water level in the tank before the pump turns on (m): ');
maxh = input('Enter maximum allowable water level in the tank before the pump turns off (m): ');
flowin = input('Enter rate at which water enters the tank when the pump is engaged (gal/min): ');
flowin = flowin*0.0038;
flowout = water_usage;
flowout = flowout*0.0038;

r = 5;
volume0_m = pi*(r^2)*h0;
volume0_gal = (volume0_m/0.0038);

t = time;
pump = 0;

for n = 2:length(t)
    h(1) = h0;
    if h(n-1) < minh
        pump = 1;
    elseif h(n-1) > maxh
        pump = 0;
    end
    % Trap
    if pump == 0
        h(n) = ((h(n-1)*r^2*pi) - ((flowout(n-1)+flowout(n))/2)) / (pi * r^2);
    elseif pump == 1
        h(n) = ((h(n-1)*r^2*pi) + (((flowin - flowout(n-1)) + (flowin - flowout(n)))/2)) / (pi * r^2);
    end
end

figure(1)
clf
plot(t,h,'b')
line([0 max(t)],[minh minh])
line([0 max(t)],[maxh maxh])
title('Water Level vs. Time')
xlabel('Time (min)')
ylabel('Height (m)')

fprintf('\nStarting Water Level: %0.3f m',h0)
fprintf('\nEnding Water Level: %0.3f m',h(length(t)))








