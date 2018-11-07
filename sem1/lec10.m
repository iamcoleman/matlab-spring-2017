% Coleman Lyski
%
% October 31, 2016
%
% Lecture 10
%% Nesty
clear; clc; close all; home;
commandwindow;
k=1;
while k<=2
    fprintf('k = %0i\n',k)
    for l=1:2
        fprintf('k = %0i, l = %0i\n',k,l)
        for m=1:2
            fprintf('k = %0i, l = %0i, m = %0i\n',k,l,m)
            for n=1:2
                fprintf('k = %0i, l = %0i, m = %0i, n = %0i\n',k,l,m,n)
                for o=1:2
                    fprintf('k = %0i, l = %0i, m = %0i, n = %0i, o = %0i\n',k,l,m,n,o)
                end
            end
        end
    end
    k=k+1;
end
%% Pro-G
clear; clc; close all; home;
commandwindow;
a=randi([1 10],[3 3]);
b=randi([1 10],[3 3]);
[rowa,cola]=size(a);
[rowb,colb]=size(b);
if cola == rowb
    fprintf('\nThis will work\n')
    c = zeros(cola,rowb);
    for rowc=1:rowa
        for colc=1:colb
            fprintf('\nc(%0i,%0i)',rowc,colc)
            for k=1:rowb
                c(rowc,colc)=c(rowc,colc)+a(rowc,k)*b(k,colc)
            end
        end
    end
else
    fprintf('\nThe inner indices must be equal\n')
end
truec = a*b;
if truec == c
    fprintf('\nCorrect!')
else
    fprinft('\nIncorrect')
end