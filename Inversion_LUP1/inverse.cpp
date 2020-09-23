
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "inverse.h"

bool lup(float A[DIM][DIM], float L[DIM][DIM], float U[DIM][DIM], float P[DIM+1])
{
#pragma HLS INLINE
	/*Permutation matrix- Matrix obtained from the row permutation of the identity matrix.
	 * Initially, it will be taken as identity matrix. P initially assigned as [0 1 2]-implies the position of rows of identity matrix in P,
	 * as we swap rows in A matrix,we will update the P matrix simultaneously.\
	 * Suppose row0 swaped with row1 then P will be updated as [1 0 2] and the corresponding permutation matrix is 	0 1 0
	 * 																												1 0 0
	 * 																												0 0 1
	 * */
	//Initialize Row Permutation Matrix
	PermutMat_Initialize: for(int i = 0 ; i < DIM ; i++)
	{
#pragma HLS PIPELINE
		P[i] = i ;
	}

	int i, j, k ;
	bool singular = 0 ;		/*-1 if matrix is singular --> inverse doesn't exist.*/

	/*LUP Decomposition is finding L,U,P such that
	 * PA=LU, here
	 * P-Row Permutation Matrix
	 * A-Input Matrix
	 * L-Lower Triangular Matrix
	 * U-Upper Triangular Matrix
	 * Then the inverse for A is-
	 * inv(A)=inv(U)*inv(L)*P
	 * */
	lup_label0: for(i = 0 ; i < DIM ; i++)
	{
#pragma HLS PIPELINE
		 /* pos-index for maximum value in a column.*/
		int pos = i ;

		/*stores the maximum value, initially taken as follows*/
		float max = A[i][i];

		/*pivoting
		 * Find the maximum value in the column below the diagonal element (for the column)
		 * Swap the row with the one with max value.
		 * */
		find_max: for(k = i+1 ; k < DIM ; k++)
		{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
			float tmp = A[k][i];
			if(tmp > A[i][i] & tmp > max)
			{
				pos = k ;
				max = tmp ;
			}
		}
		/*check if the matrix is singular
		 * */
		if(A[pos][i] == 0.0)
		{
			singular = 1 ; 		//matrix is singular
			return singular;
		}
		else
		{
			if (pos != i)
			{
				swap_row: for(k = 0 ; k < DIM ; k++)
				{

					float tmp = A[pos][k];
					A[pos][k] = A[i][k];
					A[i][k] = tmp ;
				}

				/*update the permutation matrix for the swap*/
				int ind1,ind2;
				for(int i1=0;i1<DIM;i1++)
				{
					if(P[i1]==pos)
						ind1=i1;
					if(P[i1]==i)
						ind2=i1;
				}
				float temp = P[ind2];
				P[ind2] = P[ind1];
				P[ind1] = temp ;
			}
		}

		/*extract the L and U Matrices
		 * */
		lup_label1: for(k = i+1; k < DIM; k++)
		{
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
			A[k][i] = A[k][i]/A[i][i];
			lup_label2: for(j = i+1 ; j < DIM ; j++)
			{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
				A[k][j] = A[k][j] - A[i][j]*A[k][i];
			}
		}
	}
	//L matrix: Lower half of A matrix and diagonal elements is 1.
	Assign_L0: for(int i = 0 ; i < DIM ; i++)
	{
		Assign_L1: for(int j = i ; j < DIM ; j++)
		{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
			if(i == j)
				L[j][i] = 1 ;
			else
				L[j][i] = A[j][i];
		}
	}

	//U matrix: Upper half of A matrix.
	Assign_U0: for(int i = 0 ; i < DIM ; i++)
	{
		Assign_U1: for(int j = i ; j < DIM ; j++)
		{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
			U[i][j] = A[i][j];
		}
	}

	P[DIM] = (singular == 1) ? -1 : 0;
	return 0;
}

void Lower_inv (float L[DIM][DIM], float L_inv[DIM][DIM])
{
	/* To calculate the inverse of L matrix:
	 * We have,
	 * for i==j, L_inv(i,j)=1/L(i,j)
	 * 						  k=i
	 * for i>j,  L_inv(i,j)=-Summation{L(i,k)*L_inv(k,j)}
	 * 						  k=j
	 * */

	linv_label0: for(int i = 0 ; i < DIM ; i++)
	{
		linv_label1: for(int j = 0 ; j < DIM ; j++)
		{

			if(i < j)
				L_inv[i][j] = 0 ;
			else if(i == j)
				L_inv[i][j] = 1/L[i][j];
			else
			{
				float sum = 0.0f ;
				linv_label2: for(int k = j ; k < i ; k++)



#pragma HLS LOOP_TRIPCOUNT min=1 max=3

#pragma HLS PIPELINE
sum = sum + L[i][k] * L_inv[k][j];

				L_inv[i][j] =-sum ;
			}
		}
	}
}

