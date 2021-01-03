function simple_ode_solution
% The initial values of y and t
y(1) = 0;
t(1) = 0;
delta_t = 0.1;
n_steps = 20/delta_t;
for i = 1:n_steps
    dydt = -10*y(i) + sin(t(i));     % Compute the derivative
    y(i+1) = y(i) + delta_t * dydt;  % Find y at time t+delta_t
    t(i+1) = t(i) + delta_t;         % Store the time
end

plot(t,y);

end
