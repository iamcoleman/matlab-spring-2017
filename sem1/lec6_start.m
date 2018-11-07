% Coleman Lyski
%
% September 26, 2016
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
name=input('Input your name: ','s');
answer='no';
while strcmpi(answer,'no')
    units=menu('Enter Unit Type','SI on Earth','Graviational on Earth','SI on Moon');
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
        x0=input('Enter x0 in meters: ');
        y0=input('Enter y0 in meters: ');
        v0=input('Enter the initial velocity in m/s: ');
    else
        x0=input('Enter x0 in feet: ');
        y0=input('Enter y0 in feet: ');
        v0=input('Enter the initial velocity in ft/s: ');
    end
    cases=input('Enter the number of firing angles: ');
    for counter=1:cases
        thd(counter)=input('Enter the firing angle in degrees: ');
    end;
    ts=input('Enter the number of time steps: ');
    answer=input('Are your inputs correct? Yes/No [yes]: ','s');
    if isempty(answer) || strcmpi(answer,'y') || strcmpi(answer,'ye') || strcmpi(answer,'yes')
        answer='yes';
    else
        answer='no';
    end
end
%
% engineering work
% convert to radians
for counter=1:cases
    thr(counter)=thd(counter)*pi/180;
    % find time for projectile to hit ground
    hit=roots([-.5*g v0*sin(thr(counter)) y0]);
    thit(counter)=max(abs(hit));
    % set time
    t(counter,:)=0:thit(counter)/ts:thit(counter);
    % compute motion
    height(counter,:)=-.5*g*t(counter,:).^2+v0*sin(thr(counter))*t(counter,:)+y0;
    range(counter,:)=v0*cos(thr(counter))*t(counter,:)+x0;
end
% 
% subplots
figure (1)
clf
for counter=1:cases
    subplot(2,1,1)
    plot(t,height(counter,:),'k',t,range(counter,:),'r')
    xlabel('Time (sec)')
    if units==1 || units==3
        ylabel('Height and Distance (meters)')
    else
        ylabel('Height and Distance (feet)')
    end
    title('Height and Distance verses Time')
    legend('height','distance','location','best')
    if max(range)>max(height)
        ymax=max(range);
    else
        ymax=max(height);
    end
    axis([0 max(thit) 0 ymax])
    subplot(2,1,2)
    plot(range,height,'m')
    if units==1 || units==3
        xlabel('Distance (meters)')
        ylabel('Height (meters)')
    else
        xlabel('Distance (feet)')
        ylabel('Height (feet)')
    end
    title('Distance versus Height')
    axis equal
end
%
% formated output
home
fprintf('name: %0s\n',name)
switch units
    case 1
        fprintf('Your input is in SI units on Earth, g = %0.2f m/s^2\n',g)
    case 2
        fprintf('Your input is in gravitation units on Earth, g = %0.2f m/s^2\n',g)
    otherwise
        fprintf('Your input is in SI units on Moon, g = %0.2f m/s^2\n',g)
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