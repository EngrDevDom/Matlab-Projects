% Optimizing with constraints

function constrained_minimization_example
% Function to find values of x and y that minimize sin(x)*cos(y)

A = [1, 2]; b = [4]; C = [3, -10]; d = [14]; wmin = [0, -Inf]; wmax = [10, Inf];
optimal_xy = fmincon(@(w) zofw(w), [1, 2], A, b, C, d, wmin, wmax)

end

function z = zofw(w)
% w is now a vector. We choose to make w(1) = x, w(2) = y
    x = w(1); y = w(2);
    z = sin(x)*cos(y);
end