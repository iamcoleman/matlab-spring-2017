% Coleman Lyski
%
% January 17, 2017
%
% Lec 2
%% Numba 1
% 2x + 3y = -8
% 3x + y = 9
% x = [x; y]
clear; clc; close all; home
commandwindow

A = [2 3; 3 1];
b = [-8; 9];

detA = det(A); % Can't equal 0

if detA ~= 0
    x = inv(A)*b;
else
    error('You done fucked up boy')
end

fprintf('\n\nx = %f\n',x(1))
fprintf('y = %f\n',x(2))

%% Numba 2
% x + 2y - 5z = -8
% 3x + y + 4z = 9
% x + 2y - z = 0
% x = [x; y; z]
clear; clc; close all; home
commandwindow

A = [1 2 -5; 3 1 4; 1 2 -1];
b = [-8; 9; 0];

detA = det(A); % Can't equal 0

if detA ~= 0
    x = inv(A)*b;
else
    error('You done fucked up boy')
end

fprintf('\n\nx = %f\n',x(1))
fprintf('y = %f\n',x(2))
fprintf('z = %f\n',x(3))

%% NumBa Tree
% 10x + 20y + 20z = 100 Vitamin C
% 50x + 40y + 10z = 300 Calcium
% 30x + 10y + 40z = 200 Magnesium
% x = [x; y; z]
clear; clc; close all; home
commandwindow

A = [10 20 20; 50 40 10; 30 10 40];
b = [100; 300; 200];

detA = det(A);

if detA ~= 0
    x = inv(A)*b;
else
    error('You done fucked up boy')
end

fprintf('\n\nFood 1 = %f\n',x(1))
fprintf('Food 2 = %f\n',x(2))
fprintf('Food 3 = %f\n',x(3))



