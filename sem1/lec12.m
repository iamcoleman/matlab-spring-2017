% Coleman Lyski
%
% November 14, 2016
%
% Lecture 12
clear;close all;clc;home;commandwindow
load FlightData
days=min(F.Day):max(F.Day);
for d=1:length(days)
    day=find(strcmpi(F.Airport,'CVG') & F.Day==days(d));
    maxdelay(d)=max(F.Delay(day));
end
figure(1)
clf
plot(days,maxdelay,'r*')
title('max delay in CVG')
xlabel('Day in november 2015')
ylabel('Delay in minutes')