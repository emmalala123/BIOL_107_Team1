
mean_a_ko = mean(a_ko_good)
mean_a_wt = mean(a_wt_good)

mean_b_ko = mean(b_ko_good)
mean_b_wt = mean(b_wt_good)

mean_c_ko = mean(c_ko_good)
mean_c_wt = mean(c_wt_good)

mean_d_ko = mean(d_ko_good)
mean_d_wt = mean(d_wt_good)

data = load('mouse_arm1.txt','-ascii');
x = data(1,:);
wt = mean_a_wt+mean_b_wt*exp(-((x-mean_c_wt).^2)/(2*mean_d_wt^2));
ko = mean_a_ko+mean_b_ko*exp(-((x-mean_c_ko).^2)/(2*mean_d_ko^2));

figure;

plot(wt);
hold on;
plot(ko);

xlabel('Locations (mm)'); 

ylabel('Mean response (spikes/sec)');