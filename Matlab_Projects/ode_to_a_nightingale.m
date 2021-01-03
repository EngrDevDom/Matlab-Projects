% 11.3
function ode_to_a_nightingale
% Function to solve dy/dt = -k*y + F*sin(omega*t)
% from t = start to t = stop, with y(0) = inital_y

close all  % Closes any open plot windows.

% Define parameter values below.
    k = 10;
    F = 1;
    omega = 1;
    time_range = [0, 20];
    y0 = 0;
    
    [t_values, sol_values] = ode45(@(t, y) diff_eq(t, y, k, F, omega),...
        time_range, y0);
    
    plot(t_values, sol_values);
    
end  % Hear is the end of the 'solve my ode' function

function dydt = diff_eq(t, y, k, F,omega)  % Function defining the ODE
    dydt = -k*y + F*sin(omega*t);
end