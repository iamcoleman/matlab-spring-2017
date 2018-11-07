% put your name here
%
% put today's date here
%
% Lecture 6
%
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
name=input('input your name: ','s');
units=menu('enter unit type','SI on earth','graviational on earth','SI on moon');
% here are three different methods to do the same thing
% method 1
% if units==1
%     g=9.81;
% elseif units==2
%     g=32.2;
% else
%     g=1.625;
% end
% method 2
% switch units
%     case 1
%         g=9.81;
%     case 2
%         g=32.2;
%     otherwise
%         g=1.625;
% end
% method 3
grav=[9.81 32.2 1.625];
g=grav(units);
if units==1 || units==3
    x0=input('enter x0 in meters = ');
    y0=input('enter y0 in meters = ');
    v0=input('enter the initial velocity in m/s = ');
else
    x0=input('enter x0 in feet = ');
    y0=input('enter y0 in feet = ');
    v0=input('enter the initial velocity in ft/s = ');
end
thd=input('enter the firing angle in degrees = ');
ts=input('enter the number of time steps = ');
%
% engineering work
% convert to radians
thr=thd*pi/180;
% find time for projectile to hit ground
hit=roots([-.5*g v0*sin(thr) y0]);
thit=max(abs(hit));
% set time
t=0:thit/ts:thit;
% compute motion
height=-.5*g*t.^2+v0*sin(thr)*t+y0;
range=v0*cos(thr)*t+x0;
% 
% subplots
figure (1)
clf
subplot(2,1,1)
plot(t,height,'k',t,range,'r')
xlabel('time (sec)')
if units==1 || units==3
    ylabel('height and distance (meters)')
else
    ylabel('height and distance (feet)')
end
title('height and distance verses time')
legend('height','distance','location','best')
if max(range)>max(height)
    ymax=max(range);
else
    ymax=max(height);
end
axis([0 thit 0 ymax])
subplot(2,1,2)
plot(range,height,'m')
if units==1 || units==3
    xlabel('distance (meters)')
    ylabel('height (meters)')
else
    xlabel('distance (feet)')
    ylabel('height (feet)')
end
title('distacne versus height')
axis equal
%
% formated output
home
fprintf('name: %0s\n',name)
switch units
    case 1
        fprintf('your input is in SI units on earth, g = %0.2f m/s^2\n',g)
    case 2
        fprintf('your input is in gravitation units on earth, g = %0.2f m/s^2\n',g)
    otherwise
        fprintf('your input is in SI units on moon, g = %0.2f m/s^2\n',g)
end
switch units
    case {1, 3}
        fprintf('x0 = %0.2f m \t y0 = %0.2f m\n',x0,y0)
        fprintf('initial angle = %0.2f degrees fired at %0.2f m/s\n',thd,v0)
        fprintf('\n\nyour output:\n')
        fprintf('time to hit = %0.2f seconds\n',thit)
        fprintf('maximum height = %0.2f meters\n',max(height))
        fprintf('total distance down range = %0.2f meters\n',range(end))
    otherwise
        fprintf('x0 = %0.2f ft\t y0 = %0.2f ft\n',x0,y0)
        fprintf('initial angle = %0.2f degrees fired at %0.2f ft/s\n',thd,v0)
        fprintf('\n\nyour output:\n')
        fprintf('time to hit = %0.2f seconds\n',thit)
        fprintf('maximum height = %0.2f ft\n',max(height))
        fprintf('total distance down range = %0.2f ft\n',range(end))
end