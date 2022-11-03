
figure;
bar(1,mean_a_ko);
hold on;
bar(2,mean_a_wt);
hold on;
plot(1, a_ko_good, 'kx');
hold on;
plot(2, a_wt_good, 'mo');
xlabel('Knockout vs wildtype'); 
ylabel('Offset value, a');
Num_reps1 = length(a_ko_good);
Num_reps2 = length(a_wt_good);

errorbar(0.9,mean_a_ko,std(a_ko_good)/sqrt(Num_reps1));
errorbar(1.9,mean_a_wt,std(a_wt_good)/sqrt(Num_reps2));
title('Mean offset value, a, in knockout vs wildtype mice gaussian fits');
legend('Knockout','Wildtype');

figure;
bar(1,mean_d_ko);
hold on;
bar(2, mean_d_wt);
hold on;
plot(1, d_ko_good', 'kx');
hold on;
plot(2, d_wt_good', 'mo');
xlabel('Knockout vs wildtype'); 
ylabel('Peak width, d');
Num_reps3 = length(b_ko_good);
Num_reps4 = length(b_wt_good);

title('Mean peak width, d, in knockout vs wildtype mice gaussian fits');
errorbar(0.9,mean_d_ko,std(d_ko_good)/sqrt(Num_reps3));
errorbar(1.9,mean_d_wt,std(d_wt_good)/sqrt(Num_reps4));
legend('Knockout','Wildtype');

figure;
bar(1,mean_c_ko);
hold on;
bar(2,mean_c_wt);
hold on;
plot(1, c_ko_good', 'kx');
hold on;
plot(2, c_wt_good', 'mo');
xlabel('Knockout vs wildtype'); 
ylabel('Peak location, c');
Num_reps5 = length(c_ko_good);
Num_reps6 = length(c_wt_good);

errorbar(0.9,mean_c_ko,std(c_ko_good)/sqrt(Num_reps5));
errorbar(1.9,mean_c_wt,std(c_wt_good)/sqrt(Num_reps6));
title('Mean peak location, c, in knockout vs wildtype mice gaussian fits');
legend('Knockout','Wildtype');
