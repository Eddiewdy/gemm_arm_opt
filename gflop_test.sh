as -o gflop_test.o gflop_test.S
#clang++ -O3 -pthread -c sgemm_kernel_fuse_m1.cpp
#clang++ -O3 -pthread -c test_sgemm_kernel.cpp
clang++ -O3 -pthread -o gflop_test gflop_test.o gflop_test.cc
