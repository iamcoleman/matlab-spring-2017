function [] = GeometricSeries2(r)
% Projectile2
% Graphs projectile motion

% v0 = Initial velocity
% theta = Launch angle
% y0 = Initial launch height

% Usage: >> [] = GeometricSeries2(r)

if abs(r) >= 1
    error('Will not converge. \nThe absolute value of r must be less than %i.',1)
end
sum = 1/(1-r);
diff = abs(r - sum);
k = 1;
while diff > 0.001
    if k == 1
        newsum(1) = 1;
    else
        newsum(k) = newsum(k-1) + r^(k-1);
    end
    diff = abs(newsum(k) - sum);
    k = k + 1;
end

t = 1:length(newsum);
y = newsum;
AnimatedPlot(t, y, 0.1)


end