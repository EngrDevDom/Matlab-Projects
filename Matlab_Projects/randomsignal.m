function randomsignal
% Function to plot a random signal and compute its RMS.

close all % This closes any open figure windows

npoints = 100;  % No. points in the plot
dtime = 0.01;   % Time interval between points

% Compute vectors of time and the value of the function.
% This example shows how a function can calculate several
% things at the same time.
[time,function_value] = create_random_function(npoints, dtime);

%Compute the rms value of the function
rms = compute_rms(time, function_value);

% Plot the function
plot(time, function_value);
% Write the rms value as a label on the plot
label = strcat('rms signal = ', num2str(rms));
label = strcat('textbox', 'String', {label}, 'FontSize', 16, ...
    'BackgroundColor', [1 1 1], ...
    'Position', [0.3499 0.6924 0.394 0.1]);
end
%
function [t, y] = create_random_function(npoints, time_interval)
% Create a vector of equally spaced times t(i), and
% a vector y(i), of random values with i = 1...npoints
    for i = 1:npoints
        t(i) = time_interval*(i - 1);
% The rand function computes a random number between 0 and 1
    y(i) = rand-0.5;
    end
end

function r = compute_rms(t, y)
% Functions to compute the rms value of a function y of time t.
% t and y must both be vectors of the same length.
    for i = 1:length(y) % You could avoid this loop with.notation
        ysquared(i) = y(i)*y(i);
    end
% The trapz function uses a trapezoidal integration
% method to compute the integral of a function.
    integral = trapz(t, ysquared);
    
    r = sqrt(integral/t(length(t)));    % This is the rms.
end