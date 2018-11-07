% Coleman Lyski
% Febuary 8, 2017
% Homework 3
%% Problem 1
clear; clc; close all; home
commandwindow

A = [-cosd(30) 0 cosd(60) 0 0 0; -sind(30) 0 -sind(60) 0 0 0; cosd(30) 1 0 0 0 1; sind(30) 0 0 1 0 0; 0 -1 -cosd(60) 0 0 0; 0 0 sind(60) 0 1 0]
b = [0; 1000; 0; 0; 0; 0]

detA = det(A); % Can't equal 0

if detA ~= 0
    forces = inv(A)*b; %#ok<MINV>
    fprintf('F1 = %0.2f lbs\n',forces(1));
    fprintf('F2 = %0.2f lbs\n',forces(2));
    fprintf('F3 = %0.2f lbs\n',forces(3));
    fprintf('V2 = %0.2f lbs\n',forces(4));
    fprintf('V3 = %0.2f lbs\n',forces(5));
    fprintf('H2 = %0.2f lbs\n',forces(6));
else
    error('Det of A is zero')
end

%% Problem 2
clear; clc; close all; home
commandwindow

syms g t V0 theta y0 y;

LH = 0;
RH = (-0.5)*g*t^2 + V0*sin(theta)*t + y0;

result = solve(LH == RH,t);
result

%% Problem 3
clear; clc; close all; home
commandwindow;

syms y g t v0 theta y0 x x0;

yLH = y;
yRH = (-0.5)*g*t^2 + v0*sin(theta)*t + y0;
xLH = x;
xRH = v0*cos(theta)*t + x0;

result = solve(yLH == yRH,xLH == xRH,v0,theta);
result.v0;
result.theta;

x0 = 0;
y0 = 10;
x = 2000;
y = 250;
t = 25;
g = 9.81;

result_vals_v0 = double(subs(result.v0));
result_vals_theta = double(subs(result.theta));

v0_1 = result_vals_v0(1);
v0_2 = result_vals_v0(2);
angle_1 = result_vals_theta(1)*(180/pi);
angle_2 = result_vals_theta(2)*(180/pi);

%% Problem 3 pt. 2
clear; clc; close all; home
commandwindow;

x0 = 0;
y0 = 10;
g = 9.81;
t = 1:1:26;

theta = 58.8248;
v0 = 154.5427;

y(t) = (-0.5)*g*(t-1).^2 + v0*sind(theta).*(t-1) + y0;
x(t) = v0*cosd(theta).*(t-1) + x0;

figure(1)
clf
plot(x,y,'k*')
title('Position of Projectile')
ylabel('Vertical Position')
xlabel('Horizontal Position')

%% Problem 4
clear; clc; close all; home
commandwindow;

syms y g t v0 theta y0 x x0;

yLH = y;
yRH = (-0.5)*g*t^2 + v0*sin(theta)*t + y0;
xLH = x;
xRH = v0*cos(theta)*t + x0;

x0 = 0;
y0 = 10;
g = 9.81;
v0 = 225;

result = solve(250 == yRH, 2000 == xRH, theta, t);
result.theta;
result.t; 

% result_vals_v0 = double(subs(result.t));
% result_vals_theta = double(subs(result.theta));
% 
% result_vals_v0
% result_vals_theta





















