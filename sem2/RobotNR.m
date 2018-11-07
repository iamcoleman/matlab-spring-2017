function [th1f, th2f, count, rms] = RobotNR(xg,yg,L1,L2,th1,th2)
% RobotNR uses multiple inputs to find the number of iterations
% Th1_Soln and Th2_Soln and the final RMS value.
% Plots the 2-link robot arm using the last estimate for the base and
% joint angles, the number of iterations vs the base and joint angles,
% the number of iterations vs the base angle estimate, and the number 
% of iterations vs. the joint angle estimates.

% USAGE: [th1f, th2f, count, rms] = RobotNR(7, 7, 5, 5, 10, 10)

close all
MaxReach=L1+L2;
MinReach=abs(L1-L2);
d=sqrt(xg^2+yg^2);
if d>MaxReach || d<MinReach
    error('the position cannot be reached');
end
count=0;
f1=L1*cosd(th1)+L2*cosd(th1+th2)-xg;
f2=L1*sind(th1)+L2*sind(th1+th2)-yg;
J=[-L1*sind(th1)-L2*(sind(th1+th2)) -L2*sind(th1+th2); L1*cosd(th1)+L2*cosd(th1+th2) L2*cosd(th1+th2)];
F=[f1; f2];
rms=1;
k=1;
Vth1(k)=th1;
Vth2(k)=th2;
while count<1000 && rms>0.01
    if abs(det(J))<0.01
       th1=th1-1;
       th2=th2-1;
    end
    F=[f1; f2];
    J=[-L1*sind(th1)-L2*(sind(th1+th2)) -L2*sind(th1+th2); L1*cosd(th1)+L2*cosd(th1+th2) L2*cosd(th1+th2)];
    th=[th1; th2];
    
    th=th-inv(J)*F;
    k=k+1;
    count=count+1;
    th1=th(1);
    th2=th(2);
    Vth1(k)=th1;
    Vth2(k)=th2;
    f1=L1*cosd(th1)+L2*cosd(th1+th2)-xg;
    f2=L1*sind(th1)+L2*sind(th1+th2)-yg;
    
    rms=sqrt((F(1)^2+F(2)^2)/2);
end
th1f=Vth1(end);
th2f=Vth2(end);
basex=L1*cosd(th1f);
basey=L1*sind(th1f);
jointx=L1*cosd(th1f)+L2*cosd(th1f+th2f);
jointy=L1*sind(th1f)+L2*sind(th1f+th2f);
plot([0 basex],[0 basey],[basex jointx],[basey jointy]);
title('Final Gripper Position');
xlabel('X Position');
ylabel('Y Position');

figure
plot(1:count,Vth1(1:count));
xlabel('Iterations');
ylabel('Base angle');
title('Base angle over time');

figure
plot(1:count,Vth2(1:count));
xlabel('Iterations');
ylabel('Joint Angle');
title('Joint angle over time');
end