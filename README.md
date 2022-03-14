# Parallel histogram equalization algorithm
## Our project is divided into 2 section:
1. Sequential program for histogram equalization
2. Parallel program for histogram equalization using OpenMP library

## System requirement:
1. OS: Ubuntu/Linux/Debian
2. Successfully install OpenCV for C++

## User manual
1. Run parallel program
If you want to run parallel program, you should follow below steps:

```bash
sh run_omp.sh
```

You can edit bash file for change number of cpus.

2. Run sequential program
If you want to run sequential program, you should follow below steps:

```bash
sh run_sequential.sh
```

You can edit bash file for change number of cpus.

3. Plot histogram
You can visualize histogram of image if you wish:
Run below command:
```bash
python plot_histogram.py
```
**Note**: You should change path in `plot_histogram` before executing it.


