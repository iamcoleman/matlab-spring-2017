% Coleman Lyski
%
% November 5, 2016
%
% Lab 12
%% Part C.1
clear;clc;home;close all;commandwindow
load('Weather.mat')
startyear = 1950;
endyear = 2016;
n = 1;
for y = startyear:1:endyear
    april = find(W.Year == y & W.Month == 4);
    aprilrain(n) = mean(W.Prcp(april));
    n = n + 1;
end
figure(1)
clf
plot(startyear:endyear,aprilrain,'b*--')
xlabel('Year')
ylabel('Average Rainfall in Inches')
title('Average Daily Rainfall in April')
[maxrain,maxyear] = max(aprilrain);
fprintf('\n\nThe highest average rainfall was %0.2f inches and it occurred in %i',maxrain,1949+maxyear)
%% Part C.2
clear;clc;home;close all;commandwindow
load('Weather.mat')
startyear = 1950;
endyear = 2015;
n = 1;
for y = startyear:1:endyear
    snow = find(W.Year == y & W.Snow > -1);
    totsnow(n) = sum(W.Snow(snow));
    n = n + 1;
end
figure(1)
clf
plot(startyear:endyear,totsnow,'b*--')
xlabel('Year')
ylabel('Total Snowfall in Inches')
title('Total Snowfall per Year')
[maxsnow,maxyear] = max(totsnow);
[minsnow,minyear] = min(totsnow);
avgsnow = (sum(totsnow)/n);
fprintf('\n\nThe greatest total snowfall was %0.2f inches and it occurred in %i',maxsnow,1949+maxyear)
fprintf('\nThe smallest total snowfall was %0.2f inches and it occurred in %i',minsnow,1949+minyear)
fprintf('\nThe average snowfall over the %i year period was %0.2f inches',n-1,avgsnow)
%% Part C.3
clear;clc;home;close all;commandwindow
load('Weather.mat')
startyear = 1950;
endyear = 2015;
n = 1;
for y = startyear:1:endyear
    for m = 1:12
        snow = find(W.Year == y & W.Month == m & W.Snow > -1);
        totsnow(m,y-1949) = sum(W.Snow(snow));
        n = n + 1;
    end
end
fprintf('\nMaxiumum Snowfall in January: %0.2f inches',max(totsnow(1,:)))
fprintf('\nMaxiumum Snowfall in Febuary: %0.2f inches',max(totsnow(2,:)))
fprintf('\nMaxiumum Snowfall in March: %0.2f inches',max(totsnow(3,:)))
fprintf('\nMaxiumum Snowfall in April: %0.2f inches',max(totsnow(4,:)))
fprintf('\nMaxiumum Snowfall in May: %0.2f inches',max(totsnow(5,:)))
fprintf('\nMaxiumum Snowfall in June: %0.2f inches',max(totsnow(6,:)))
fprintf('\nMaxiumum Snowfall in July: %0.2f inches',max(totsnow(7,:)))
fprintf('\nMaxiumum Snowfall in August: %0.2f inches',max(totsnow(8,:)))
fprintf('\nMaxiumum Snowfall in September: %0.2f inches',max(totsnow(9,:)))
fprintf('\nMaxiumum Snowfall in October: %0.2f inches',max(totsnow(10,:)))
fprintf('\nMaxiumum Snowfall in November: %0.2f inches',max(totsnow(11,:)))
fprintf('\nMaxiumum Snowfall in December: %0.2f inches',max(totsnow(12,:)))

[maxmonth maxyear] = find(totsnow == max(max(totsnow)));
fprintf('\n\nThe maximum snowfall occurred in month %i of year %i',maxmonth,maxyear+1949)































































