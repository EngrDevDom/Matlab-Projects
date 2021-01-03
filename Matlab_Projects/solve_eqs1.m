syms x y
eq1 = x + y == 5
eq2 = x - y == -5
[x, y] = solve([eq1, eq2], [x, y])