void Upper_inv (float U[DIM][DIM], float U_inv[DIM][DIM])
{
/* Inverse Of Upper Triangular Matrix
 * We have,
 * for i==j, U(i,j)=1/U(i,j)
 * 						  k=i
 * for i>j   U_inv(j,i)=[-Summation{L(i,k)*L_inv(k,j)} ]/U[i][i]
 * 						  k=j
 **/
	uinv_label10: for(int i = 0 ; i < DIM ; i++)
	{
#pragma HLS PIPELINE
		uinv_label11: for(int j = 0 ; j < DIM ; j++)
		{
			U_inv[i][j] = 0;
		}
	}

	uinv_label20: for(int i = 0 ; i < DIM ; i++)
	{
#pragma HLS PIPELINE
		U_inv[i][i] = (float) 1/U[i][i];
	}

	univ_label30: for (int i = 0 ; i < DIM ; i++)
	{
		univ_label31: for (int j = 0 ; j < i ; j++)
		{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
			float sum = 0.0f ;
			univ_label32: for (int k = j ; k < i ; k++)
			{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
				sum += (U[k][i] * U_inv[j][k]);
			}
			U_inv[j][i] = -sum / U[i][i];
		}
	}
}

void matrix_mult (float U_inv[DIM][DIM], float L_inv[DIM][DIM], float A_inv[DIM][DIM])
{
#pragma HLS ARRAY_PARTITION variable=L_inv block factor=3 dim=1
#pragma HLS INLINE
	float sumTemp = 0;
	MM_L1: for (int i = 0 ; i < DIM ; i++)
	{
		MM_L2: for (int j = 0 ; j < DIM ; j++)
		{
#pragma HLS PIPELINE
			float sumFinal = 0 ;
			MM_L3: for (int k = 0 ; k < DIM ; k++)
			{
				sumTemp = U_inv[i][k] * L_inv[k][j];
				sumFinal += sumTemp ;
			}
			A_inv[i][j] = sumFinal ;
		}
	}
}

void final_perm(float UL_inv[DIM][DIM], float P[DIM+1], float A_inv[DIM][DIM])
{
#pragma HLS INLINE
	/*Multiplication with P is just the row permuation*/
	L1: for(int i = 0 ; i < DIM ; i++)
	{
#pragma HLS PIPELINE
		L2: for(int j = 0 ; j < DIM ; j++)
		{
			A_inv[j][i] = UL_inv[j][(int)P[i]];
		}
	}
}

bool inverse_top(float A[DIM][DIM], float A_inv[DIM][DIM])
{
	float L [DIM][DIM], U [DIM][DIM];
	float L_inv [DIM][DIM], U_inv [DIM][DIM],UL_inv[DIM][DIM];
	float P[DIM+1];

	// calculate the P,A,L,U such that PA=LU
	bool singular = lup(A, L, U, P);

	if (singular)
	{
		for (int i = 0 ; i < DIM ; i++)
		{
#pragma HLS PIPELINE
			for (int j = 0 ; j < DIM ; j++)
				A_inv[i][j] = 0;
		}
		return singular;
	}
	else
	{
		Lower_inv (L, L_inv);
		Upper_inv (U, U_inv);
		matrix_mult (U_inv, L_inv, UL_inv);
		final_perm(UL_inv,P,A_inv);

/*
		printf("\n\nPrinting L_inverse Matrix\n");
		for (int i = 0 ; i < DIM ; i++)
		{
			for (int j = 0 ; j < DIM ; j++)
			{
				printf("%f ", L_inv[i][j]);
			}
			printf("\n");
		}

		printf("\n\nPrinting U_inverse Matrix\n");
		for (int i = 0 ; i < DIM ; i++)
		{
			for (int j = 0 ; j < DIM ; j++)
			{
				printf("%f ", U_inv[i][j]);
			}
			printf("\n");
		}

		printf("\n\nPrinting LU_inverse Matrix\n");
		for (int i = 0 ; i < DIM ; i++)
		{
			for (int j = 0 ; j < DIM ; j++)
			{
				printf("%f ", UL_inv[i][j]);
			}
			printf("\n");
		}

		printf("\n\nPrinting A_inverse Matrix\n");
		for (int i = 0 ; i < DIM ; i++)
		{
			for (int j = 0 ; j < DIM ; j++)
			{
				printf("%f ", A_inv[i][j]);
			}
			printf("\n");
		}
*/
	}

	return 0;
}
