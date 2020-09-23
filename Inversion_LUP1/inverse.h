#ifndef MATRIX_INV_H
#define MATRIX_INV_H

#define DIM 3

bool lup(float A[DIM][DIM], float L[DIM][DIM], float U[DIM][DIM], float P[DIM+1]);
void Lower_inv (float L[DIM][DIM], float L_inv[DIM][DIM]);
void Upper_inv (float U[DIM][DIM], float U_inv[DIM][DIM]);
void matrix_mult (float U_inv[DIM][DIM], float L_inv[DIM][DIM], float A_inv[DIM][DIM]);
void final_perm(float UL_inv[DIM][DIM], float P[DIM+1], float A_inv[DIM][DIM]);
bool inverse_top(float A[DIM][DIM], float A_inv[DIM][DIM]);

#endif
