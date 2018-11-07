% Coleman Lyski
%
% October 5, 2016
%
% HW 5
%% Problem 3
clear; close all; home
load HighTemp;
commandwindow
days=length(HighTemp);
da80=0;
da6080=0;
da4060=0;
da2040=0;
da20=0;
n=1;
k=1;
for n = 1:days
    if HighTemp(k) >= 80
        da80=da80+1;
    elseif HighTemp(k) >= 60
        da6080=da6080+1;
    elseif HighTemp(k) >= 40
        da4060=da4060+1;
    elseif HighTemp(k) >= 20
        da2040=da2040+1;
    else
        da20=da20+1;
    end
    k=k+1;
end
pda80=(da80/days)*100;
pda6080=(da6080/days)*100;
pda4060=(da4060/days)*100;
pda2040=(da2040/days)*100;
pda20=(da20/days)*100;
fprintf('\nNumber of days over 80 degrees: %0.0i days',da80)
fprintf('\nPercentage of days over 80 degrees: %0.1f%%',pda80)
fprintf('\n\nNumber of days over 60 degrees: %0.0i days',da6080)
fprintf('\nPercentage of days over 60 degrees: %0.1f%%',pda6080)
fprintf('\n\nNumber of days over 40 degrees: %0.0i days',da4060)
fprintf('\nPercentage of days over 40 degrees: %0.1f%%',pda4060)
fprintf('\n\nNumber of days over 20 degrees: %0.0i days',da2040)
fprintf('\nPercentage of days over 20 degrees: %0.1f%%',pda2040)
fprintf('\n\nNumber of days under 20 degrees: %0.0i days',da20)
fprintf('\nPercentage of days under 20 degrees: %0.1f%%',pda20)
%% Problem 5
clear; close all; home
commandwindow
n=input('enter number of terms: ');
t=1:n;
k=2;
x=2;
psum(1:n)=0;
psum(1)=1;
for k = 2:n
    psum(k)=psum(k-1)+(1/x);
    k=k+1;
    x=2*x;
end
fprintf('\n\nThe total is %0.6f',psum(n))
figure(1)
clf
plot(t,psum,'k*')


























