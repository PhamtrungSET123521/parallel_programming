#include <omp.h>
#include <iostream>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <unistd.h>
#include <string>
#include <iostream>
#include <sched.h> 
#include <experimental/filesystem>
#include <opencv2/imgcodecs.hpp>
#include <string>
cpu_set_t  mask;
using namespace std;
using namespace cv;
namespace fs = experimental::filesystem;


double make_histogram(Mat image, int histogram[], int yuv_vector[]){
    for(int i = 0; i < 256; i++){
        histogram[i] = 0;
    }

    double start = omp_get_wtime();
#pragma omp parallel default(shared)
    {
#pragma omp for schedule(static) 
        for (int i = 0; i < image.rows; i++) {
            for (int j = 0; j < image.cols; j++) {
                // cout<< "Thread num: "<<omp_get_thread_num()<<endl;
                Vec3b intensity = image.at<Vec3b>(i, j);

                int R = intensity.val[0];
                int G = intensity.val[1];
                int B = intensity.val[2];

                int Y = R * .299000 + G * .587000 + B * .114000;
                int U = R * -.168736 + G * -.331264 + B * .500000 + 128;
                int V = R * .500000 + G * -.418688 + B * -.081312 + 128;

                histogram[Y]++;

                int index = (j * image.rows + i) * 3;

                yuv_vector[index] = Y;
                yuv_vector[index + 1] = U;
                yuv_vector[index + 2] = V;

            }
        }
    }
    double end = omp_get_wtime();
    return end-start;
}


void cumulative_histogram(int histogram[], int equalized[], int cols, int rows){

    int cumulative_histogram[256];

    cumulative_histogram[0] = histogram[0];
    for(int i = 1; i < 256; i++){

        cumulative_histogram[i] = histogram[i] + cumulative_histogram[i-1];

    }
    for(int i = 1; i < 256; i++){
        equalized[i] = (int)(((float)cumulative_histogram[i] - histogram[0])/((float)cols * rows - 1)*255);
    }
}

double equalize(Mat image, int equalized[], int yuv_vector[]){
    double start = omp_get_wtime();
    #pragma omp parallel default(shared)
    {
        #pragma omp for schedule(static)
        for (int i = 0; i < image.rows; i++) {

            for (int j = 0; j < image.cols; j++) {
                // cout<< "Thread num: "<<omp_get_thread_num()<<endl;
                int index = (j * image.rows + i) * 3;

                int Y = equalized[yuv_vector[index]];
                int U = yuv_vector[index + 1];
                int V = yuv_vector[index + 2];

                unsigned char R = (unsigned char) max(0, min(255, (int) (Y + 1.4075 * (V - 128))));
                unsigned char G = (unsigned char) max(0, min(255, (int) (Y - 0.3455 * (U - 128) - (0.7169 * (V - 128)))));
                unsigned char B = (unsigned char) max(0, min(255, (int) (Y + 1.7790 * (U - 128))));

                Vec3b intensity = image.at<Vec3b>(i, j);

                intensity.val[0] = R;
                intensity.val[1] = G;
                intensity.val[2] = B;

                image.at<Vec3b>(i, j) = intensity;
            }
        }
    }
    double end = omp_get_wtime();
    return end-start;
}

void imageWrite(const cv::Mat &image, const std::string save_path)
{
    // Support for writing JPG
    vector<int> compression_params;
    compression_params.push_back(100);
    cout<<save_path<<endl;
    cv::imwrite(save_path, image, compression_params);
}


int main(){

    // int result = sched_setaffinity(0, sizeof(mask), &mask);
    std::string path = "./img";
    // std::string output_folder = "./omp_no_parralell";
    int i = 0;
    double time = 0;
    double start = omp_get_wtime();
    #pragma omp parallel
    for (const auto & entry : fs::directory_iterator(path)){
        std::cout << entry.path() << std::endl;
        i += 1;
        if (i<=200){
            Mat image = imread(entry.path());
            int* yuv_vector = new int[image.rows*image.cols * 3];
            int histogram[256];
            time += make_histogram(image, histogram, yuv_vector);

            // Generate the equalized histogram
            int equalized[256];

            cumulative_histogram(histogram,equalized, image.cols, image.rows);
            time += equalize(image, equalized, yuv_vector);
            // std::string save_path = output_folder + string(entry.path()).replace(0,14,"");
            // imageWrite(image, save_path);
        }    
    }
    double end = omp_get_wtime();
    cout << end - start << endl;
    return 0;
}


