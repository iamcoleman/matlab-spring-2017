% Coleman Lyski
%
% November 5, 2016
%
% Lab 11: Traffic
%% Part B
clear;clc;home;close all;commandwindow
l_road = 25;
num_car = 5;
car_sp = [4 3 3 5 1];
loc = [1 6 8 12 20];
p = 0.1;
maxspeed = 5;
road = zeros([1 l_road]);
for it=1:3
   for car=1:num_car
       if car_sp(car) < maxspeed
           car_sp(car) = car_sp(car) + 1;
       end
       if car < num_car
           dis2car = loc(car+1) - loc(car);
       elseif car == num_car
           dis2car = l_road - loc(car) + loc(1);
       end
%        fprintf('Iteration: %i\n Car: %i\n Distance: %i\n\n',it,car,dis2car)
       if car_sp(car) >= dis2car
           car_sp(car) = dis2car - 1;
       end
%        if it==2 %change
%            if car==3
%                car_sp(car) = car_sp(car) - 1;
%            end
%        end
%        if it==3 %change
%            if car==2
%                car_sp(car) = car_sp(car) - 1;
%            end
%        end
       loc(car) = loc(car) + car_sp(car);
       if loc(car) > l_road
           loc(car) = loc(car) - l_road;
           loc = circshift(loc,1,2);
           car_sp = circshift(car_sp,1,2);
       end
       fprintf('Iteration: %i\n Car: %i\n Speed: %i\n Location: %i\n\n',it,car,car_sp(car),loc(car))
    end
end

%% Part C
clear;clc;home;close all;commandwindow
l_road = input('Enter the length of the road: ');
num_car = input('Enter the number of cars on the road: ');
maxspeed = input('Enter maximum speed: ');
p = input('Enter probability of car slowing down: ');
iterations = input('Enter the number of iterations: ');
rng('shuffle');
loc = randperm(l_road,num_car);
loc = sort(loc);
car_sp = randi([1 maxspeed],1,num_car);
roadway = ones(iterations,l_road)*255;
for it=1:iterations
    for car=1:num_car
        % Step 1
        if car_sp(it,car) < maxspeed
            car_sp(it+1,car) = car_sp(it,car) + 1;
        else
            car_sp(it+1,car) = car_sp(it,car);
        end
        % Step 2
        if car < num_car
            if loc(it,car) + car_sp(it+1,car) >= loc(it,car+1)
                car_sp(it+1,car) = loc(it,car+1) - loc(it,car) - 1;
            end
        else
            if loc(it,car) + car_sp(it+1,car) - l_road >= loc(it,1)
                car_sp(it+1,car) = loc(it,1) + (l_road - loc(it,car)) - 1;
            end
        end
        % Step 3
        if rand(1) <= p && car_sp(it+1,car) > 0
            car_sp(it+1,car) = car_sp(it+1,car) - 1;
        end
        % Step 4
        loc(it+1,car) = loc(it,car) + car_sp(it+1,car);
        if loc(it+1,car) > l_road
            loc(it+1,car) = loc(it+1,car) - l_road;
            loc(it+1,:) = circshift(loc(it+1,:),1,2);
            car_sp(it+1,:) = circshift(car_sp(it+1,:),1,2);
        end
        % fprintf('Iteration: %i  Car: %i  Speed: %i  Location: %i \n',it,car,car_sp(car),loc(car))
    end
    roadway(it,loc(it+1,:))=0;
end
imshow(uint8(roadway));

































