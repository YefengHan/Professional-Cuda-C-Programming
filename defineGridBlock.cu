#include <cuda_runtime.h>
#include <stdio.h>

int main(int argc, char** argv)
{
    int i_elem = 1024;
    dim3 block(1024);
    dim3 grid ((i_elem + block.x - 1) / block.x);
    printf("grid.x %d, block.x %d \n", grid.x, block.x);

    block.x = 512;
    grid.x = (i_elem + block.x - 1) / block.x;
    printf("grid.x %d, block.x %d \n", grid.x, block.x);

    block.x = 256;
    grid.x = (i_elem + block.x - 1) / block.x;
    printf("grid.x %d, block.x %d \n", grid.x, block.x);

    block.x = 128;
    grid.x = (i_elem + block.x - 1) / block.x;
    printf("grid.x %d, block.x %d \n", grid.x, block.x);

    cudaDeviceReset();

    return 0;

}