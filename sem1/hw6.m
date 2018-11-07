% Coleman Lyski
%
% October 28, 2016
%
% HW 6
%% Problem 2
clear; clc; close all; home
commandwindow
num=input('\nEnter the number to estimate the root: ');
est=input('\nEnter an estimate: ');
err=abs(est^5-num);
count=0;
vec=[];
while err>0.0001
    est=est-(est^5-num)/(5*est^4);
    err=abs(est^5-num);
    count=count+1;
    vec=[vec; est];
end
fprintf('\nThe number is %0.4f',num)
fprintf('\nThe estimate of the 5th root is %0.4f',est)
actroot=(num)^(1/5);
fprintf('\nThe actual 5th root is %0.4f',actroot)
fprintf('\nThe number of times through the loop is %0.0f',count)
figure(1);
clf;
plot(1:count,vec,'*')
title('Plot of Estimates')
xlabel('Number of Estimate')
ylabel('Estimate of 5th Root')
%% Problem 3
clear; clc; close all; commandwindow
rng('shuffle');
num = randi([1 100],1);
guessnum = 0;
N=0;
while N==0
    guess=input('\n\nGuess a number between 1 and 100: ');
    if guess < num
        if guessnum > 7
            N=1;
            fprintf('\nSorry, you lose.')
        end
        fprintf('\nHigher')
        guessnum = guessnum+1;
    elseif guess > num
        if guessnum > 7
            N=1;
            fprintf('\nSorry, you lose.')
        end
        fprintf('\nLower')
        guessnum = guessnum+1;
    elseif guess == num
        if guessnum > 7
            N=1;
            fprintf('\nSorry, you lose.')
        end
        fprintf('\nCORRECT!!!!!!')
        N=1;
        guessnum = guessnum+1;
        fprintf('\nIt took you %i guesses',guessnum)
    else
        fprintf('\nInvalid Guess')
    end
end
    















