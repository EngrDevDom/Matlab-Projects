load count.dat
c1 = count(:,1);    % Data at intersection 1
c2 = count(:,2);    % Data at intersection 2

figure
scatter(c1, c2, 'filled')
xlabel('Intersection 1')
ylabel('Intersection 2')