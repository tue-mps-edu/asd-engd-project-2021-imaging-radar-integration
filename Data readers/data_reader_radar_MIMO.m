%% Script to read and plot 3D point cloud data 
%%% Applicable to read the data captured in MIMO configuration %%%%

% clear;
clc; close all

%%% Load the raw data (Uncomment the following to read the saved .mat file of the data)
%%% Otherwise, run the 'cascade_MIMO_signalProcessing.m' code to get the data
%%% in your workspace

% load('MIMO_LR3.mat');

%% Visualize
%%% This plots the last frame data
figure;
scatter3(xyz(:,1), xyz(:,2), xyz(:,3), 'filled');
xlabel('x [m]');
ylabel('y [m]');
zlabel('z [m]');

%%% Placing the data of all frames in one variable for combined data (it is valid only for the static scenarios)
no_frames = length(xyz_all);
total_data = [];
for i = 1:no_frames
    total_data = [total_data; xyz_all{1,i}(:,1:3);];
end

%%% This plots the combined frame data
figure;
scatter3(total_data(:,1), total_data(:,2), total_data(:,3), 'filled');
xlabel('x [m]');
ylabel('y [m]');
zlabel('z [m]');

%% Save it as .csv

%%% don't forget to change the name of the file you want to save. We
%%% recommend to use the name similar to the test log. 
pos3D = xyz(:,1:3);
writematrix(pos3D, '3D_point_single_frame_TR6_test2.csv')
pos3D = total_data(:,1:3);
writematrix(pos3D, '3D_point_all_frames_TR6_test2.csv')

%% Visualize as animation (only for dynamic objects)
%%% This visualization is for playing multiple frames of the captured data

% Initialize video
myVideo = VideoWriter('myVideoFile'); %open video file
myVideo.FrameRate = 10;  %can adjust this, 5 - 10 works well for me
open(myVideo)

figure;
for i=1:no_frames
    figure(1);
    scatter(xyz_all{1,i}(:,1), xyz_all{1,i}(:,2), 'filled');
    axis([-5  5    0  20]);
    grid on;
    xlabel('x [m]');
    ylabel('y [m]');
    pause(1)
    frame = getframe(gcf); %get frame
    writeVideo(myVideo, frame);
end

close(myVideo)
