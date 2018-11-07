% Coleman Lyski
%
% November 4, 2016
%
% Homework 7
%% Problem 3
clear; clc; close all; home
commandwindow
load HW7
k=1;
z = zeros(1,length(t));
tcount = 0;
vcount = 0;
scount = 0;
numtcount = 0;
numvcount = 0;
numscount = 0;
for k=1:length(t)
    if t(k)<v(k)
        z(k)=t(k);
        tcount = tcount+1;
        numtcount = numtcount + 1;
        numt(numtcount) = k;
    elseif v(k)<t(k)
        z(k)=v(k);
        vcount = vcount+1;
        numvcount = numvcount + 1;
        numv(k) = k;
    else
        z(k)=t(k);
        scount = scount+1;
        numscount = numscount + 1;
        nums(numscount) = k;
    end
end
fprintf('\nVector z:')
disp(z)
fprintf('\nEntries in t smaller than v: %i',tcount)
fprintf('\nEntries in v smaller than t: %i',vcount)
fprintf('\nEntries that are the same: %i',scount)
fprintf('\n\nValues of k where where t(k) is smaller than v(k):')
disp(numt)
fprintf('\nValues of k where t(k) equals v(k):')
disp(nums)
%% Problem 4
clear; clc; close all; home
commandwindow
t = xlsread('Height.xlsx','A3:A103');
h50 = xlsread('Height.xlsx','B3:B103');
h75 = xlsread('Height.xlsx','C3:C103');
h100 = xlsread('Height.xlsx','D3:D103');
h125 = xlsread('Height.xlsx','E3:E103');
htot = xlsread('Height.xlsx','B3:E103');
figure(1)
clf
plot(t,h50,t,h75,t,h100,t,h125)
title('Height vs. Time for 4 Different Velocities')
xlabel('Time (s)')
ylabel('Height (m)')
legend('50m/s','75m/s','100m/s','125m/s','Location','best')














