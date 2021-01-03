% Create and plot a sphere with radius r.
[x, y, z] = sphere;
r = 2;
surf(x*r, y*r, z*r)
axis equal
% Find the surface area and volume.
A = 4*pi*r^2;
V = (4/3)*pi*r^3;