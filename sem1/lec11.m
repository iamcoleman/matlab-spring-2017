% Coleman Lyski
%
% November 5, 2016
%
% Lecture 11
clear;home;close all;commandwindow
popColorMap=[0 1 0;1 0 0;0 0 1];
P=[0 1 0 0 1 0 1 1 0 1 0 0 0 0 1 0 0 0 0 1];
figure(1)
imagesc(P);
title('\bfBeginning of Day 1','FontSize',12)
colormap(popColorMap);
axis equal
axis tight
caxis([0 2])
pause(1);
n=length(P);
New_P=zeros(1,n);
NeighborsSick=zeros(1,n);
sick=find(P==1);
day=1;
while ~isempty(sick)
    for k=1:n
        if k==1
            if P(day,k)==0
                NeighborsSick(day,k)=(P(day,k+1)==1);
            end
        elseif k==n
            if P(day,k)==0
                NeighborsSick(day,k)=(P(day,k-1)==1);
            end
        else
            if P(day,k)==0
                NeighborsSick(day,k)=(P(day,k-1)==1)+(P(day,k+1)==1);
            end
        end
        if P(day,k)==0 && NeighborsSick(day,k)>0
            New_P(k)=randi([0 1],1); %Change for Lab
        elseif P(day,k)==0 && NeighborsSick(day,k)==0
            New_P(k)=0;
        else
            New_P(k)=2;
        end
    end
    day=day+1;
    P(day,:)=New_P;
    sick=find(P(day,:)==1);
    figure(day)
    imagesc(P(day,:));
    title('\bfEnd of Day','FontSize',12)
    colormap(popColorMap);
    axis equal
    axis tight
    caxis([0 2])
    pause(1);
end