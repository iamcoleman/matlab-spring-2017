function [k, d] = Reaction(A, Ea, T, C0)
% Reaction function
% The function should calculate the reaction rate (k) and decomposition time (5/k) using the input arguments and Arrhenius? Equation.

% A = Frequency Factor (A) in Hz
% Ea = Activation Energy (Ea) in J/mol
% T = Absolute Temperature (T) in K
% C0 = Initial Concentration (Co) in M

% k = Reaction Rate (k) in seconds
% d = Decomposition Time (5/k) in seconds

% Usage: >> [k, d] = Reaction(10^11, 7.5*10^4, 325, 10)

k = A*exp((-Ea)/(8.314*T));
d = 5/k;

t = 0:0.01:d;
C = C0*exp(-k.*t);
figure(1)
clf
plot(t,C)
title('Concentration (C) vs. Time (s)')
xlabel('Time (s)')
ylabel('Concentration (C)')

end

