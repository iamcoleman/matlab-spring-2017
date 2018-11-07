%%%%%%%%%%%%%
% Lecture 7 %
%%%%%%%%%%%%%
%% Example 2
clear; clc; close all; home
commandwindow

t = 0:.5:2;
D = [1 1.6 2.7 4.5 7.4];

% Left Riemann Sum
for k = 1:length(t)-1
    Areas(k) = (t(k+1) - t(k))*D(k);
end
LRS_Est = sum(Areas);

LRS_Est = 0;
for k = 1:length(t)-1
    LRS_Est = LRS_Est + (t(k+1) - t(k))*D(k);
end
fprintf('The Left Riemann Sum estimate is %0.4f\n',LRS_Est);

% Right Riemann Sum
clear Areas
for k = 2:length(t)
    Areas(k) = (t(k) - t(k-1))*D(k);
end
RRS_Est = sum(Areas);
fprintf('The Right Riemann Sum estimate is %0.4f\n',RRS_Est);

% Trapezoid Sum
clear Areas
for k = 1:length(t)-1
   Areas(k) = (t(k+1) - t(k))*((D(k)+D(k+1))/2);
end
Trap_Est = sum(Areas);
fprintf('The Trapezoid Sum estimate is %0.4f\n',Trap_Est);

    