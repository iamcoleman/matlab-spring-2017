% Coleman Lyski
%
% September 27, 2016
%
% Foundations - Electricity
t=0:10:110
cc=[0 .478 .778 .972 1.128 1.218 1.278 1.319 1.315 1.317 1.387 1.397]
cd=[1.406 1.121 .788 .539 .368 .248 .170 .121 .085 .059 .041 .029]
vcap=1.457*(1-exp((-t)/22))
vdis=1.397*exp(-t/22)
figure(1)
clf
subplot(2,1,1)
plot(t,cc,t,vcap)
xlabel('Time (sec)')
ylabel('Voltage (V)')
title('Capacitor Voltage (Charging) vs. Time')
legend('Measured','Theoretical','location','best')
subplot(2,1,2)
plot(t,cd,t,vdis)
xlabel('Time (sec)')
ylabel('Voltage (V)')
title('Capacitor Voltage (Discharging) vs. Time')
legend('Measured','Theoretical','location','best')

