% Coleman Lyski
%
% December 7, 2016
%
% Final Exam
clear; close all; home; commandwindow
rng(1);
rows = input('How many rows? ');
cols = input('How many cols? ');
M = randi([1 10],[rows cols]);
newM = zeros(rows,cols);
for r = 1:rows
    for c = 1:cols
        if r == 1
            newM(r,c) = sum(M(r,c+1:cols)==2) + sum(M(r,c+1:cols)==5);
        else
            newM(r,c) = sum(M(r,c+1:cols)==2) + sum(M(r,c+1:cols)==5) + sum(M(1:r-1,c)==2) + sum(M(1:r-1,c)==5);
        end
    end
end
fprintf('\nOriginal matrix M: \n')
disp(M);
fprintf('\nNew matrix M: \n')
disp(newM);