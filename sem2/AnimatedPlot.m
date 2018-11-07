function [] = AnimatedPlot(t, y, p)
% Animated Plot
% Animates the plotting of a graph

% x = Values that go on the x-axis
% y = Values that go on the y-axis
% p = The desired time increment between plotting each data point

% Usage: >> AnimatedPlot(t, y, 0.1)

plotxlab = input('Enter the x label for the graph: ','s');
plotylab = input('Enter the y label for the graph: ','s');
plottitle = input('Enter the title of the graph: ','s');

figure(1)
clf
plot(t(1),y(1),'b*')
title(plottitle)
xlabel(plotxlab)
ylabel(plotylab)
axis([min(t) max(t) min(y) max(y)])
hold on
pause(p)
for z = 2:length(t)
    plot(t(z),y(z),'b*')
    pause(p)
end

end

