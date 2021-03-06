/*******************************************************************************
**
**    Copyright (C) 1998-2020 Greg McGarragh <greg.mcgarragh@colostate.edu>
**
**    This source code is licensed under the GNU General Public License (GPL),
**    Version 3.  See the file COPYING for more details.
**
*******************************************************************************/

#ifndef GMATH_MATRIX_H
#define GMATH_MATRIX_H

#include "gutil.h"


#define USE_BLAS

#define USE_LAPACK


#define all_matrix_proto(prefix_, type_)							\
void XCAT(prefix_, vec_print)(type_ *, long);							\
void XCAT(prefix_, vec_init)(type_ *, type_, long);						\
void XCAT(prefix_, vec_zero)(type_ *, long);							\
void XCAT(prefix_, vec_copy)(type_ *, const type_ *, long);					\
void XCAT(prefix_, vec_scale)(type_, const type_ *, type_ *, long);				\
void XCAT(prefix_, vec_add)(const type_ *, const type_ *, type_ *, long);			\
void XCAT(prefix_, vec_sub)(const type_ *, const type_ *, type_ *, long);			\
void XCAT(prefix_, vec_lin_cmb)(const type_ *, type_, const type_ *, type_, type_ *, long);	\
type_ XCAT(prefix_, vec_dot)(const type_ *, const type_ *, long);				\
type_ XCAT(prefix_, vec_mag)(const type_ *, long);						\
void XCAT(prefix_, vec_unit)(const type_ *, type_ *, long);					\
void XCAT(prefix_, vec_inv)(const type_ *, type_ *, long);					\
void XCAT(prefix_, vec_inv_elem)(const type_ *a, type_ *b, long n);				\
void XCAT(prefix_, vec_mul_elem)(const type_ *a, const type_ *b, type_ *c, long n);		\
void XCAT(prefix_, vec_div_elem)(const type_ *a, const type_ *b, type_ *c, long n);		\
												\
void XCAT(prefix_, mat_print)(type_ **a, long m, long n);					\
void XCAT(prefix_, mat_zero)(type_ **a, long m, long n);					\
void XCAT(prefix_, mat_init)(type_ **, double, long, long);					\
void XCAT(prefix_, mat_copy)(type_ **, type_ **, long, long);					\
void XCAT(prefix_, mat_trans)(type_ **, type_ **, long, long);					\
double XCAT(prefix_, mat_p_one_norm)(type_ **, long, long);					\
double XCAT(prefix_, mat_p_inf_norm)(type_ **, long, long);					\
double XCAT(prefix_, mat_frob_norm)(type_ **, long, long);					\
void XCAT(prefix_, mat_add)(type_ **, type_ **, type_ **, long, long);				\
void XCAT(prefix_, mat_add_trans)(type_ **, type_ **, long, long);				\
void XCAT(prefix_, mat_add_diag)(type_ **, const type_ *, type_ **, long);			\
void XCAT(prefix_, mat_sub)(type_ **, type_ **, type_ **, long, long);				\
void XCAT(prefix_, mat_sub_trans)(type_ **, type_ **, long, long);				\
void XCAT(prefix_, mat_sub_diag)(type_ **, const type_ *, type_ **, long);			\
void XCAT(prefix_, mat_diag_sub)(const type_ *, type_ **, type_ **, long);			\
void XCAT(prefix_, mat_i_sub)(type_ **, type_ **, long);					\
void XCAT(prefix_, mat_scale)(type_, type_ **, type_ **, long, long);				\
void XCAT(prefix_, m_v_mul)(type_ **, const type_ *, long, long, type_ *);			\
void XCAT(prefix_, mat_gxvxmx)(int trans_a, type_ **a, const type_ *b, type_ alpha, type_ *c, type_ beta, long m, long o);	\
void XCAT(prefix_, v_m_mul)(const type_ *, type_ **, long, type_ **);				\
void XCAT(prefix_, m_v_diag_mul)(const type_ *, const type_ *, type_ *, long);			\
void XCAT(prefix_, m_v_dinv_mul)(const type_ *, const type_ *, type_ *, long);			\
void XCAT(prefix_, mat_mul)(type_ **a, type_ **b, long m, long n, long o, type_ **c);		\
void XCAT(prefix_, mat_gxgxmx)(int, type_ **a, int, type_ **b, type_, type_ **c, type_, long m, long n, long o);		\
void XCAT(prefix_, mat_mul_diag)(type_ **, const type_ *, type_ **, long, long);		\
void XCAT(prefix_, mat_gxdxmx)(int trans_a, type_ **a, const type_ *b, type_ alpha, type_ **c, type_ beta, long m, long n);	\
void XCAT(prefix_, mat_mul_dinv)(type_ **, const type_ *, type_ **, long, long);		\
void XCAT(prefix_, mat_diag_mul)(const type_ *, type_ **, type_ **, long, long);		\
void XCAT(prefix_, mat_dinv_mul)(const type_ *, type_ **, type_ **, long, long);		\
void XCAT(prefix_, mat_vxvtmx)(const type_ *, const type_ *, double, type_ **, double, long, long);				\
int XCAT(prefix_, mat_pow_count)(int);								\
void XCAT(prefix_, mat_pow)(type_ **, int, type_ **, long, long, type_ **, type_ **);		\
void XCAT(prefix_, mat_pow_ldx)(const type_ *, long, int, const type_ *, long, long, long, const type_ *, type_ *);

#define all_matrix_proto2(prefix_, type_)							\
double XCAT(prefix_, mat_pocon)(type_ **, int, double, int *, double *);			\
double XCAT(prefix_, mat_gecon)(char, type_ **, int, double, int *, double *);			\
void XCAT(prefix_, mat_potrf)(type_ **, int);							\
void XCAT(prefix_, mat_potri)(type_ **, int);							\
void XCAT(prefix_, mat_potrs)(type_ **, type_ **, int, int);					\
void XCAT(prefix_, mat_getrf)(type_ **, int, int, int *);					\
void XCAT(prefix_, mat_getri)(type_ **, int, int *);						\
void XCAT(prefix_, mat_getrs)(type_ **, type_ **, int, int, int *);				\
void XCAT(prefix_, mat_getrs2)(char, type_ **, type_ **, int, int, int *);			\
void XCAT(prefix_, mat_gttrf)(type_ *, type_ *, type_ *, type_ *, int, int *);			\
void XCAT(prefix_, mat_gttrs)(type_ *, type_ *, type_ *, type_ *, type_ **, int, int, int *);	\


#ifdef __cplusplus
extern "C" {
#endif

all_matrix_proto (d, double)

#ifdef USE_LAPACK
all_matrix_proto2(d, double)
#endif

#ifdef __cplusplus
}
#endif


all_matrix_proto (z, dcomplex)

#ifdef USE_LAPACK
all_matrix_proto2(z, dcomplex)
#endif


#endif /* GMATH_MATRIX_H */
