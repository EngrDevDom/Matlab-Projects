% Show 'maximize f(x)' is equal to 'minimize -f(x)'

function minimizez
% Function to find values of x and y that minimize sin(x)*cos(y)
    optimal_xy = fminsearch(@(w) zofw(w), [1, 2])
end

function z = zofw(w)
% w is now a vector. We choose to male w(1) = x, w(2) = y
    x = w(1);   
    y = w(2);
    z = sin(x)*cos(y);
end