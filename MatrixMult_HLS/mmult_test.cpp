#include "mmult.h"

int main()
{
	T mat1[DIM][DIM];
	T mat2[DIM][DIM];
	T mat_hw[DIM][DIM];
	T mat_sw[DIM][DIM];

	//Initialize these matrix with random values

	for(int i=0;i<DIM;i++){
		for(int j=0;j<DIM;j++){
			mat1[i][j]=(float)i*j;
		}
	}

	for(int i=0;i<DIM;i++){
		for(int j=0;j<DIM;j++){
			mat2[i][j]=(float)i+j;
		}
	}

	for(int i=0;i<DIM;i++){
		for(int j=0;j<DIM;j++){
			float sum=0;
			for(int k=0;k<DIM;k++){
				sum=sum+(mat1[i][k]*mat2[k][j]);
			}
			mat_sw[i][j]=sum;
		}
	}

	// hw matrix mult
	matrixmult(mat1,mat2,mat_hw);

	int err=0;
	for(int i=0;(i<DIM && !err);i++){
		for(int j=0;(j<DIM && !err);j++){
			if(mat_sw[i][j]!=mat_hw[i][j]){
				err++;
				printf("\n%d\n",i);

			}
		}
	}
	printf("\n%d\n",err);

	if(err==0){
		printf("\nMatrices identical , PASS\r\n");
	}
	else{
		printf("\nTest Failed\r\n");
	}
	return err;
}
