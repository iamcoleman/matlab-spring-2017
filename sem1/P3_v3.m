% Problem 3: For Loops
clear; close all; clc; commandwindow;
% write an input statement to ask for the name of a city
city=input('Enter the name of a city: ','s');

rng('shuffle');
% The lines below generate a vector, T, of temperatures.  
% The vector, T, will have N entries
N = input('Enter the number of entries in T: ');
T = randi([68 95],[1 N]);
disp(T);
% On the lines below, write your code to determine the minimum 
% temperature in the vector T.  You must use a for loop!
r=1;
l=length(T);
for r=1:N
    temps = sort(T);
end

% On the line below, write your fprintf statement to display the city and the minimum
% temperature as an integer
fprintf('\nThe minumum temperature in %s was %i',city,temps(1));
fprintf('\nThe maximum temperature in %s was %i',city,temps(N));
