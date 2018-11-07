% Coleman Lyski
% Feb 28, 2017
% Lecture 8
%% Example 1
clear; clc; close all; home
commandwindow

syms x;

y_top = sqrt(25 - (25/16)*x^2);
y_bot = 3 - sqrt(25 - x^2);

Area = int(y_top-y_bot,x,-4,4)
Area = double(Area)

%% Example 2
clear; clc; close all; home
commandwindow

% TrapTrap
% A1 = ((b1 + b2)/2)*h

%% Example 3
clear; clc; close all; home
commandwindow

load Lec8;

% Plot the data
figure(1)
clf
plot(x,yb,'r*',x,yt,'k*')
legend('Bottom','Top')

% DeltaX
DeltaX = x(2) - x(1);

% TrapTrap Area
Areas(1) = 0;
for k = 2:length(x)
    b1 = yt(k-1) - yb(k-1);
    b2 = yt(k) - yb(k);
    Areas(k) = DeltaX*((b1+b2)/2);
end

figure(2)
clf
plot(x,Areas,'b*')
title('TrapTrap Areas')

fprintf('Total Area Estimate: %0.4f units^2\n',sum(Areas));

%% Example 4
clear; clc; close all; home
commandwindow

load Lec8;

% DeltaX
DeltaX = x(2) - x(1);

% TrapTrap Area
Areas(1) = 0;
for k = 2:length(x)
    b1 = yt(k-1) - yb(k-1);
    b2 = yt(k) - yb(k);
    q = (x(k) + x(k-1))/2;
    moments(k) = DeltaX*((b1+b2)/2)*q^2;
end

fprintf('Total Moment Estimate: %0.4f units^2\n',sum(moments));








