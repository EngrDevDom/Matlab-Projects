% Controlling the accuracy of solutions to differential equations.
% Solving simultaneous differential equations

function I_love_electronics_engineering_2
% Function to solve the cubi autocatalator equations

    close all  % Closes any open plot windows.
    time_range = [0, 100];
    x0 = 1;    % Initial value of x
    y0 = 1;    % Initial value of y
    initial_w = [x0; y0];  % Initial value of the vector w
    
    options = odeset('RelTol', 0.00001);
    
    [t_values, sol_values] = ode45(@(t,w) diff_eq(t,w), time_range, initial_w);
    plot(t_values,sol_values);
end

function dw_vectordt = diff_eq(t,w_vector)  % Function defining the ODE
    x = w_vector(1);  % x is stored as the first element in w_vector
    y = w_vector(2);  % y is stored as the second element in w_vector
    dxdt = 0.6 - x*y^2 - 0.1*x;
    dydt = x*y^2 - y + 0.1*x;
    dw_vectordt = [dxdt; dydt];  % The time derivative of w_vector
end