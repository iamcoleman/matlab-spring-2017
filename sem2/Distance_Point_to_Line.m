function [distance] = Distance_Point_to_Line(m1, b1, x2, y2)
% Distance from a Point to a Line
% Draws a perpendicular line from the point to the line,
% and then solves for the distance between the two.

% m1 = slope of given line
% b1 = y-intercept of given line
% x2 = x value of given point
% y2 = y value of given point

% Usage: >> [distance] = Distance_Point_to_Line(m1, b1, x2, y2)

m2 = -(1/m1);
% (y - y2) = m2(x - x2)
% y = m2(x - x2) + y2
% y = m2*x + [(m2*-x2 + y2)] [b2]
b2 = (m2*(-x2)) + y2;

% equation 1 -> y = m1x + b1 -> y - m1x = b1
% equation 2 -> y = m2x + b2 -> y - m2x = b2

A = [-m1 1; -m2 1];
b = [b1; b2];

detA = det(A); % Can't equal 0

if detA ~= 0
    intersect = inv(A)*b;
else
    error('Det of A is zero')
end

x1 = intersect(1);
y1 = intersect(2);

distance = sqrt((x1 - x2)^2 + (y1 - y2)^2);

end

