g++ omp.cpp -o omp -fopenmp `pkg-config --cflags --libs opencv` -lstdc++fs 
OMP_NUM_THREADS=8 OMP_DISPLAY_ENV=True GOMP_CPU_AFFINITY="0-7 0-7 0-7 0-7 0-7 0-7 0-7 0-7" ./omp