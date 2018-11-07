function [ ] = Robot( Tf, x0, y0, xf, yf, L1, L2 )
% This function calculates the angular position, velocity, and acceleration
% of a two part robot arm.

% Tf = Amount of time required to move the gripper from the initial 
%      position to the final position
% x0 = Initial x-coordinate of gripper
% y0 = Initial y-coordinate of gripper
% xf = Final x-coordinate of gripper
% yf = Final y-coordinate of gripper
% L1 = Length of first arm
% L2 = Length of second arm

% USAGE: Robot(Tf,x0,y0,xf,yf,L1,L2)
%        Robot(10,2,6,10,0,9,3)

maxreach = L1 + L2;
minreach = abs(L1-L2);
distance_to_initial = sqrt((x0)^2 + (y0)^2);
distance_to_final = sqrt((xf)^2 + (yf)^2);

if distance_to_initial > maxreach || distance_to_initial < minreach
    if distance_to_final > maxreach || distance_to_final < minreach
        error('Both positions can not be reached')
    end
    error('Initial position can not be reached')
elseif distance_to_final > maxreach || distance_to_final < minreach
    error('Final position can not be reached')
else
end

syms Th1_0 Th2_0
xg0 = L1*cos(Th1_0) + L2*cos(Th1_0+Th2_0);
yg0 = L1*sin(Th1_0) + L2*sin(Th1_0+Th2_0);
initialSoln = solve(xg0 == x0, yg0 == y0, Th1_0, Th2_0);
Th1_0 = double(initialSoln.Th1_0)*180/pi;
Th1_0 = Th1_0(1);
Th2_0 = double(initialSoln.Th2_0)*180/pi;
Th2_0 = Th2_0(1);


syms Th1_F Th2_F
xgf = L1*cos(Th1_F) + L2*cos(Th1_F+Th2_F);
ygf = L1*sin(Th1_F) + L2*sin(Th1_F+Th2_F);
finalSoln = solve(xgf == xf, ygf == yf, Th1_F, Th2_F);
Th1_F = double(finalSoln.Th1_F)*180/pi;
Th1_F = Th1_F(1);
Th2_F = double(finalSoln.Th2_F)*180/pi;
Th2_F = Th2_F(1);


Aq = [Tf^5 Tf^4 Tf^3; 5*Tf^4 4*Tf^3 3*Tf^2; 20*Tf^3 12*Tf^2 6*Tf];
bq = [(Th1_F-Th1_0); 0; 0];
detAq = det(Aq); % Can't equal 0
if detAq ~= 0
    q = inv(Aq)*bq; %#ok<MINV>
else
    error('Determinate of Aq = 0')
end

Ar = [Tf^5 Tf^4 Tf^3; 5*Tf^4 4*Tf^3 3*Tf^2; 20*Tf^3 12*Tf^2 6*Tf];
br = [(Th2_F-Th2_0); 0; 0];
detAr = det(Ar); % Can't equal 0
if detAr ~= 0
    r = inv(Ar)*br; %#ok<MINV>
else
    error('Determinate of Ar = 0')
end


t = 0:Tf/100:Tf;

Th1 = Th1_0 + q(1)*t.^5 + q(2)*t.^4 + q(3)*t.^3;
Vel_Th1 = 5*q(1)*t.^4 + 4*q(2)*t.^3 + 3*q(3)*t.^2;
Acc_Th1 = 20*q(1)*t.^3 + 12*q(2)*t.^2 + 6*q(3)*t;

Th2 = Th2_0 + r(1)*t.^5 + r(2)*t.^4 + r(3)*t.^3;
Vel_Th2 = 5*r(1)*t.^4 + 4*r(2)*t.^3 + 3*r(3)*t.^2;
Acc_Th2 = 20*r(1)*t.^3 + 12*r(2)*t.^2 + 6*r(3)*t;

figure(1)
clf
subplot(3,1,1)
plot(t,Th1,t,Th2)
xlabel('Time (s)')
ylabel('Angular Positions')
subplot(3,1,2)
plot(t,Vel_Th1,t,Vel_Th2)
xlabel('Time (s)')
ylabel('Angular Velocity')
subplot(3,1,3)
plot(t,Acc_Th1,t,Acc_Th2)
xlabel('Time (s)')
ylabel('Angular Acceleration')

xj = L1*cosd(Th1);
yj = L1*sind(Th1);
xg = L1*cosd(Th1) + L2*cosd(Th1 + Th2);
yg = L1*sind(Th1) + L2*sind(Th1 + Th2);

figure(2)
clf
plot([0 xj(1)],[0 yj(1)],'ko-',[xj(1) xg(1)],[yj(1) yg(1)],'ko-','LineWidth',4)
axis([-(L1+L2) L1+L2 -(L1+L2) L1+L2])
title('Robot Arm Animation')
hold on
pause(Tf/100)
for z = 2:length(t)
    plot([0 xj(z)],[0 yj(z)],'ko-',[xj(z) xg(z)],[yj(z) yg(z)],'ko-','LineWidth',4)
    pause(Tf/100)
end

end

