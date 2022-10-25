function [a, b, c, d] = analyze_mouse_arm(directory)
%ANALYZE_MOUSE_ARM takes as input the name of the directory you want to
% analyze (knockout or wildtype) and examines all the experiments and
% returns the parameters a, b, c, and d. 

mycwd = pwd
mydir = 'mouse_data'
myexp = directory
file = 'mouse_arm_data.txt'
n = 001


for n = 001:length(directory)
trial = ['exp' n]
myfilename = fullfile(mycwd,mydir,myexp, trial, file);

[a, b, c, d] = fit_arm_nerve(myfilename)

clear myfilename
n = n+1
end
end