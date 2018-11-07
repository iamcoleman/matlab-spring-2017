clear; clc; close all; home
commandwindow

x = '19';
y = '';

fprintf('x variable: %s \n',x);
fprintf('y variable: %s \n',y);

a = str2double(x);
if isempty(y) == 1
    b = 0;
else
    b = str2double(y);
end

fprintf('a variable: %f \n',a);
fprintf('b variable: %f \n',b);