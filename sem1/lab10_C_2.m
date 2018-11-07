% Coleman Lyski
%
% November 5, 2016
%
% Lab 10 - Part C
% housekeeping
clear;home;close all;commandwindow;
% get a population of healthy and sick people
% will return a 10x10 matrix of zeros and ones
% there will be 10 sick people identified by ones
People=PopulationMatrix;
% lines 13 - 21 are to plot the original population
popColorMap=[0 1 0;1 0 0;0 0 1];
figure(1)
imagesc(People);
title('\bfBeginning of Day 1','FontSize',12)
colormap(popColorMap);
axis equal
axis tight
caxis([0 2])
pause(1);
% preallocate for speed
[rowPeople,colPeople]=size(People);
New_P=zeros(rowPeople,colPeople);
NeighborsSick=zeros(rowPeople,colPeople);
% start actual analysis
day=1;
% determine if there are any sick people
sick=find(People==1);
while ~isempty(sick)
    % make sure NeighborsSick is all zeros
    New_NeighborsSick=zeros(rowPeople,colPeople);
    % starting with row 1, go to each column and determine if the person
    % has a sick neighbor
    % continue with each row until the last person
    for row=1:rowPeople
        for column=1:colPeople
            if People(row,column,day)==0
                if row==1 && column==1
                    New_NeighborsSick(row,column)=(People(1,column+1,day)==1)+(People(row+1,1,day)==1);
                elseif row==1 && column==colPeople
                    New_NeighborsSick(row,column)=(People(1,column-1,day)==1)+(People(row+1,colPeople,day)==1);
                elseif row==rowPeople && column==1
                    New_NeighborsSick(row,column)=(People(rowPeople,column+1,day)==1)+(People(rowPeople-1,1,day)==1);
                elseif row==rowPeople && column==colPeople
                    New_NeighborsSick(row,column)=(People(rowPeople,colPeople-1,day)==1)+(People(rowPeople-1,colPeople,day)==1);
                elseif row==1
                    New_NeighborsSick(row,column)=(People(row,column-1,day)==1)+(People(row,column+1,day)==1)+(People(row+1,column,day)==1);
                elseif row==rowPeople
                    New_NeighborsSick(row,column)=(People(row,column-1,day)==1)+(People(row,column+1,day)==1)+(People(row-1,column,day)==1);
                elseif column==1
                    New_NeighborsSick(row,column)=(People(row-1,column,day)==1)+(People(row+1,column,day)==1)+(People(row,column+1,day)==1);
                elseif column==colPeople
                    New_NeighborsSick(row,column)=(People(row-1,colPeople,day)==1)+(People(row+1,colPeople,day)==1)+(People(row,colPeople-1,day)==1);
                else
                    New_NeighborsSick(row,column)=(People(row-1,column,day)==1)+(People(row,column+1,day)==1)+(People(row+1,column,day)==1)+(People(row,column-1,day)==1);
                end
            end
            % after finding a person who has at least one sick neighbor
            % determine if that person gets sick
            if People(row,column,day)==0 && New_NeighborsSick(row,column)>0
                Chance_Sick=.25*(New_NeighborsSick(row,column)-1)+.25;
                if rand(1)<Chance_Sick
                    New_P(row,column)=1;
                end
                % if the person has no sick neighbors then they can't get
                % sick so they remian healthy
            elseif People(row,column,day)==0 && New_NeighborsSick(row,column)==0
                New_P(row,column)=0;
                % if the person was sick they can't get sick again so they
                % become immune
            else
                New_P(row,column)=2;
            end
        end
    end
    % index day by 1
    NeighborsSick(:,:,day)=New_NeighborsSick(:,:);
    day=day+1;
    % update the People Matrix by adding a new page (3rd dimension) to
    % People Matrix.  Each new page represents the status of the population
    % at the end of the day
    People(:,:,day)=New_P;
    % determine if any people are still sick
    sick=find(People(:,:,day)==1);
    % generate plot for the end of that day
    figure(day)
    imagesc(People(:,:,day));
    title(['\bfEnd of Day ' num2str(day-1)],'FontSize',12)
    colormap(popColorMap);
    axis equal
    axis tight
    caxis([0 2])
    pause(1);
end
fprintf('the number of days for the virus to be out of class is %0i\n',day-1)
fprintf('the number of students who were sick is %0i\n',sum(sum(People(:,:,day)==2)))
fprintf('the number of students who did not get sick is %0i\n',sum(sum(People(:,:,day)==0)))