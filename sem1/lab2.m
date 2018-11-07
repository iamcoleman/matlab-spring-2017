% Coleman Lyski
%
% August 30, 2016
%
% Lab 2
%% Problem 2
clear
home
g = 32.2
D = .4
L = .4:.1:10
fro = (pi*(D/2)^2)*sqrt(2*g*(L-(D/2)))
figure(1)
clf(1)
plot(L,fro)
title('Flow Rate Out')
xlabel('Liquid Level (ft)')
ylabel('Flow Rate Out (ft^3/s)')
%% Problem 3
clear
home
Ea = 75300
A = 100000000000
R = 8.314
T = [302.594 308.15 313.706]
k = A*exp((-Ea)./(R*T))
k1 = k(1,1)
k2 = k(1,2)
k3 = k(1,3)
Co = 20
t = 0:1:(5/k1);
C1 = Co*exp((-k1)*(t))
C2 = Co*exp((-k2)*(t))
C3 = Co*exp((-k3)*(t))
figure(1)
clf(1)
plot(t,C1,t,C2,t,C3)
legend('85^oF','95^oF','105^oF','Location','best')
xlabel('Time (s)')
ylabel('Concentration of Hydrogen Peroxide (mols/L)')
title('Decomposition of Hydrogen Peroxide')