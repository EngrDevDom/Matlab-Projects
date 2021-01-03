close all
for i = 1:101
    x(i) = 2*pi*(i-1)/100;
end
y = sin(x);
plot(x, y);
grid('on')
xlabel({'x'}, 'FontAngle', 'italic', 'FontName', 'Times New Roman');
title('A Sine Wave Form');
ylabe({'sin(x)'}, 'FontAngle', 'italic', 'FontName', 'Times New Roman');
hold on
z = sin(2*x);
plot(x, z)
