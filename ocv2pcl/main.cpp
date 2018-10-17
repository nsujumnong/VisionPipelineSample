#include <iostream>
#include <fstream>
#include <math.h>
#include <vector>

#include <pcl/io/pcd_io.h>
#include <pcl/io/ply_io.h>
#include <pcl/point_cloud.h>
#include <pcl/console/parse.h>
#include <pcl/common/transforms.h>
#include <pcl/visualization/pcl_visualizer.h>

using namespace std;
using namespace pcl;

void readPointcloud(char* filename){

    ifstream infile;
    char gchar[255];
    string line;
    infile.open(filename);
    if (!infile){
        cout << "cannot find the file" << endl;
        exit(1);
    }
    else{
        while(infile){
            getline(infile,line);
        }
    }

}

int main() {

    PointCloud<PointXYZ>::Ptr point_cloud_ptr(new PointCloud<PointXYZ>);

    return 0;
}