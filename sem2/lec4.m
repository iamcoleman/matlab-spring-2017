% Coleman Lyski
% January 31, 2017
% Lecture 4
%% Pendulum
clear; clc; close all; home
commandwindow

syms f m g L In;

LH = 2*pi*f;             % Left Hand Side
RH = sqrt((m*g*L)/In);   % Right Hand Side

result = solve(LH == RH,L);

m = 0.5;
In = 0.03;
g = 9.81;
f = 1;

result_vals = double(subs(result));

%% Mesh Analysis
clear; clc; close all; home
commandwindow

syms R1 R2 R3 I1 I2;

Loop1 = (R1 + R2)*I1 - R2*I2;
Loop2 = -R2*I1 + (R2 + R3)*I2;

Currents = solve(Loop1 == 12,Loop2 == 0,I1,I2);

pretty(Currents.I1)
pretty(Currents.I2)