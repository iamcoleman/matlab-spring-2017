function [P] = PopulationMatrix( )
% Create a 10x10 population matrix with 10 randomly placed sick people that
% are not in first or last row or first of last column.
rng(1);
P = zeros(10);
n = randperm(64,10);   
% 10 unique values from 1 to 64 - position of sick people
Pmiddle = zeros(8);
Pmiddle(n) = 1;    % Add 10 Sick People
P(2:9,2:9) = Pmiddle;
end


