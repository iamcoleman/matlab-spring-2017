% Coleman Lyski
%
% November 8, 2016
%
% Lab 10: Spreading a Virus
%% Part A
clear;home;close all;commandwindow
popColorMap=[0 1 0;1 0 0;0 0 1];
P = [0  1  0  0  1  0  1  1  0  0];
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
            ChanceSick = 0.25*NeighborsSick(day,k);
            if rand(1) < ChanceSick
                New_P(k) = 1;
            end
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
    title('\bfEnd of Day 1','FontSize',12)
    colormap(popColorMap);
    axis equal
    axis tight
    caxis([0 2])
    pause(1);
end
%% Part B
clear;clc;home;close all;commandwindow
P = PopulationMatrix;
popColorMap=[0 1 0;1 0 0;0 0 1];
figure(1)
imagesc(P);
title('\bfBeginning of Day 1','FontSize',12)
colormap(popColorMap);
axis equal
axis tight
caxis([0 2])
pause(1);
size = size(P);
New_P = zeros(size(1),size(2));
NeighborsSick=zeros(size(1),size(2));
sick = find(P==1);
day = 0;
while ~isempty(sick)
    day=day+1;
    for r=1:size(1)
        for c=1:size(2)
            if c==1
                if r==1
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r+1,c)==1 + P(r,c+1)==1;
                    end
                elseif r==size(1)
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r-1,c)==1 + P(r,c+1)==1;
                    end
                else
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r+1,c)==1 + P(r-1,c)==1 + P(r,c+1)==1;
                    end
                end
            elseif c==size(2)
                if r==1
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r,c-1)==1 + P(r+1,c)==1;
                    end
                elseif r==size(1)
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r-1,c)==1 + P(r,c-1)==1;
                    end
                else
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r+1,c)==1 + P(r-1,c)==1 + P(r,c-1)==1;
                    end
                end
            elseif r==1
                if c==1
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r+1,c)==1 + P(r,c+1)==1;
                    end
                elseif c==size(2)
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r+1,c)==1 + P(r,c-1)==1;
                    end
                else
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r,c-1)==1 + P(r,c+1)==1 + P(r+1,c)==1;
                    end
                end
            elseif r==size(1)
                if c==1
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r-1,c)==1 + P(r,c+1)==1;
                    end
                elseif c==size(2)
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r-1,c)==1 + P(r,c-1)==1;
                    end
                else
                    if P(r,c)==0
                        NeighborsSick(r,c) = P(r-1,c)==1 + P(r,c-1)==1 + P(r,c+1)==1;
                    end
                end
            else
                if P(r,c)==0
                    NeighborsSick(r,c) = P(r+1,c)==1 + P(r-1,c)==1 + P(r,c+1)==1 + P(r,c-1)==1;
                end
            end
            if P(r,c)==0 && NeighborsSick(r,c)>0
                ChanceSick = .25*NeighborsSick(r,c);
                if rand(1) < ChanceSick
                    New_P(r,c) = 1;
                end
            elseif P(r,c)==0 && NeighborsSick(r,c)==0
                New_P(r,c)=0;
            else
                New_P(r,c)=2;
            end
        end
    end
popColorMap=[0 1 0;1 0 0;0 0 1];
figure(day+1)
imagesc(New_P);
title(['\bfEnd of Day ' num2str(day)],'FontSize',12)
colormap(popColorMap);
axis equal
axis tight
caxis([0 2])
pause(1);


P=New_P;
sick = find(P==1);
end

immuneL=find(P==2);
immune=length(immuneL);
fprintf('\n\nDays until the virus stops spreading: %i',day)
fprintf('\nNumber of immune people after virus stops spreading: %i',immune)























