% Simple unconstrained optimization example

function minimizef
% Function to compute projectile velocity required to hit a target
% target_position is the distance from the launch point to the target
optimal_x = fminsearch(@(x) fofx(x), [3])
end

function f = fofx(x)
% Function to calculate f(x) = (x-5)^2 + 4
    f = (x-5)^2 + 4;
end