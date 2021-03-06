% Auto-generated by stereoCalibrator app on 01-Oct-2018
%-------------------------------------------------------


% Define images to process
imageFileNames1 = {'/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left01.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left02.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left03.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left04.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left05.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left06.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left07.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left08.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left09.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left10.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left11.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left12.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left13.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left14.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left15.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left16.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left17.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left18.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left19.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/left/left20.png',...
    };
imageFileNames2 = {'/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right01.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right02.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right03.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right04.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right05.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right06.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right07.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right08.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right09.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right10.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right11.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right12.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right13.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right14.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right15.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right16.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right17.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right18.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right19.png',...
    '/home/aimlab3/Endoscope_Snapshot/asymmetric_small/right/right20.png',...
    };

% Detect checkerboards in images
[imagePoints, boardSize, imagesUsed] = detectCheckerboardPoints(imageFileNames1, imageFileNames2);

% Generate world coordinates of the checkerboard keypoints
squareSize = 12;  % in units of 'millimeters'
worldPoints = generateCheckerboardPoints(boardSize, squareSize);

% Read one of the images from the first stereo pair
I1 = imread(imageFileNames1{1});
[mrows, ncols, ~] = size(I1);

% Calibrate the camera
[stereoParams, pairsUsed, estimationErrors] = estimateCameraParameters(imagePoints, worldPoints, ...
    'EstimateSkew', false, 'EstimateTangentialDistortion', false, ...
    'NumRadialDistortionCoefficients', 2, 'WorldUnits', 'millimeters', ...
    'InitialIntrinsicMatrix', [], 'InitialRadialDistortion', [], ...
    'ImageSize', [mrows, ncols]);

% View reprojection errors
h1=figure; showReprojectionErrors(stereoParams);

% Visualize pattern locations
h2=figure; showExtrinsics(stereoParams, 'CameraCentric');

% Display parameter estimation errors
displayErrors(estimationErrors, stereoParams);

% You can use the calibration data to rectify stereo images.
I2 = imread(imageFileNames2{1});
[J1_full, J2_full] = rectifyStereoImages(I1,I2,stereoParams, 'OutputView', 'full');
[J1, J2] = rectifyStereoImages(I1, I2, stereoParams);

% See additional examples of how to use the calibration data.  At the prompt type:
% showdemo('StereoCalibrationAndSceneReconstructionExample')
% showdemo('DepthEstimationFromStereoVideoExample')
