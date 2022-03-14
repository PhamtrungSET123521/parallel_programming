g++ sequential.cpp -o sequential `pkg-config --cflags --libs opencv` -lstdc++fs -fopenmp
./sequential
