clear all
syms x(t) t omega_n zeta x0 v0
diffeq = (1/omega_n^2)*diff(x(t), t, 2) + 2*zeta/omega_n * diff(x(t), t) + x(t) == 0
Dx = diff(x)
initial_condition = [x(0) == x0, Dx(0) == v0]
x(t) = simplify(dsolve(diffeq, initial_condition, symvar(x(t))))