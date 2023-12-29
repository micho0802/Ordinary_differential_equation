%% How to define a function in Matlab

% MATLAB program files can be either scripts or functions. 
% (1). Scripts are simply files containing a sequence of MATLAB statements. 
% (2). Functions make use of their own local variables and accept input arguments.

% The name of a MATLAB function file begins with an alphabetic character and has a filename extension of .m. 
% The file name, less its extension, is what MATLAB searches for when you try to use the script or function.

clc; clear all; close all; 
charpoly = [3 -2 -4]; % characteristic polynomial as a vector [a b c]
y0 = [0 1]; % y0 = 1; % IC
yp0 = 1; %IC
for i=1:length(y0)
    [r,stry] = SolverRealDistinctRoot(charpoly, y0(i), yp0);
end

%% save loop data/outputs:  use cell array in for loop 
% charpoly = [3 -2 -4]; % characteristic polynomial as a vector [a b c]
% y0 = [0 1]; % y0 = 1; % IC
% yp0 = 1; %IC
% for i=1:length(y0)
%     [r{i},stry{i}] = SolverRealDistinctRoot(charpoly, y0(i), yp0);
% end