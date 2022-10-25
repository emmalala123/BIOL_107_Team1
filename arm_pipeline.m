
% In TP instructions but do not need, is already done in analyze_mouse_arm
% directory_name = 'C:\Users\Cat\OneDrive\Brandeis_University\MATLAB\data\TP1\mouse_data_team1\mouse_data'; % put real path here
% knockout_dir = [directory_name filesep 'knockout'];
% wildtype_dir = [directory_name filesep 'wildtype'];


[a_ko,b_ko,c_ko,d_ko] = analyze_mouse_arm(knockout);
[a_wt,b_wt,c_wt,d_wt] = analyze_mouse_arm(wildtype);

 
%%% a parameter

% report numbers of any NaNs and remove them

aNaN_ko = length(find(isnan(a_ko))); % find number of measurements that are NaN 
aNaN_wt = length(find(isnan(a_wt)));
a_ko_good = a_ko(find(~isnan(a_ko))); % find everything that is not NaN
a_wt_good = a_wt(find(~isnan(a_wt)));

a_mean_ko = mean(a_ko_good) % calculate mean
a_mean_wt = mean(a_wt_good)

% preform statistical analysis on the means

[a_h, a_p_t] = ttest2(a_mean_wt, a_mean_ko)

 
%%% b parameter

% report numbers of any NaNs and remove them

bNaN_ko = length(find(isnan(b_ko))); % find number of measurements that are NaN 
bNaN_wt = length(find(isnan(b_wt)));
b_ko_good = b_ko(find(~isnan(b_ko))); % find everything that is not NaN
b_wt_good = b_wt(find(~isnan(b_wt)));

b_mean_ko = mean(b_ko_good) % calculate mean
b_mean_wt = mean(b_wt_good)

% preform statistical analysis on the means

[b_h, b_p_t] = ttest2(b_mean_wt, b_mean_ko)

 
%%% c parameter

% report numbers of any NaNs and remove them

cNaN_ko = length(find(isnan(c_ko))); % find number of measurements that are NaN 
cNaN_wt = length(find(isnan(c_wt)));
c_ko_good = c_ko(find(~isnan(c_ko))); % find everything that is not NaN
c_wt_good = c_wt(find(~isnan(c_wt)));

c_mean_ko = mean(c_ko_good) % calculate mean
c_mean_wt = mean(c_wt_good)

% preform statistical analysis on the means

[c_h, c_p_t] = ttest2(c_mean_wt, c_mean_ko)
 
% d parameter

% report numbers of any NaNs and remove them

dNaN_ko = length(find(isnan(d_ko))); % find number of measurements that are NaN 
dNaN_wt = length(find(isnan(d_wt)));
d_ko_good = d_ko(find(~isnan(d_ko))); % find everything that is not NaN
d_wt_good = d_wt(find(~isnan(d_wt)));

d_mean_ko = mean(d_ko_good) % calculate mean
d_mean_wt = mean(d_wt_good)

% preform statistical analysis on the means

[d_h, d_p_t] = ttest2(d_mean_wt, d_mean_ko)