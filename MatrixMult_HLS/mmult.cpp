#include "mmult.h"

void matrixmult(T A[DIM][DIM],T B[DIM][DIM],T res[DIM][DIM])
{
#pragma HLS ARRAY_PARTITION variable=A block factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=B block factor=2 dim=1
	for(int i=0;i<DIM;i++){

		for(int j=0;j<DIM;j++)
		{
			#pragma HLS PIPELINE
			T sum=0;
			for(int k=0;k<DIM;k++){
				sum+=A[i][k]*B[k][j];
			}
			res[i][j]=sum;
		}
	}
}
