function extrinsicMatrix = rearrangeExtrinsic(exFile,view)

% This function takes the txt file containing the extrinsic matrix
% from OpenCV camera calibration and rearrage them into 3x4xn matrices.
% Each set of the extrinsic data contains a tuple of 6 element; a rotation
% vector and a translation vector, respectively.

    format long
    
    fileID = fopen(exFile);
    allElem = fscanf(fileID,'%f');
    elemCount = 1;
    exMat = [];
    extrinsicMatrix = [];
    for row = 1:view
        for col = 1:3
            exMat(row,col) = allElem(elemCount);
            elemCount = elemCount+1;
        end
        for col = 4:6
            exMat(row,col) = allElem(elemCount);
            elemCount = elemCount+1;
        end
    end
    
    for k = 1:view
        rx = exMat(k,1);
        ry = exMat(k,2);
        rz = exMat(k,3);
        rotx = [1    0       0     ;
                0 cos(rx) -sin(rx) ;
                0 sin(rx) cos(rx)]  ;
        roty = [cos(ry)   0   sin(ry) ;
                   0      1      0    ;
                -sin(ry)  0   cos(ry)] ;
        rotz = [cos(rz)  -sin(rz)  0  ;
                sin(rz)   cos(rz)  0  ;
                   0        0      1  ];
        rotMat = rotz*roty*rotx;
        transMat = exMat(k,4:6)';
        extrinsicMatrix(:,:,k) = [rotMat, transMat];
    end
    
    fclose(fileID);
end