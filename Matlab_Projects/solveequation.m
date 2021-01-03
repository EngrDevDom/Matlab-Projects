% Using fzero to solve equations

function solveequation
% Simple example using fsolve to solve x + sin(x) = 0
    sol_for_x = fzero(@(x) fofx(x), [-100, 100])
    
end

function f = fofx(x)
% Function to calculate f(x) = x + sin(x)
    f = x + sin(x);
end
