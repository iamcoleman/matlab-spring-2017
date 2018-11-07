% Coleman Lyski
%
% September 6, 2016
%
% Lab 3
%
%% Problem A
% A.1
year = xlsread('UNdata','b2:b25')
% A.2
co2_can = xlsread('UNdata','c2:c25')
pop_can = xlsread('UNdata','d2:d25')
% A.4
figure(1)
clf
plot(year,co2_can,'k*')
% A.7
figure(2)
clf
plot(year-1990,co2_can,'k*')
xlabel('Year - 1990')
ylabel('CO2 Emissions in Gigagrams (Gg)')
% A.10
figure(3)
clf
plot(year-1990,co2_can./pop_can,'k*')
xlabel('Year - 1990')
ylabel('CO2 Emissions in Gigagrams/Population (Gg)')
% A.13
coef4 = polyfit(year-1990,co2_can,4)
co2_fit = polyval(coef4,year-1990)
co2_data = co2_can
co2_average = mean(co2_data)
R2 = 1 - ((sum((co2_data - co2_fit).^2)/(sum((co2_data - co2_average).^2))))
% A.16
coef5 = polyfit(year-1990,co2_can./pop_can,2)
co2_fit2 = polyval(coef5,year-1990)
co2_data2 = co2_can
co2_average2 = mean(co2_data)
R22 = 1 - ((sum((co2_data2 - co2_fit2).^2)/(sum((co2_data2 - co2_average2).^2))))
%% Problem B
clear
home
clc
year = xlsread('UNdata','b2:b25')
co2_can = xlsread('UNdata','c2:c25')
pop_can = xlsread('UNdata','d2:d25')
co2_ger = xlsread('UNdata','C26:C49')
pop_ger = xlsread('UNdata','D26:D49')
co2_new = xlsread('UNdata','C50:C73')
pop_new = xlsread('UNdata','D50:D73')
co2_usa = xlsread('UNdata','C74:C97')
pop_usa = xlsread('UNdata','D74:D97')
figure(1)
clf
plot(year,co2_can,year,co2_ger,year,co2_new,year,co2_usa)
xlabel('Year')
ylabel('CO2 Emissions in Gigagrams (Gg)')
title('CO2 Emissions per Year')
legend('CO2 Canada','CO2 Germany','CO2 New Zealand','CO2 USA','location','best')
figure(2)
clf
plot(year,co2_can./pop_can,year,co2_ger./pop_ger,year,co2_new./pop_new,year,co2_usa./pop_usa)
xlabel('Year')
ylabel('CO2 Emissions in Gigagrams (Gg) per Person')
title('CO2 Emissions per Person')
legend('CO2 Canada per Person','CO2 Germany per Person','CO2 New Zealand per Person','CO2 USA per Person','location','best')