% Solving a basic differential equation in an M-file.

function solve_bernoulli
% Function to solve dy/dt = (t*y^4+2y)/6
% from the time t = 0 to t = 20, with y(0) = -2
    initial_y = -2;
    time_range = [0, 20];
    
    [t_values, sol_values] = ode45(@(t,y) diff_eq(t,y), time_range, initial_y);
    
    plot(t_values, sol_values); % Plot the solution
end % end statement termination the solve_bernoulli function

function dydt = diff_eq(t, y)   % Function defining the ODE
    dydt = (t*y^4+2*y)/6;
end % end statement terminationg the diff_eq function