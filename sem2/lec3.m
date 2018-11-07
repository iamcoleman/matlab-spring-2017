%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lecture 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Statics
clear; clc; close all; home
commandwindow

A = [cosd(138.6) cosd(45.6); sind(138.6) sind(45.6)];
b = [0; 500];

detA = det(A); % Can't equal 0

if detA ~= 0
    forces = inv(A)*b; %#ok<MINV>
    fprintf('F1 = %0.2f lbs\n',forces(1));
    fprintf('F2 = %0.2f lbs\n',forces(2));
else
    error('Det of A is zero')
end

%% Circuit Analysis
clear; clc; close all; home
commandwindow

A = [3.2e3 -2.2e3 0; -2.2e3 11.1e3 -3.3e3; 0 -3.3e3 8e3];
b = [9; 0; -6];

detA = det(A); % Can't equal 0

if detA ~= 0
    currents = inv(A)*b; %#ok<MINV>
    fprintf('I1 = %0.3f mA\n',currents(1)*1000);
    fprintf('I2 = %0.3f mA\n',currents(2)*1000);
    fprintf('I3 = %0.3f mA\n',currents(3)*1000);
else
    error('Det of A is zero')
end




