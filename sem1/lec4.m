% Coleman Lyski
%
% September 12, 2016
%
% Lecture 4
clear; close all; home
%
% program to calculate height and range
% projectile motion
%
% variables:
% (x0,y0) - initial position
% ts - time step
% thd - firing angle in degrees
% v0 - firing velocity
% g - gravitational constant
% thr - firing angle in radians
% t - time vector
% thit - time for projectile to hit ground
% height - height of projectile
% range - distance down range of projectile
%
% input section
x0=0;
y0=0;
ts=100;
thd=45;
v0=100;
g=9.81;
% engineering work
% convert to radians
thr=thd*pi/180;
% find time for projectile to hit ground
hit=roots([-.5*g v0*sin(thr) x0]);
thit=max(abs(hit));
% set time vector
t=0:thit/ts:thit;
% compute motion
height=-.5*g*t.^2+v0*sin(thr)*t+y0;
range=v0*cos(thr)*t+x0;
% output section
% plots

% formatted output
