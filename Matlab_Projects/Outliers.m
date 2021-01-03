% Data Analysis in MATLAB
h = histogram(c3,10);   % Histogram
N = max(h.Values);      % Maximum bin count
mu3 = mean(c3);         % Data mean
sigma3 = std(c3);       % Data standard deviation

hold on
plot([mu3 mu3],[0 N], 'r', 'LineWidth', 2)  % Mean
X = repmat(mu3+(1:2)*sigma3,2,1);
Y = repmat([0;N],1,2);
plot(X,Y,'Color',[255 153 51]./255, 'LineWidth', 2) % Standard deviations
legend('Data', 'Mean', 'Stds')
hold off