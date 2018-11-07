function [Keq, x1, x2] = Springs_Series(K1, K2, F)
% K. Ossman 1/4/2017
% This function computes the equivalent spring constant and displacements
% of two springs connected in series.  Inputs are the two spring constants
% K1 and K2 and the applied force, F.
% Usage: >> [Keq, x1, x2] = Springs_Series(200,800,5)

Keq = 1/(1/K1 + 1/K2);
x1 = F/K1;
x2 = F/K2;

end

