#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <sstream>

using namespace std;
using namespace cv;

void help()
{
    cout
        << "\n--------------------------------------------------------------------------" << endl
        << "This program shows how to scan image objects in OpenCV (cv::Mat). As use case"
        << " we take an input image and divide the native color palette (255) with the "  << endl
        << "input. Shows C operator[] method, iterators and at function for random access"<< endl
        << "Usage:"                                                                       << endl
        << "./cvout_sample imageNameToUse divideWith [G]"                                 << endl
        << "if you add a G parameter the image is processed in gray scale"                << endl
        << "----------------------------------------------------------------------------" << endl
        << endl;
}

Mat& ScanImageAndReduceC(Mat& I, const uchar* table);
Mat& ScanImageAndReduceIterator(Mat& I, const uchar* table);
Mat& ScanImageAndReduceRandomAccess(Mat& I, const uchar * table);

int main(int argc, char* argv[])
{
    help();
    if (argc < 3)
    {
        cout << "Not enough parameters" << endl;
        return -1;
    }

    Mat I, J;
    if( argc == 4 && !strcmp(argv[3],"G"))
        I = imread(argv[1], IMREAD_GRAYSCALE);
    else
        I = imread(argv[1], IMREAD_COLOR);

    if (!I.data)
    {
        cout << "The image" << argv[1] << "could not be loaded." << endl;
        return -1;
    }

    int divideWith;
    stringstream s;
    s << argv[2];
    s >> divideWith;
    if (!s)
    {
        cout << "Invalid number entered for dividing. " << endl;
    }

    uchar table[256];
    for (int i = 0; i < 256; ++i)
        table[i] = divideWith* (i/divideWith);

    const int times = 100;
    double t;

    t = (double)getTickCount();

    for (int i = 0; i < times; ++i)
        J =

    t = 1000*((double)getTickCount() - t)/getTickFrequency();
    t /= times;

    cout << "Time of reducing with the C operator [] (average for "
         << times << "runs): " << t << " milliseconds." << endl;

    t = (double)getTickCount();

    for (int i = 0; i < times; ++i)
        J = ScanImageAndReduceIterator(I.clone(), table);

    t = (double)getTickCount();

    for (int i = 0; i < times; ++i)
        ScanImageAndReduceRandomAccess(I.clone(),table);

    t = 100*((double)getTickCount()-t)/getTickFrequency();
    t /= times;

    cout << "Time of reducing with the random access operator (averaged for "
         << times << " runs): " << t << " milliseconds." << endl;

    Mat lookUpTable(1, 256, CV_8U);
    uchar* p = lookUpTable.data;
    for( int i = 0; i < 256; ++i)
        p[i] = table[i];

    t = (double)getTickCount();

    for (int i = 0; i < times; ++i)
        LUT(I, lookUpTable, J);

    t = 1000*((double)getTickCount()- t)/getTickFrequency();
    t /= times;

    cout << "time of reducing with the LUT function (averaged for "
        << times << " runs):" << t << "milliseconds." << endl;
    //std::cout << "Hello, World!" << std::endl;


    return 0;
}

Mat& ScanImageAndReduceC(Mat& I, const uchar* const table)
{
    // accept only char type matrices
    CV_Assert(I.depth() == CV_8U);

    int channels = I.channels();

    int nRows = I.rows;
    int nCols = I.cols * channels;

    if (I.isContinuous())
    {
        nCols *= nRows;
        nRows = 1;
    }

    int i,j;
    uchar* p;
    for( i = 0; i < nRows; ++i)
    {
        p = I.ptr<uchar>(i);
        for ( j = 0; j < nCols; ++j)
        {
            p[j] = table[p[j]];
        }
    }
    return I;
}

Mat& ScanImageAndReduceIterator(Mat& I, const uchar* const table)
{
    // accept only char type matrices
    CV_Assert(I.depth() == CV_8U);
    const int channels = I.channels();
    switch(channels)
    {
        case 1:
        {
            MatIterator_<uchar> it, end;
            for( it = I.begin<uchar>(), end = I.end<uchar>(); it != end; ++it)
                *it = table[*it];
            break;
        }
        case 3:
        {
            MatIterator_<Vec3b> it, end;
            for( it = I.begin<Vec3b>(), end = I.end<Vec3b>(); it != end; ++it)
            {
                (*it)[0] = table[(*it)[0]];
                (*it)[1] = table[(*it)[1]];
                (*it)[2] = table[(*it)[2]];
            }
        }
    }
    return I;
}

Mat& ScanImageAndReduceRandomAccess(Mat& I, const uchar* const table)
{
    // accept only char type matrices
    CV_Assert(I.depth() == CV_8U);

    const int channels = I.channels();
    switch(channels)
    {
        case 1:
        {
            for( int i = 0; i < I.rows; ++i)
                for( int j = 0; j < I.cols; ++j )
                    I.at<uchar>(i,j) = table[I.at<uchar>(i,j)];
            break;
        }
        case 3:
        {
            Mat_<Vec3b> _I = I;

            for( int i = 0; i < I.rows; ++i)
                for( int j = 0; j < I.cols; ++j )
                {
                    _I(i,j)[0] = table[_I(i,j)[0]];
                    _I(i,j)[1] = table[_I(i,j)[1]];
                    _I(i,j)[2] = table[_I(i,j)[2]];
                }
            I = _I;
            break;
        }
    }

    return I;
}