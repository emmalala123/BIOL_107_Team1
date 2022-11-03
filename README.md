# BIOL_107_Team1
Data processing and visualization of nerve readout from probing mice arms were conducted using Matlab. The files are as follows:


**Script “arm_pipeline” (Static Main):**
This script takes the directories &quot;knockout” and “wildtype” and first passes the directory names
into the function “analyze_mouse_arm”. These two directories each have four return variables
assigned to them (“a” through “d”).
These variables are returned to &quot;arm_pipeline” as cell-type arrays and need to be converted to
ordinary arrays using a Matlab “cell2mat” function, to introduce mutability. This is necessary
because the returned vectors have NaN values which are removed in order to conduct a Student’s
t-test.
“Arm_pipeline” sifts through all four of the variables from each processed dataset (eight in
total), removes NaN values, and performs a t-test between the corresponding variables of groups
“knockout” and “wildtype”.


**Function “analyze_mouse_arm(directory)”:**
Once “arm_pipeline” is run, it first calls this function with the directories that are passed in as
parameters. While the directory is listed, variables in this function are used as pointers to help
iterate through the subdirectories and import corresponding data files. This is accomplished by
using a while-loop that parses a long string of all the subdirectories into a cell-type list. In this
while-loop, the variable “remain” is a delimiter that separates each file; for Mac OS it must be a
colon, for Windows OS it is a semi-colon.
Four variables are instantiated as lists in this function and are filled with processed data within
the for-loop that looks through each of the folders in the subdirectory list. Files in the
subdirectory list are individually passed into the function “fit_arm_nerve”, and returned as
processed data to the loop, which stores them in one of the four cell-type lists. These lists are
then passed back to the script “arm_pipeline”, once the for-loop is finished.


**Function “fit_arm_nerve”:**
The “fit_arm_nerve” function loads in data from the files that are passed through from
“analyze_mouse_arm”. Once data are loaded into a local variable called “data”, the raw values
are extracted from the set. These data are then fed through an ANOVA analysis to extract the
significant values across neural response locations. A gaussian fit is then performed to return the
four parameters: “a”, offset; “b”, peak height; “c”, peak location; “d”, peak width. All non-
significant values, determined by the ANOVA analysis, are converted to NaN values. These
processed data are packed into four cell-type arrays of the corresponding parameter and returned
to the script “arm_pipeline” which runs a comparison between corresponding datapoints from
both the knockout and wild type groups.


**Function “gaussfit”:**
Data marked significant by the ANOVA analysis are passed into this “guassfit” function that fits
these data onto a gaussian curve. This curve is determined by the equation to instantiate the
gaussian fit type, then that fit type is fed into the fit options structure
a+b*exp(-((x-c).^2)/((2*d^2)))
To reduce processing time, each of the parameters used in the fit function are drawn randomly
from the dataset within the bounds of a maximum and minimum value determined by taking the
means for parameters a and b. Value c is randomly generated using a Matlab function, and d is
set equal to one. The upper bound and lower bound for the fit function are positive infinity and
negative infinity. 30 iterations of the fit are performed by the while loop and the resulting
gaussian curve is converted to fit coefficients, which are distributed to the appropriate parameters
as return values.
