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