% Coleman Lyski
%
% November 11, 2016
%
% Homework 8
%% Problem 3
clear;clc;home;close all;commandwindow
load HW8
[rA cA] = size(A);
[rB cB] = size(B);
C = zeros([rA cA]);
smallA = 0;
smallB = 0;
same = 0;
for r=1:rA
    for c=1:cA
        if A(r,c) < B(r,c)
            C(r,c) = A(r,c);
            smallA = smallA + 1;
        elseif B(r,c) < A(r,c)
            C(r,c) = B(r,c);
            smallB = smallB + 1;
        else
            C(r,c) = B(r,c);
            same = same + 1;
        end
    end
end
fprintf('A:\n')
disp(A)
fprintf('B:\n')
disp(B)
fprintf('C:\n')
disp(C)
fprintf('\nNumber values in A smaller than B: %i',smallA)
fprintf('\nNumber values in B smaller than A: %i',smallB)
fprintf('\nNumber values in A equal to B: %i',same)
%% Problem 4
clear;clc;home;close all;commandwindow
L1 = input('Enter the length of L1: ');
L2 = input('Enter the length of L2: ');
theta1 = 0:5:90;
theta2 = 0:5:180;
xg = zeros([length(theta1) length(theta2)]);
yg = zeros([length(theta1) length(theta2)]);
% xg = L1*cos(theta1) + L2*cos(theta1+theta2);
% yg = L1*sin(theta1) + L2*sin(theta1+theta2);
for k=1:length(theta1)
    for n=1:length(theta2)
        xg(k,n) = L1*cos((pi*theta1(k))/180) + L2*cos((pi*theta1(k))/180+(pi*theta2(n))/180);
        yg(k,n) = L1*sin((pi*theta1(k))/180) + L2*sin((pi*theta1(k))/180+(pi*theta2(n))/180);
    end
end
figure(1)
clf
plot(xg,yg,'k*')
title('Points Reachable by the Arm')
xlabel('Length of Reach')
ylabel('Height of Reach')
%% Problem 5
clear;clc;home;close all;commandwindow
balance0 = input('Enter initial account balance: ');
interest = input('Enter yearly interest rate as percent: ');
years = input('Enter years of saving: ');
deposits = 100:100:500;
balance = zeros([length(deposits) (years*12)]);
interestrate = interest/100;
for k=1:length(deposits)
    for month=1:(years*12)
        if month==1
            balance(k,month) = balance0*(1+interestrate/12)+deposits(k);
        else
            balance(k,month) = balance(k,month-1)*(1+interestrate/12)+deposits(k);
        end
    end
end
fprintf('\nFinal balance for $100 a month: $%0.2f',balance(1,end))
fprintf('\nFinal balance for $200 a month: $%0.2f',balance(2,end))
fprintf('\nFinal balance for $300 a month: $%0.2f',balance(3,end))
fprintf('\nFinal balance for $400 a month: $%0.2f',balance(4,end))
fprintf('\nFinal balance for $500 a month: $%0.2f',balance(5,end))
months=1:1:(years*12);
figure(1)
clf
plot(months,balance(1,months),months,balance(2,months),months,balance(3,months),months,balance(4,months),months,balance(5,months))
title('Interest on an account with monthly deposits')
xlabel('Number of Months')
ylabel('Money in USD')





























