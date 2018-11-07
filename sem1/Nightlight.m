%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nightlight.m - Your team members' names - Date
% Description: 
% Usage: 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Circuit Connections:
% 5V connected to photocell
% AGND connected to 10k, 1k resistor
% AI0+ connected to series connection of photocell/10k resistor
% AI0- connected to AGND
% AO0 connected to LED
% LED connected in series to 1k resistor
% photocell connected in series to 10k resistor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clean up and move to command window
clear all; close all; clc; commandwindow;
% set up communication to DAQ device
fprintf('Setting up connection to DAQ...\n');
devices_found = daq.getDevices;
if isempty(devices_found)
    error('No devices connected: please connect a DAQ device and rerun.');
end
% Set up DAQ Connection to Device
DAQ_Vendor = devices_found.Vendor.ID;                   % determine type of device connected
DAQ_ID = devices_found.ID;                              % determine ID for connected device
DAQ = daq.createSession(DAQ_Vendor);                    % create DAQ session
DAQ.addAnalogInputChannel(DAQ_ID,0,'Voltage');          % add input voltage channel to get voltage value from photocell
DAQ.addAnalogOutputChannel(DAQ_ID,0,'Voltage');         % add output voltage channel to control LED
DAQ.outputSingleScan(0);                                % ensure DAQ output is 0V
fprintf('Connection established...\n');
% indicates the DAQ has been configured and the nightlight process begun
fprintf('Nightlight started...\n');                 % indicates that the nightlight process has started
fprintf('Connect pin AI0+ to AGND to terminate\n'); % instructs how to terminate process
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% begin nightlight process

% INSERT CODE HERE FOR NIGHTLIGHT PROCESS, PART E



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% turn off LED
DAQ.outputSingleScan(0);
fprintf('Nightlight is off...\n');


















