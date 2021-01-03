% Smoothing and Filtering
span = 3;   % Size of the averaging window
window = ones(span,1)/span;
smoothed_c3m = convn(c3m,window,'same');

h = plot(smoothed_c3m, 'ro-');
legend('Data', 'Smoothed Data')