% Coleman Lyski
%
% December 7, 2016
%
% Final Exam
clear; close all; home; commandwindow
rng(1);
level = 5;
flowrate = 0.75*randn([1 50]);
etime = 10;
n = 1;
newlevel = zeros(1,length(flowrate)+1);
newlevel(1) = level;
while level < 9.5 & level > 0.5 & n <= 50
    newlevel(n+1) = newlevel(n) + flowrate(n)*etime/12.6;
    n = n+1;
end
fprintf('\n\nThe final level of liquid in the tank: %0.2f ft.',newlevel(n))
if newlevel(n) >= 9.5
    fprintf('\nThe liquid level is Too High')
elseif newlevel <= 0.5
    fprintf('\nThe liquid level is Too Low')
else
    fprintf('\nThe liquid level is Good')
end
figure(1)
clf
plot(0:length(newlevel)-1,newlevel,'b')
title('Level of Liquid vs. Time')
ylabel('Level of Liquid (ft.)')
xlabel('Time (10 seconds)')