% Coleman Lyski
%
% October 24, 2016
%
% Midterm I Solution
%% Problem 1
clear; clc; close all; home
sigma=0.1;
omega=2;
t=0:-5/-sigma/1000:-5/-sigma;
y1=exp(-sigma*t).*sin(2*pi*2*omega*t);
y2=exp(-sigma*t).*sin(2*pi*omega*t);
plot(t,y1,'k',t,y2,'r')
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
clear; close all; clc; commandwindow;
% write an input statement to ask for the name of a city
city=input('Enter the name of a city: ','s');

rng('shuffle');
% The lines below generate a vector, T, of temperatures.  
% The vector, T, will have N entries
N = input('Enter the number of entries in T: ');
T = randi([-20 110],[1 N]);
disp(T);
% On the lines below, write your code to determine the minimum 
% temperature in the vector T.  You must use a for loop!
maxT=T(1);
minT=T(1);
for counter=2:N
    if T(counter)>maxT
        maxT=T(counter);
    end
    if T(counter)<minT
        minT=T(counter);
    end
end

% On the line below, write your fprintf statement to display the city and the minimum
% temperature as an integer
fprintf('\nThe minimum temperature in %s was %i',city,minT);
fprintf('\nThe maximum temperature in %s was %i',city,maxT);
















