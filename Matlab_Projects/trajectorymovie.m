% Movie of a flying projectile

function trajectorymovie
% Function to make a movie of the trajectory of a projectile
close all
V0 = 1;         % Launch speed
theta = 75;     % Launch angle
c = 0.2;        % Drag coefficient
time_interval = 0.005;	% time interval between movie frames
max_time = 1;           % Max time of simulation.
theta = theta*pi/180;	% convert theta to radians
w0 = [0;0;V0*cos(theta);V0*sin(theta)];
options = odeset('Events', @(t,w) events(t,w));
[t_vals, sol_vals] = ode45(@(t,w) odefunc(t,w,c),...
                        [0:time_interval:max_time], w0, options);

    for i = 1:length(t_vals)
        clf % Clear the frame
        plot(sol_vals(:,1), sol_vals(:,2)) % Plot the trajectory as a line
        hold on
    % The projectile is simply a single point on an x-y plot
    plot(sol_vals(i,1), sol_vals(i,2), 'ro', 'MarkerSize', 20, 'MarkerFaceColor', 'r')
        axis square
        pause(0.1);     % This waits for a short time between frames
    end
    
end

function dydt = odefunc(t,w,c)
    x = w(1);   y = w(2);   vx = w(3);  vy = w(4);
    vmag = sqrt(vx^2 + vy^2);
    dydt = [vx;vy;-c*vx*vmag;-9.81-c*vy*vmag];
end

function [eventvalue, stopthecalc, event direction] = events(t,w)
    % Function to check for a special event in the trajectory
    % In this example, we look
    % for the point when y(2)=0 and y(2) is decreasing.
    y = w(2);
    eventvalue = y;
    stopthecalc = 1;
    eventdirection = -1;
end