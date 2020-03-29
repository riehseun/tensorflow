X = [ones(5,1) reshape(-5:4,5,2)];
y = [-2:2]';
Xval=[X;X]/10;
yval=[y;y]/10;
[et ev] = learningCurve(X,y,Xval,yval,1)

%et =

%   0.000000
%   0.031250
%   0.013333
%   0.005165
%   0.002268

%ev =

%  3.0000e-002
%  5.3125e-003
%  6.0000e-004
%  9.2975e-005
%  2.2676e-005

% m = 1
%theta =
%  -2.00000
%   0.00000
%   0.00000

% m = 2
%theta =
%  -0.50000
%   0.25000
%   0.25000

% m = 3
%theta =
%   0.20000
%   0.40000
%   0.40000

% m = 4
%theta =
%   0.40909
%   0.45455
%   0.45455

% m = 5
%theta =
%   0.47619
%   0.47619
%   0.47619

polyFeatures([1:3]',4)
%ans =
%    1    1    1    1
%    2    4    8   16
%    3    9   27   81

X = [1 2 ; 1 3 ; 1 4 ; 1 5];
y = [7 6 5 4]';
Xval = [1 7 ; 1 -2];
yval = [2 12]';
[lambda_vec, error_train, error_val] = validationCurve(X,y,Xval,yval )

% results:
%lambda_vec =
%    0.00000
%    0.00100
%    0.00300
%    0.01000
%    0.03000
%    0.10000
%    0.30000
%    1.00000
%    3.00000
%   10.00000

%error_train =

%   0.00000
%   0.00000
%   0.00000
%   0.00000
%   0.00002
%   0.00024
%   0.00200
%   0.01736
%   0.08789
%   0.27778

%error_val =

%   0.25000
%   0.25055
%   0.25165
%   0.25553
%   0.26678
%   0.30801
%   0.43970
%   1.00347
%   2.77539
%   6.80556