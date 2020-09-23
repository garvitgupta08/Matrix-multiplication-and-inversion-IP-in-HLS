
#include <stdlib.h>
#include <stdio.h>
#include "inverse.h"

int main()
{

//	float A[DIM][DIM] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
	float A[DIM][DIM] = {{2, 7, 6}, {9, 5, 1}, {4, 3, 8}};

	float A_copy[DIM][DIM];
	float A_inv[DIM][DIM];

	//A_copy
	for(int i = 0 ; i < DIM ; i++)
	{
		for(int j = 0 ; j < DIM ; j++)
		{
			A_copy[i][j] = A[i][j];
		}
	}


	bool singular = inverse_top (A, A_inv);

	printf("\nSingularity Check = %d\n", singular);

	float identity[DIM][DIM];

	// check if A*Inv(A)=I
	matrix_mult(A_copy, A_inv, identity);

	int err=0;
	for(int i=0;i<DIM;i++)
	{
		for(int j=0;j<DIM;j++)
		{
			if(i==j)
			{
				if(i==j && identity[i][j]==(float)1)
					err=0;
				else
					err++;
			}
			else
			{
				if(identity[i][j]==(float)0)
					err=0;
				else
					err++;
			}
		}
	}

	printf("\n**************Printing A Matrix*************\n");
	for (int i = 0 ; i < DIM ; i++)
	{
		for (int j = 0 ; j < DIM ; j++)
		{
			printf("%f ", A_copy[i][j]);
		}
		printf("\n");
	}

	printf("\n**********Printing Inverse Matrix**********\n");
	for (int i = 0 ; i < DIM ; i++)
	{
		for (int j = 0 ; j < DIM ; j++)
		{
			printf("%f ", A_inv[i][j]);
		}
		printf("\n");
	}

	printf("\n*********Printing Identity Matrix***********\n");
	for (int i = 0 ; i < DIM ; i++)
	{
		for (int j = 0 ; j < DIM ; j++)
		{
			printf("%f ", identity[i][j]);
		}
		printf("\n");
	}

	if(err==0)
	{
		printf("PASS");
		return 0;
	}
	else
	{
		printf("Error");
		return 1;
	}

}
