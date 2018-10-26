#include "opencv2/core.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/calib3d.hpp"
#include "opencv2/aruco.hpp"

#include <iostream>
#include <sstream>
#include <fstream>
#include <vector>
#include <cstdio>
#include <ctime>
#include <string>


using namespace std;
using namespace cv;

const float calibrationSquareDimension = 0.1200f; // meters
const float arucoSquareDimension = 0.01900f; // meters
const Size chessboardDimension = Size(6,9);

int main(int argv, char** argc) {

    const char ESC_KEY = 27;

    Mat frame;
    Mat frame2;
    Mat drawToFrame;
    Mat drawToFrame2;

    Mat cameraMatrix = Mat::eye(3,3, CV_64F);
    Mat cameraMatrix2 = Mat::eye(3,3, CV_64F);
    Mat distanceCoefficients;
    Mat distanceCoefficients2;

    vector<Mat> savedImages;
    vector<Mat> savedImages2;

    vector<vector<Point2f>> markerCorners, rejectedCandidates;
    vector<vector<Point2f>> markerCorners2, rejectedCandidates2;

    VideoCapture vid(1);

    if(!vid.isOpened())
    {
        cout << "can't find video device" << endl;
        return 0;
    }


    int framesPerSecond = 60;
    string vidName = "Endoscope_Right";


    namedWindow(vidName, WINDOW_AUTOSIZE);

    VideoCapture vid2(0);

    if(!vid2.isOpened())
    {
        cout << "cant' find video device" << endl;
        return 0;
    }

    string vidName2 = "Endoscope_Left";

    namedWindow(vidName2, WINDOW_AUTOSIZE);

    while(true)
    {
        if(!vid.read(frame))
            break;

        if(!vid2.read(frame2))
            break;

        vector<Vec2f> foundPoints;
        vector<Vec2f> foundPoints2;
        bool found = false;
        bool found2 = false;

        found = findChessboardCorners(frame, chessboardDimension, foundPoints, CALIB_CB_ADAPTIVE_THRESH | CALIB_CB_NORMALIZE_IMAGE);
        found2 = findChessboardCorners(frame2, chessboardDimension, foundPoints2, CALIB_CB_ADAPTIVE_THRESH | CALIB_CB_NORMALIZE_IMAGE);
        frame.copyTo(drawToFrame);
        frame2.copyTo(drawToFrame2);
        drawChessboardCorners(drawToFrame, chessboardDimension, foundPoints, found);
        drawChessboardCorners(drawToFrame2, chessboardDimension, foundPoints2, found2);

//        if(found && found2){
//            imshow(vidName, drawToFrame);
//            imshow(vidName2, drawToFrame2);
//        }
//        else
//        {
        imshow(vidName, frame);
        imshow(vidName2, frame2);
//        }
        char character = waitKey(1000/ framesPerSecond);
        if (character == ESC_KEY || character == 'q' || character == 'Q'){
            break;
        }


    }

    return 0;
}