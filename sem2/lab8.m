% Coleman Lyski
% March 2, 2017
% Laboratory 8
%% Submarine Hatch
clear; clc; close all; home
commandwindow

load('Submarine_Hatch.mat')

% figure(1)
% clf
% plot(x_left,y_hatch,'k',x_right,y_hatch,'k')
% axis([-1 1 -2 0])
% title('Submarine Hatch')
% xlabel('Meters')
% ylabel('Meters')

D = input('Enter the current depth (m) of the top of the door: ');
g = 9.81;
dy = abs(y_hatch(2) - y_hatch(1));
P0 = 101353;
rho = 1027;
outsideforce = 0;
insideforce = 0;

for k = 2:length(x_left)
    force = (P0 + rho*g*(D - y_hatch(k))) * abs((((x_right(k)-x_left(k))+(x_right(k-1)-x_left(k-1)))/2)) * dy;
    outsideforce = outsideforce + force;
end

for k = 2:length(x_left)
    force = (P0) * abs((((x_right(k)-x_left(k))+(x_right(k-1)-x_left(k-1)))/2)) * dy;
    insideforce = insideforce + force;
end

netforce = outsideforce - insideforce;

fprintf('\nOutside Force on the Hatch at %0.2f meters: %0.2f N',D,outsideforce);
fprintf('\nInside Force on the Hatch at %0.2f meters: %0.2f N',D,insideforce);
fprintf('\nNet Force on the Hatch at %0.2f meters: %0.2f N',D,netforce);

if netforce <= 5000000
    fprintf('\nThis is a safe depth')
elseif netforce > 5000000
    fprintf('\nThis in not a safe depth')
end

%% Airplane Hatch
clear; clc; close all; home
commandwindow

load('Airplane_Hatch.mat')

% figure(1)
% clf
% plot(x_left,y_hatch,'k',x_right,y_hatch,'k')
% axis([-2 2 0 3])
% title('Airplane Hatch')
% xlabel('Meters')
% ylabel('Meters')

A = input('Enter the current altitude (m) of the bottom of the door: ');
g = 9.81;
dy = abs(y_hatch(2) - y_hatch(1));
P0 = 101353;
outsideforce = 0;
insideforce = 0;

for k = 2:length(x_left)
    extairpressure = P0*(1 - 0.0000225577*(A+y_hatch(k)))^(5.25588);
    force = P0*(1 - 0.0000225577*(A+y_hatch(k)))^(5.25588) * abs((((x_right(k)-x_left(k))+(x_right(k-1)-x_left(k-1)))/2)) * dy;
    outsideforce = outsideforce + force;
end

for k = 2:length(x_left)
    force = (P0) * abs((((x_right(k)-x_left(k))+(x_right(k-1)-x_left(k-1)))/2)) * dy;
    insideforce = insideforce + force;
end

netforce = insideforce - outsideforce;

fprintf('\nExternal Air Pressure on the Hatch at %0.2f meters: %0.2f N',A,extairpressure);
fprintf('\nOutside Force on the Hatch at %0.2f meters: %0.2f N',A,outsideforce);
fprintf('\nInside Force on the Hatch at %0.2f meters: %0.2f N',A,insideforce);
fprintf('\nNet Force on the Hatch at %0.2f meters: %0.2f N',A,netforce);

if netforce <= 350000
    fprintf('\nThis is a safe altitude')
elseif netforce > 350000
    fprintf('\nThis in not a safe altitude')
end















