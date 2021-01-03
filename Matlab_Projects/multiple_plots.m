% Sin-Cos-Tanfunction
x = 0:pi/100:2*pi;
y1 = sin(x);
y2 = cos(x);
y3 = tan(x);
plot(x, y1, '--', x, y2, '-', x, y3, ':')
xlabel('0 \leq x \leq 2\pi')
ylabel('Trig functions')
legend('sin(x)', 'cos(x)', 'tan(x)')
title('Typical example of multiple plots')
axis([0 2*pi -3 3])