for i = 1:101
    theta(i) = -pi + 2*pi*(i-1)/100;
    rho(i) = 2*sin(5*theta(i));
end
figure
polar(theta, rho)