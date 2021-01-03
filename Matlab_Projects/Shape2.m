c1 = count(:,1);    % Data at intersection 1
[bin_counts, bin_locations] = hist(c1);
bin_width = bin_locations(2) - bin_locations(1);
hist_area = (bin_width)*(sum(bin_counts));

figure
hist(c1)
hold on
mu1 = mean(c1);
exp_pdf = @(t)(1/mul)*exp(-t/mul);  % Integrates to 1

t = 0:150;
y = exp_pdf(t);
plot(t,(hist_area)*y, 'r', 'LineWidth', 2)
legend('Distribution', 'Exponential Fit')