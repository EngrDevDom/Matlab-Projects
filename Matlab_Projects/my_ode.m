function [t,y] = my_ode(ode_function, time_int, initial_y)

    y(1) = initial_y;
    t(1) = time_int(1);
    n_steps = 200;
    delta_t = (time_int(2) - time_int(1))/n_steps;
    for i = 1:n_steps
        dydt = ode_function(t(i), y(i));  % Compute the derivative
        y(i+1) = y(i) + delta_t * dydt;   % Find y at time t_delta
        t(i+1) = t(i) + delta_t;          % Store the time
    end
end