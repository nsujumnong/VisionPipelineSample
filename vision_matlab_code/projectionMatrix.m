
%% This script rearrane the extrinsic matrix and camera matrix obtained 
% from running the camera calibration code in OpenCV. Thses matrices are
% used to compute the 3x4xn camera projection matrices

view = 25;
cameraMatrix = rearrangeCamera("cameraMat.txt");
extrinsicMatrix = rearrangeExtrinsic("extrinsic.txt",view);

projectMatrix = [];
for i = 1:view
    projectMatrix(:,:,i) = cameraMatrix * extrinsicMatrix(:,:,i);
end