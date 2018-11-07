% Coleman Lyski
%
% October 17, 2016
%
% Debug
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