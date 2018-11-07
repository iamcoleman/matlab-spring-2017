% Coleman Lyski
% Feb 28, 2017
% HW 5
%% Problem 3
clear; clc; close all; home
commandwindow

load('HW5.mat');
initial_height = 360;
impactTime = sqrt(2*(initial_height/9.81));

v(1) = 0;

for k = 2:length(a)-1
    v(k) = v(k-1) + 0.05*((a(k)+ a(k+1))/2);  
end

x(1) = 360;

for k = 2:length(v)-1
    x(k) = x(k-1) + 0.05*((v(k)+ v(k+1))/2); 
end

subplot(3,1,1);
plot(t,a,'r.');
title('Acceleration vs. Time');
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');

for k = 1:length(t)-1
    y(k) = t(k);
end

for k = 1:length(t)-2
    u(k) = t(k);    
end

subplot(3,1,2);
plot(y,v,'b.');
title('Velocity vs. Time');
xlabel('Time (s)');
ylabel('Velocity (m/s)');

subplot(3,1,3);
plot(u,x,'k.');
title('Position vs. Time');
xlabel('Time (s)');
ylabel('Position (m)');
ylim([0 360]);

%% Problem 4
clear; clc; close all; home
commandwindow

count = 1;
time = 0;
D = 0.2;
r = 5;
Level = 12;
L(1) = Level;
Volume(1) = pi*((r)^2)*Level;
rateOut(1) = pi*((D/2)^2)*sqrt(2*32.2*(Level(1)-(D/2)));
deltaT = input('Enter the time interval: ');

while L >= 0.2
    count = count + 1;
    time(count) = time(count-1) + deltaT;
    rateOut = deltaT*(pi*(D/2)^2)*sqrt(2*(32.2)*(Level - (D/2)));
    Volume = Volume - rateOut;
    V(count) = Volume;
    Level = (Volume/(pi*r^2));
    L(count) = Level;    
end

fprintf('Liquid Level = %0.4f\n',L);
fprintf('Time = %0.3f\n',time(count));
plot(time,L,'b.');
title('Liquid Level vs. Time');
xlabel('Time (s)');
ylabel('Liquid Level (ft)');