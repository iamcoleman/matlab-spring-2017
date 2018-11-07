% Coleman Lyski
%
% October 18, 2016
%
% Models I Midterm
%% Problem 1
clear; clc; close all; home
commandwindow
t=0:.01:50;
y1=exp(-0.1.*t).*sin(2*pi*4.*t);
y2=exp(-0.1.*t).*cos(2*pi*2.*t);
figure(1)
clf
subplot(3,1,1)
plot(t,y1,t,y2)
title('Graph of both functions')
xlabel('Time (s)')
ylabel('Distance (m)')
legend('Graph of exp(-.1t)*sin(2pi4t)','Graph of exp(-.1t)*cos(2pi2t)','location','northeast')
subplot(3,1,2)
plot(t,y1)
title('Graph of exp(-.1t)*sin(2pi4t)')
xlabel('Time (s)')
ylabel('Distance (m)')
subplot(3,1,3)
plot(t,y2)
title('Graph of exp(-.1t)*cos(2pi2t)')
xlabel('Time (s)')
ylabel('Distance (m)')
%% Problem 2
% Problem 2: Conditional Statements
clear; close all; clc; commandwindow;
% On the line below, write an input statement to ask the user to enter the
% Speed in miles per hour
speed=input('\nEnter speed in miles per hour: ');

% On the line below, write an fprintf statement to show the value of Speed
% with one place behind the decimal point
fprintf('\nThe speed entered is %0.1f mph',speed)

% On the lines below, write a conditional statement to determine and
% display the State based on the Speed entered by the user (see Table)
if speed==0
    fprintf('\n\nThe speed entered indicates - Stopped')
elseif speed > 0 && speed < 20
    fprintf('\n\nThe speed entered indicates - Slow')
elseif speed==20
    fprintf('\n\nThe speed entered indicates - School Zone Limit')
elseif speed > 20 && speed < 55
    fprintf('\n\nThe speed entered indicates - Rural')
elseif speed >= 55 && speed <= 80
    fprintf('\n\nThe speed entered indicates - Highway')
else
    fprintf('\n\nThe speed entered indicates - Unacceptable')
end
%% Problem 3
% Problem 3: For Loops
clear; close all; clc; commandwindow;
% write an input statement to ask for the name of a city
city=input('Enter the name of a city: ','s');

rng('shuffle');
% The lines below generate a vector, T, of temperatures.  
% The vector, T, will have N entries
N = input('Enter the number of entries in T: ');
T = randi([68 95],[1 N]);
disp(T);
% On the lines below, write your code to determine the minimum 
% temperature in the vector T.  You must use a for loop!
r=1;
l=length(T);
for r=1:N
    temps = sort(T);
end

% On the line below, write your fprintf statement to display the city and the minimum
% temperature as an integer
fprintf('\nThe minumum temperature in %s was %i',city,temps(1));
fprintf('\nThe maximum temperature in %s was %i',city,temps(N));