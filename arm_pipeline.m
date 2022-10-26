% directory_name = 'C:\Users\Cat\OneDrive\Brandeis_University\MATLAB\data\TP1\mouse_data_team1\mouse_data';
% ~Whichever directory you are in will be found in analyze_mouse_arm by the
% pwd command; if mouse_data is the directory where the data is stored,
% all you need is 'knockout' or 'wildtype'~
% knockout_dir = [directory_name 'knockout'];
% wildtype_dir = [directory_name 'wildtype'];


[a_ko,b_ko,c_ko,d_ko] = analyze_mouse_arm('knockout');
[a_wt,b_wt,c_wt,d_wt] = analyze_mouse_arm('wildtype');

 
%%% a parameter

% report numbers of any NaNs and remove them

aNaN_ko = length(find(isnan(a_ko))) % find number of measurements that are NaN 
aNaN_wt = length(find(isnan(a_wt)))
a_ko_good = a_ko(find(~isnan(a_ko))); % find everything that is not NaN
a_wt_good = a_wt(find(~isnan(a_wt)));

% preform statistical analysis

[a_h, a_p_t] = ttest2(a_ko_good, a_wt_good)

 
%%% b parameter

% report numbers of any NaNs and remove them

bNaN_ko = length(find(isnan(b_ko))) % find number of measurements that are NaN 
bNaN_wt = length(find(isnan(b_wt)))
b_ko_good = b_ko(find(~isnan(b_ko))); % find everything that is not NaN
b_wt_good = b_wt(find(~isnan(b_wt)));

% preform statistical analysis

[b_h, b_p_t] = ttest2(b_ko_good, b_wt_good)

 
%%% c parameter

% report numbers of any NaNs and remove them

cNaN_ko = length(find(isnan(c_ko))) % find number of measurements that are NaN 
cNaN_wt = length(find(isnan(c_wt)))
c_ko_good = c_ko(find(~isnan(c_ko))); % find everything that is not NaN
c_wt_good = c_wt(find(~isnan(c_wt)));

% preform statistical analysis

[c_h, c_p_t] = ttest2(c_ko_good, c_wt_good)
 
% d parameter

% report numbers of any NaNs and remove them

dNaN_ko = length(find(isnan(d_ko))) % find number of measurements that are NaN 
dNaN_wt = length(find(isnan(d_wt)))
d_ko_good = d_ko(find(~isnan(d_ko))); % find everything that is not NaN
d_wt_good = d_wt(find(~isnan(d_wt)));

% preform statistical analysis on the means

[d_h, d_p_t] = ttest2(d_ko_good, d_wt_good) 
