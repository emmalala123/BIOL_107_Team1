
% FIT_ARM_NERVE Fits the nerve data to a Gaussian curve
%   [A,B,C,D]=FIT_ARM_NERVE(FILENAME)

%  Loads in arm nerve data from FILENAME, and
%  examines if the responses across locations are 
%  significantly different via ANOVA analysis.
%  If so, then a gaussian fit is performed and 
%  A (offset) B (magnitude) C (peak location) and D
%  (tuning width parameter) are returned.  If the ANOVA
%  is not significant with alpha 0.05, then A,B,C,and D
%  are set to NaN.

data = load(myfilename, '-ascii'); % load in the data
locations = data(1,:); % unpack first row
rawdata = data(2:end,:); % unpack values
Num_reps = size(rawdata,1); % number of rows in rawdata

% ANOVA analysis
G = repmat(1:length(locations),Num_reps,1); % groups for anova
anova_p = anova1(rawdata(:), G(:), 'off'); % perform one-way anova

if anova_p<0.05, % if significant

% gaussfit function
[a,b,c,d] = gaussfit(locations,data); % perform gaussfit funcition


else, % if not significant

    a = NaN;
    b = NaN;
    c = NaN;
    d = NaN;

end
