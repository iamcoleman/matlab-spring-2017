% Coleman Lyski
%
% October 4, 2016
%
% Lab 7: Iterative Algorithms Using While Loops
%% Part A
clear; clc; close all; home
commandwindow
num=input('\nEnter the number to estimate the root: ');
est=input('\nEnter an estimate: ');
err=abs(est^5-num);
count=0;
while err>0.0001
    est=est-(est^5-num)/(5*est^4);
    err=abs(est^5-num);
    count=count+1;
end
fprintf('\nThe number is %0.4f',num)
fprintf('\nThe estimate of the 5th root is %0.4f',est)
actroot=(num)^(1/5);
fprintf('\nThe actual 5th root is %0.4f',actroot)
fprintf('\nThe number of times through the loop is %0.0f',count)
%% Part B
clear; clc; close all; home
commandwindow
num=2;
while num>1 && num>-1
    num=input('\nEnter a number between -1 and 1: ');
end
est=0;
prevest=0;
count=1;
diff=1;
n=1;
alt=1;
while diff>0.0001
    A=(-1)^(alt+1);
    prevest=prevest+A*((num)^(n)/(n));
    est=prevest-A*((num)^(n+2)/(n+2));
    diff=abs(est-prevest);
    count=count+1;
    n=n+2;
    alt=alt+1;
end
if num==0
    count=1;
end
fprintf('\nThe estimate of atan of %0.5f is %0.5f radians',num,est)
actatan=atan(num);
fprintf('\nThe actual value of atan of %0.5f is %0.5f radians',num,actatan)
fprintf('\nThe number of terms needed in the Taylor Series is %0.0f',count)