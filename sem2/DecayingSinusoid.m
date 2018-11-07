function [] = DecayingSinusoid( deltaT )
% Just some Decaying Sinusoid
% USAGE: DecayingSinusoid( deltaT )
close all;

load HW4;
t_meas = 0:deltaT:20;
t_act = 0:0.001:20;

% for k = 1:length(t_meas)
%     d_meas(k) = exp(-0.25*t_meas(k))*cos(4*t_meas(k));
% end

d_meas = pos_meas;

for n = 1:length(t_act)
    d_act(n) = exp(-0.25*t_act(n))*cos(4*t_act(n));
end

figure(1)
clf
plot(t_meas,d_meas,'k*',t_act,d_act,'b-')
legend('Measurements','Actual')
title('Displacement - Measurements vs. Actual')
xlabel('Time (s)')
ylabel('Distance (cm)')

for k = 2:length(t_meas);
    estVel(k) = (d_meas(k) - d_meas(k-1))/deltaT;
end

for k = 1:length(t_act)
    actVel(k) = exp(-.25*t_act(k))*(-4*sin(4*t_act(k))-.25*cos(4*t_act(k)));
end

figure(2)
clf
plot(t_meas,estVel,'k*',t_act,actVel,'b-')
legend('Measurements','Actual')
title('Velocity - Measurements vs. Actual')
xlabel('Time (s)')
ylabel('Velocity (cm/s)')

for k = 2:length(t_meas)-1;
    estAcc(k) = (d_meas(k+1) - 2*d_meas(k) + d_meas(k-1))/(deltaT^2);
end

for k = 1:length(t_act)
    actAcc(k) = exp(-t_act(k)/4)*(32*sin(4*t_act(k))-255*cos(4*t_act(k)))/16;
end

t_meas_acc = t_meas(1:end-1);
figure(3)
clf
plot(t_meas_acc,estAcc,'k*',t_act,actAcc,'b-')
legend('Measurements','Actual')
title('Acceleration - Measurements vs. Actual')
xlabel('Time (s)')
ylabel('Acceleration (cm/s^2)')

end