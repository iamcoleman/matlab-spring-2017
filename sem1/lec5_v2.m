% Coleman Lyski
%
% September 12, 2016
%
% Lecture 4
clear; close all; home
%
% program to calculate height and range
% projectile motion
%
% variables:
% (x0,y0) - initial position
% ts - time step
% thd - firing angle in degrees
% v0 - firing velocity
% g - gravitational constant
% thr - firing angle in radians
% t - time vector
% thit - time for projectile to hit ground
% height - height of projectile
% range - distance down range of projectile
%
% input section
name = input('Enter your name ','s');
units=menu('Unit Type','SI on Earth','Grav on Earth','SI on Moon');
% if units==1
%     g=9.81
% elseif units==2
%     g=32.2
% else
%     g=1.625
% end
switch units
    case 1
        g=9.81
    case 2
        g=32.2
    otherwise
        g=1.625
end
if units==1 || units==3
    x0 = input('Enter the value for x0 in meters = ');
    y0 = input('Enter the value for y0 in meters = ');
    v0 = input('Enter value for firing velocity in m/s = ');
else
    x0 = input('Enter the value for x0 in feet = ');
    y0 = input('Enter the value for y0 in feet = ');
    v0 = input('Enter value for firing velocity in ft/s = ');
end
ts = input('Enter the number time steps = ');
thd = input('Enter value for firing angle in degrees = ');
% engineering work
% convert to radians
thr=thd*pi/180;
% find time for projectile to hit ground
hit=roots([-.5*g v0*sin(thr) x0]);
thit=max(abs(hit));
% set time vector
t=0:thit/ts:thit;
% compute motion
height=-.5*g*t.^2+v0*sin(thr)*t+y0;
range=v0*cos(thr)*t+x0;
% output section
% plots
figure(1)
clf
subplot(2,1,1)
plot(t,range,'k',t,height,'r')
xlabel('Time (s)');
if units==1 || units==3
    ylabel('Range and Height (m)');
else
    ylabel('Range and Height (ft)');
end
title('Range and Height vs Time');
legend('Range','Height','location','best');
if max(range)>max(height)
    ymax=max(range)
else
    ymax=max(height)
end
axis([0 thit 0 ymax])
subplot(2,1,2)
plot(range,height)
if units==1 || units==3
    xlabel('Range (m)');
else
    xlabel('Range (ft)');
end
if units==1 || units==3
    ylabel('Height (m)');
else
    ylabel('Height (ft)');
end
title('Projectile Motion');
axis equal
% formatted output
home
fprintf('Name: %0s\n',name)
fprintf('\n\nYour input:\n')
if units==1 || units==3
    fprintf('x0 = %0.2f m \t y0 = %0.2f m\n',x0,y0)
else
    fprintf('x0 = %0.2f ft \t y0 = %0.2f ft\n',x0,y0)
end
if units==1 || units==3
    fprintf('Initial angle and velocity = %0.2f degrees fired at %0.2f m/s\n',thd,v0)
else
    fprintf('Initial angle and velocity = %0.2f degrees fired at %0.2f ft/s\n',thd,v0)
end
fprintf('\n\nYour output:\n')
fprintf('The time it took to hit the ground = %0.2f seconds\n',thit)
if units==1 || units==3
    fprintf('The maximum height = %0.2f meters\n',max(height))
else
    fprintf('The maximum height = %0.2f feet\n',max(height))
end
if units==1 || units==3
    fprintf('The total distance down range = %0.2f meters\n',max(range))
else
    fprintf('The total distance down range = %0.2f feet\n',max(range))
end