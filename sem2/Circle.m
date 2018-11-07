function [x0, y0, radius] = Circle(x1, y1, x2, y2, x3, y3)
% Three Points to Circle
% Input three non linear points that are then used to draw a circle

% x1, y1 = point one
% x2, y2 = point two
% x3, y3 = point three
% x0, y0 = coordinates of the center of circle

% Usage: >> [x0, y0, radius] = Circle(x1, y1, x2, y2, x3, y3)

mid1 = [(x1+x2)/2 (y1+y2)/2]; % [x y] of midpoint between p1 and p2
mid2 = [(x2+x3)/2 (y2+y3)/2]; % [x y] of midpoint between p2 and p3

slope1 = (y2 - y1)/(x2 - x1); % slope of line between p1 and p2
slope2 = (y3 - y2)/(x3 - x2); % slope of line between p1 and p2

perpslope1 = -(1/slope1); % slope of line perpendicular to line between p1 and p2
perpslope2 = -(1/slope2); % slope of line perpendicular to line between p2 and p3

% (y - y1) = m(x - x1)
% (y - mid1(2)) = perpslope1(x - mid1(1))
% y = perpslope1*x + (perpslope1*(-mid1(1)) + mid1(2))
% b1 = perpslope1*(-mid1(1)) + mid1(2)

b1 = perpslope1*(-mid1(1)) + mid1(2);
b2 = perpslope2*(-mid2(1)) + mid2(2);

A = [-perpslope1 1; -perpslope2 1];
b = [b1; b2];

detA = det(A); % Can't equal 0

if detA ~= 0
    intersect = inv(A)*b;
else
    error('Det of A is zero')
end

x0 = intersect(1);
y0 = intersect(2);

radius = sqrt((x0 - x1)^2 + (y0 - y1)^2);

end

