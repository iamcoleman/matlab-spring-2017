% Coleman Lyski
%
% September 6, 2016
%
% Homework 2
% Ea = 5.6574e4
%% Problem 2
home
clear
close all
t = xlsread('HydrogenPeroxide','a2:a37');
c_300k_can = xlsread('HydrogenPeroxide','b2:b37');
c_304k_can = xlsread('HydrogenPeroxide','c2:c37');
c_308k_can = xlsread('HydrogenPeroxide','d2:d37');
c_312k_can = xlsread('HydrogenPeroxide','e2:e37');
c_316k_can = xlsread('HydrogenPeroxide','f2:f37');
figure(1)
clf
plot(t,c_300k_can,'k*')
figure(2)
clf
plot(t,log(c_300k_can),'k*')
xlabel('Time (s)')
ylabel('Concentration of Hydrogen Peroxide')
coef1_300k=polyfit(t,log(c_300k_can),1)
figure(3)
clf
plot(t,log(c_304k_can),'k*')
xlabel('Time (s)')
ylabel('Concentration of Hydrogen Peroxide')
coef1_304k=polyfit(t,log(c_304k_can),1)
figure(4)
clf
plot(t,log(c_308k_can),'k*')
xlabel('Time (s)')
ylabel('Concentration of Hydrogen Peroxide')
coef1_308k=polyfit(t,log(c_308k_can),1)
figure(5)
clf
plot(t,log(c_312k_can),'k*')
xlabel('Time (s)')
ylabel('Concentration of Hydrogen Peroxide')
coef1_312k=polyfit(t,log(c_312k_can),1)
figure(6)
clf
plot(t,log(c_316k_can),'k*')
xlabel('Time (s)')
ylabel('Concentration of Hydrogen Peroxide')
coef1_316k=polyfit(t,log(c_316k_can),1)
%% Problem 3
clear
clc
home
k = [-14.5203 -19.574 -26.238 -34.578 -45.902]
T = [300 304 308 312 316]
invT = 1./T
t = xlsread('HydrogenPeroxide','a2:a37')
figure(1)
clf
plot(invT,log(k),'k*')
title('Inv Temp vs. Log of k')
xlabel('Inverse of Tempurature (K^-^1)')
ylabel('Natural Log of Reaction Rate (ln(k))')