%% Read the png file and determine the size of the file
clear all; clc;

pngFiles = dir('*.png');

sizeFile = length(pngFiles);

wh = zeros(sizeFile/2,4);

for i = 1:sizeFile/2
    pngName1 = pngFiles(i).name;
    pngName2 = pngFiles(i+14).name;
    linfo = imfinfo(pngName1);
    rinfo = imfinfo(pngName2);
    wh(i,1) = linfo.Width;
    wh(i,2) = linfo.Height;
    wh(i,3) = rinfo.Width;
    wh(i,4) = rinfo.Height;
end