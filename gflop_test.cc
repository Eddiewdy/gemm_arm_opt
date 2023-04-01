
#include <cstdio>
#include <iostream>
#include <ctime>
extern "C" {
    void gflop_test();
}
static double get_time(struct timespec *start, struct timespec *end)
{
	return end->tv_sec - start->tv_sec +
		(end->tv_nsec - start->tv_nsec) * 1e-9;
}

int main() {
    int x0 = 100;  // 假设 x0 初始值为 100
    struct timespec start, end;
    double time_used, perf;
    clock_gettime(CLOCK_MONOTONIC, &start);
    gflop_test();
    clock_gettime(CLOCK_MONOTONIC, &end);
    // 1073741824
    time_used = get_time(&start, &end);
    double gflop = 137.44;
    std::cout << "time = " << time_used << "s" << std::endl;
    std::cout << gflop << std::endl;
    std::cout << "GFLOPS = " << gflop / time_used << std::endl;
    return 0;
}
