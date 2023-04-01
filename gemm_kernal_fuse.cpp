//
// Created by wyd on 2023/4/1.
//
#include <cstdio>
#include <cstdlib>
extern "C" {
    void sgemm_kernel_m1_fp32_m8n12k4(float *a_loc,
                                       float *b_loc,
                                       float *c_loc,
                                       int m,
                                       int n,
                                       int k);
}
void sgemm_kernel_fp32_m1(int m,
                     int n,
                     int k,
                     float *a_loc,
                     float *b_loc,
                     float *c_loc)
{
    int m_left = m % 8;
    int n_left = n % 12;

    if (m_left == 0 && n_left == 0) {
        sgemm_kernel_m1_fp32_m8n12k4(a_loc, b_loc, c_loc, m, n, k);
    } else {
        fprintf(stderr, "ERROR: m must be multiple of 8 and n must be multiple of 12.\n");
        exit(0);
    }
}