                           %%%%%%%%%%%%%%%%%%%
                           %  Coleman Lyski  %
                           %%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Pizza Calculator                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; clc; close all; home
commandwindow

diameter = input('\nEnter Diameter of Pizza in inches: ');
price = input('Enter Price of Pizza: ');

area = pi*(diameter/2)^2;
area8 = pi*16;

priceperinch = price/area;
numof8 = area/area8;

fprintf('\nPrice per Square Inch: $%0.2f/in^2',priceperinch);
fprintf('\nNumber of 8-inch Pizzas: %0.1f',numof8);