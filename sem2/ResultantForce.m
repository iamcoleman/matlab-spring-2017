function [ rmag, rangle ] = ResultantForce( forcenum )
% Calculating and Plotting Resultant Force
% Input number of forces and magnitudes, graph resultant force

% forcenum = number of forces
% rmag = resultant magnitude
% rangle = resultant angle

% Usage: >> [rmag, rangle] = ResultantForce(forcenum)

xcompvec = zeros([1 forcenum]);
ycompvec = zeros([1 forcenum]);

correct = 0;

for k = 1:forcenum
    type = input('Enter 1 for rectangular form, Enter 2 for polar form: ');
    if type == 1
        while correct == 0
            xcompvec(k) = input('Enter X-Component of the force: ');
            ycompvec(k) = input('Enter Y-Component of the force: ');
            fprintf('\nX-Component: %0.2f \nY-Component: %0.2f\n',xcompvec(k),ycompvec(k));
            correct = input('\nAre these values correct? (1 for yes, 0 for no): ');
        end
        correct = 0;
    elseif type == 2
        while correct == 0
            angle = input('Enter angle of the force in degrees: ');
            magnitude = input('Enter magnitude of the force: ');
            fprintf('\nAngle: %0.2f \nMagnitude: %0.2f\n',angle,magnitude);
            correct = input('\nAre these values correct? (1 for yes, 0 for no): ');
        end
        correct = 0;
        xcompvec(k) = magnitude*cosd(angle);
        ycompvec(k) = magnitude*sind(angle);
    else
        error('Invalid')
    end
end

rmagx = sum(xcompvec);
rmagy = sum(ycompvec);
rmag = sqrt(rmagx^2+rmagy^2);
if rmagx >= 0 && rmagy >= 0
    rangle = atand(rmagy/rmagx);
elseif rmagx < 0 && rmagy < 0
    rangle = atand(rmagy/rmagx);
else
    rangle = atand(rmagy/rmagx) + 180;
end

figure(1)
clf
for k = 1:forcenum
    plot([0 xcompvec(k)], [0 ycompvec(k)],'k--')
    hold on
end
plot([0 rmagx], [0 rmagy],'b')
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('Resultant Force')
xlabel('X Force')
ylabel('Y Force')

end

