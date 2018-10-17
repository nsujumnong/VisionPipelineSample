function cameraMatrix = rearrangeCamera(filename)

% This function takes the txt file containing the camera matrix obtained
% from OpenCV camera calibration and rearrange it into a 3x3 camera matrix

    fileID = fopen(filename);
    allData = fscanf(fileID,'%f');
    cameraMatrix = [];
    counter = 1;
    for i = 1:3
        for j = 1:3
            cameraMatrix(i,j) = allData(counter);
            counter = counter +1;
        end
    end
end