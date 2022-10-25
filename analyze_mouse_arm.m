function [a_list, b_list, c_list, d_list] = analyze_mouse_arm(directory)
%ANALYZE_MOUSE_ARM takes as input the name of the directory you want to
% analyze (knockout or wildtype) and examines all the experiments and
% returns the parameters a_list, b_list, c_list, and d_list. 

mycwd = pwd;
mydir = 'mouse_data';
myexp = directory;
file = 'mouse_arm_data.txt';
n = 001;

% Get list of all subfolders.
allSubFolders = genpath(fullfile(mycwd,mydir,myexp));
% Parse into a cell array.
remain = allSubFolders;
listOfFolderNames = {};
while true
	[singleSubFolder, remain] = strtok(remain, ';'); %parses the genpath string by ";"
	if isempty(singleSubFolder)
		break;
    end
	listOfFolderNames = [listOfFolderNames convertCharsToStrings(singleSubFolder)];
end

a_list = {};
b_list = {};
c_list = {};
d_list = {};

for n = listOfFolderNames(2:end)
myfilename = fullfile(n,file);
[a, b, c, d] = fit_arm_nerve(myfilename);

a_list = [a_list a];
b_list = [b_list b];
c_list = [c_list c];
d_list = [d_list d];

clear myfilename
end
end