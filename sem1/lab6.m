% Coleman Lyski
%
% September 27, 2016
%
% Lab 6
%% Flipping a Coin
clear; close all; clc; home
rng('shuffle');
heads=0;
tails=0;
flips=input('\nHow many times to flip the coin: ');
for counter=1:flips
    outcome(counter)=randi([1 2],1);
    if outcome(counter)==1
        heads=heads+1;
    else
        tails=tails+1;
    end
end
% if flips<11
%     fprintf('Flips: %0.0i\n',outcome)
% end
fprintf('\nFor %0.0f flips',flips)
fprintf('\nThe number of heads flipped: %0.0f  With a probability of %0.4f%%',heads,heads/flips*100)
fprintf('\nThe number of tails flipped: %0.0f  With a probability of %0.4f%%\n',tails,tails/flips*100)
%% Effects of Tolerance on a System
clear; close all; clc; home
rng('shuffle');
g=9.81;
goodsus=0;
badsus=0;
mv=input('Enter the mass of the vehicle in kg: ');
ms=input('Enter the mass of the suspension in kg: ');
ks=input('Enter the nominal spring constant for the shock in N/m: ');
kt=input('Enter the nominal spring constant for the tire in N/m: ');
ts=input('Enter the tolerance of the shock spring constant as a percent: ');
tt=input('Enter the tolerance of the tire spring constant as a percent: ');
maxd=input('Enter the maximum allowable displacement of the vehicle in m: ');
tests=input('Enter the number of tests to run: ');
for count=1:tests
    ksactual(count)=(ks*(ts/100)*randn(1)+ks);
    ktactual(count)=(kt*(ts/100)*randn(1)+kt);
    y1(count)=((mv*g*.25)/ksactual(count));
    y2(count)=((mv*g*.25+ms*g*.25)/ktactual(count));
    ytotal=y1(count)+y2(count);
    if ytotal<maxd
        goodsus=goodsus+1;
    else
        badsus=badsus+1;
    end
end
probgoodsus=(goodsus/tests)*100;
probbadsus=(badsus/tests)*100;
fprintf('\nFor a vehicle with mass of: %0.0f kg',mv)
fprintf('\nAnd a shock stiffness tolerance of: %0.0f%%',ts)
fprintf('\nAnd a tire stiffness tolerance of: %0.0f%%',tt)
fprintf('\nThe probabilty of a good suspension is: %0.2f%%',probgoodsus)
fprintf('\nThe probabilty of a bad suspension is: %0.2f%%',probbadsus)























