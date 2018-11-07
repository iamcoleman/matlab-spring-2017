function [] = NumDiff( deltaT )
% Estimates velocity and acceleration of a robot arm with two links
% USAGE: [] = NumDiff( deltaT )

close all;

Th1_0 = 81.866;
Th2_0 = -157.8084;
q1 = -0.00388;
q2 = 0.09711;
q3 = -0.64740;
r1 = 0.00471;
r2 = -0.11772;
r3 = 0.78480;

t = 0:deltaT:10;
k = 2:length(t);
n = 1:length(t);

% Base Angle
Th1 = Th1_0 + q1*t.^5 + q2*t.^4 + q3*t.^3;

% Joint Angle
Th2 = Th2_0 + r1*t.^5 + r2*t.^4 + r3*t.^3;

% Estimate Velocity 1
estVel1 = (Th1(k) - Th1(k-1))/deltaT;
estVel1 = [0 estVel1];

% Estimate Velocity 2
estVel2 = (Th2(k) - Th2(k-1))/deltaT;
estVel2 = [0 estVel2];

% Actual Velocity 1
Vel1 = 5*q1*t.^4 + 4*q2*t.^3 + 3*q3*t.^2;

% Actual Velocity 2
Vel2 = 5*r1*t.^4 + 4*r2*t.^3 + 3*r3*t.^2;

figure(1)
clf
plot(t,estVel1,t,Vel1)
title('Estimated and Actual Base Velocity')
xlabel('Time (s)')
ylabel('Velocity (deg/s)')
legend('Estimated','Actual')

figure(2)
clf
plot(t,estVel2,t,Vel2)
title('Estimated and Actual Joint Velocity')
xlabel('Time (s)')
ylabel('Velocity (deg/s)')
legend('Estimated','Actual')

% Velocity 1 Error
for n = 1:length(t)
    Vel1err(n) = abs((Vel1(n) - estVel1(n))/Vel1(n));
end
maxVel1err = max(Vel1err);

% Velocity 2 Error
for n = 1:length(t)
    Vel2err(n) = abs((Vel2(n) - estVel2(n))/Vel2(n));
end
maxVel2err = max(Vel2err);

figure(3)
clf
plot(t,Vel1err,'k*',t,Vel2err,'b*')
title('Estimation Error for Each Velocity')
xlabel('Time (s)')
ylabel('Velocity (deg/s)')
legend('Velocity 1 Error','Velocity 2 Error')

fprintf('\nMaximum estimation error for the base angular velocity: %0.2f deg/s',maxVel1err);
fprintf('\nMaximum estimation error for the joint angular velocity: %0.2f deg/s',maxVel2err);

k2 = 2:length(t)-1;
k3 = 1:length(t)-1;

% Estimate Acceleration 1
estAcc1 = (Th1(k2+1) - 2*Th1(k2) + Th1(k2-1))/(deltaT^2);
estAcc1 = [0 estAcc1];

% Estimate Acceleration 2
estAcc2 = (Th2(k2+1) - 2*Th2(k2) + Th2(k2-1))/(deltaT^2);
estAcc2 = [0 estAcc2];

% Actual Acceleration 1
Acc1 = 20*q1*t.^3 + 12*q1*t.^2 + 6*q3*t;

% Actual Acceleration 2
Acc2 = 20*r1*t.^3 + 12*r1*t.^2 + 6*r3*t;

figure(4)
clf
plot(k3,estAcc1,t,Acc1)
title('Estimated and Actual Base Acceleration')
xlabel('Time (s)')
ylabel('Velocity (deg/s^2)')
legend('Estimated','Actual')

figure(5)
clf
plot(k3,estAcc2,t,Acc2)
title('Estimated and Actual Joint Acceleration')
xlabel('Time (s)')
ylabel('Velocity (deg/s^2)')
legend('Estimated','Actual')

% Acceleration 1 Error
for n = 1:length(t)-2
    Acc1err(n) = abs((Acc1(n) - estAcc1(n))/Acc1(n));
end
maxAcc1err = max(Acc1err);

% Acceleration 2 Error
for n = 1:length(t)-2
    Acc2err(n) = abs((Acc2(n) - estAcc2(n))/Acc2(n));
end
maxAcc2err = max(Acc2err);

n2 = 1:length(t)-2;

figure(6)
clf
plot(n2,Acc1err,'k*',n2,Acc2err,'b*')
title('Estimation Error for Each Acceleration')
xlabel('Time (s)')
ylabel('Velocity (deg/s^2)')
legend('Acceleration 1 Error','Acceleration 2 Error')

fprintf('\n\nMaximum estimation error for the base angular acceleration: %0.2f deg/s^2',maxAcc1err);
fprintf('\nMaximum estimation error for the joint angular acceleration: %0.2f deg/s^2',maxAcc2err);

end

