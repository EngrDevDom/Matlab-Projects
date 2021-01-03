% Solving a basic differential equation using command window.

function dydt = simple_ode(t,y)
% Example of MATLAB differential equation function
    dydt = -10*y + sin(t);
end

[t_values, y_values]=ode45(@(t,y) simple_ode(t,y),[0,20],0);
plot(t_values, y_values)