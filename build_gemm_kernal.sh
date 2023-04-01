as -o gemm_kernal.o gemm_kernal.S
clang++ -O3 -pthread -c gemm_kernal_fuse.cpp
clang++ -O3 -pthread -c gemm_test.cpp
clang++ -O3 -pthread -o gemm_test gemm_test.o gemm_kernal.o gemm_kernal_fuse.cpp