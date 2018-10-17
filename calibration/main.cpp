// This is a camera calibration tutorial
// The code is written and demonstrated by George Lecakes

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


using namespace std;
using namespace cv;

const float calibrationSquareDimension = 0.00800f; // meters
const float arucoSquareDimension = 0.01900f; // meters
const Size chessboardDimension = Size(7,7);

void createArucoMarkers()
{
    Mat outputMarker;

    Ptr<aruco::Dictionary> markerDictionary = aruco::getPredefinedDictionary(aruco::PREDEFINED_DICTIONARY_NAME::DICT_4X4_50);

    for(int i = 0; i < 50; i++)
    {
        aruco::drawMarker(markerDictionary, i, 500, outputMarker, 1);
        ostringstream convert;
        string imageName = "4x4Marker_";
        convert << imageName << i << ".jpg";
        imwrite(convert.str(),outputMarker);
    }
}

void createKnownBoardPosition(Size boardSize, float squareEdgeLength, vector<Point3f>& corners)
{
    for (int i = 0; i < boardSize.height; ++i)
    {
        for (int j = 0; j < boardSize.width; ++j)
        {
            corners.push_back(Point3f(j * squareEdgeLength, i * squareEdgeLength, 0.0f)); // push the xyz coordinates into the vector array (z is 0 due to flat plane)
        }
    }
}

void getChessboardCorners( vector<Mat> images,  vector<vector<Point2f>>& allFoundCorners, bool showResults = false)
{
    for(vector<Mat>::iterator iter = images.begin(); iter != images.end(); ++iter)
    {
        vector<Point2f> pointBuf;
        // original code the size of the checker board is Size(9,6)
        bool found = findChessboardCorners(*iter, Size(7,7), pointBuf, CALIB_CB_ADAPTIVE_THRESH | CALIB_CB_NORMALIZE_IMAGE);

        if(found)
        {
            allFoundCorners.push_back(pointBuf);
        }

        if(showResults)
        {
            drawChessboardCorners(*iter, Size(7,7), pointBuf, found);
            imshow("Looking for Corners", *iter);
            waitKey(0);
        }
    }
}

int main(int argv, char** argc) {
    //createArucoMarkers();
    Mat frame;
    Mat drawToFrame;

    Mat cameraMatrix = Mat::eye(3,3, CV_64F);
    Mat distanceCoefficients;

    vector<Mat> savedImages;

    vector<vector<Point2f>> markerCorners, rejectedCandidates;

    VideoCapture vid(1);

    if(!vid.isOpened())
    {
        cout << "can't find video device" << endl;
        return 0;
    }

    int framesPerSecond = 20;
    string vidName = "Endoscope";

    namedWindow(vidName, WINDOW_AUTOSIZE);

    while(true)
    {
        if(!vid.read(frame))
            break;

        vector<Vec2f> foundPoints;
        bool found = false;

        found = findChessboardCorners(frame, chessboardDimension, foundPoints, CALIB_CB_ADAPTIVE_THRESH | CALIB_CB_NORMALIZE_IMAGE);
        frame.copyTo(drawToFrame);
        drawChessboardCorners(drawToFrame, chessboardDimension, foundPoints, found);

        if(found)
            imshow(vidName, drawToFrame);
        else
            imshow(vidName, frame);
        char character = waitKey(1000/ framesPerSecond);
    }

    return 0;
}