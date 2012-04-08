/******************************************************************************%
**
**    Copyright (C) 2007-2012 Greg McGarragh <gregm@atmos.colostate.edu>
**
**    This source code is licensed under the GNU General Public License (GPL),
**    Version 3.  See the file COPYING for more details.
**
*******************************************************************************/

#include <gutil.h>
#include <gmath_matrix.h>

#include "xrtm.h"
#include "xrtm_doub_rts.h"
#include "xrtm_doubling.h"
#include "xrtm_save_tree.h"
#include "xrtm_scatter.h"
#include "xrtm_source.h"
#include "xrtm_utility.h"


/*******************************************************************************
 *
 ******************************************************************************/
static void calc_doub_params(int n_derivs, double ltau, double *ltau_l, int *n_doub,
                             double *d_tau, double *d_tau_l, uchar *derivs) {

     int i;

     *d_tau = MIN(ltau, *d_tau);

     *n_doub = (int) (log(ltau / *d_tau) / log(2.) + 1.);

     *d_tau  = ltau / pow(2., *n_doub);

     for (i = 0; i < n_derivs; ++i) {
          if (! derivs[i])
               continue;

          d_tau_l[i] = ltau_l[i] / pow(2., *n_doub);
     }
}



/*******************************************************************************
 *
 ******************************************************************************/
void rtm_doub_rts(int n_quad, int n_stokes, int n_derivs, double F_0,
                  double *qx_v, double *qw_v, double planck0, double planck1,
                  double omega, double *omega_l, double ltau, double *ltau_l,
                  double as_0, double *as_0_l,
                  double *P_q0_mm, double *P_q0_pm,
                  double **r_p, double **t_p, double **r_m, double **t_m,
                  double **R_p, double **T_p, double **R_m, double **T_m,
                  double *S_p, double *S_m,
                  double **P_q0_mm_l, double **P_q0_pm_l,
                  double ***r_p_l, double ***t_p_l, double ***r_m_l, double ***t_m_l,
                  double ***R_p_l, double ***T_p_l, double ***R_m_l, double ***T_m_l,
                  double **S_p_l, double **S_m_l,
                  double d_tau, int symmetric, int thermal, int vector,
                  uchar *derivs_h, uchar *derivs_p,
                  save_tree_data save_tree, work_data work) {

     int i;
     int j;

     int n_quad_v;

     int n_doub;

     double a;
     double b;
     double c;
     double d;

     double lin_fac;

     double d_tran;

     double *v1;

     double *d_tau_l;

     double *d_path_l;
     double *d_tran_l;

     double *Sl_p;
     double *Sl_m;

     double **w1;

     double **Sl_p_l;
     double **Sl_m_l;


     n_quad_v = n_quad * n_stokes;


     /*-------------------------------------------------------------------------
      *
      *-----------------------------------------------------------------------*/
     v1       = get_work1(&work, WORK_DX);

     if (thermal) {
          Sl_p = get_work1(&work, WORK_DX);
          Sl_m = get_work1(&work, WORK_DX);
     }

     d_tau_l  = get_work1(&work, WORK_DDERIVS);

     d_path_l = get_work1(&work, WORK_DDERIVS);
     d_tran_l = get_work1(&work, WORK_DDERIVS);

     if (flags_or(derivs_h, n_derivs)) {
          if (thermal) {
               Sl_p_l = get_work2(&work, WORK_DX, WORK_DERIVS_V, derivs_h);
               Sl_m_l = get_work2(&work, WORK_DX, WORK_DERIVS_V, derivs_h);
          }

          w1   = get_work1(&work, WORK_DXX);
     }


     /*-------------------------------------------------------------------------
      *
      *-----------------------------------------------------------------------*/
     calc_doub_params(n_derivs, ltau, ltau_l, &n_doub, &d_tau, d_tau_l, derivs_h);


     /*-------------------------------------------------------------------------
      *
      *-----------------------------------------------------------------------*/
     dmat_scale(-d_tau, r_p, R_p, n_quad_v, n_quad_v);

     dmat_scale(-d_tau, t_p, T_p, n_quad_v, n_quad_v);
     dmat_i_sub(T_p, T_p, n_quad_v);

     if (vector)
          dmat_mul_D_A(n_quad, n_stokes, R_p, R_p);

     if (flags_or(derivs_h, n_derivs)) {
          for (i = 0; i < n_derivs; ++i) {
               if (! derivs_h[i])
                    continue;

               dmat_scale(-d_tau, r_p_l[i], R_p_l[i] , n_quad_v, n_quad_v);
               dmat_scale(-d_tau_l[i], r_p, w1, n_quad_v, n_quad_v);
               dmat_add(R_p_l[i], w1, R_p_l[i], n_quad_v, n_quad_v);

               dmat_scale( d_tau, t_p_l[i], T_p_l[i] , n_quad_v, n_quad_v);
               dmat_scale( d_tau_l[i], t_p, w1, n_quad_v, n_quad_v);
               dmat_add(T_p_l[i], w1, T_p_l[i], n_quad_v, n_quad_v);

               if (vector)
                    dmat_mul_D_A(n_quad, n_stokes, R_p_l[i], R_p_l[i]);
          }
     }


     /*-------------------------------------------------------------------------
      *
      *-----------------------------------------------------------------------*/
     if (F_0 == 0.)
          d_tran = 0.;
     else {
          d_tran = exp(-d_tau * as_0);

          if (flags_or(derivs_p, n_derivs)) {
               for (i = 0; i < n_derivs; ++i) {
                    if (derivs_h[i]) {
                         d_path_l[i] = -d_tau_l[i] * as_0 - d_tau * as_0_l[i];
                         d_tran_l[i] = d_path_l[i] * d_tran;
                    }
                    else
                    if (derivs_p[i]) {
                         d_path_l[i] =                    - d_tau * as_0_l[i];
                         d_tran_l[i] = d_path_l[i] * d_tran;
                    }
               }
          }

          a = F_0 / (4. * PI);

          b = a * omega * d_tran * d_tau;

          dm_v_dinv_mul(qx_v, P_q0_pm, S_p, n_quad_v);
          dvec_scale(b, S_p, S_p, n_quad_v);

          dm_v_dinv_mul(qx_v, P_q0_mm, S_m, n_quad_v);
          dvec_scale(b, S_m, S_m, n_quad_v);

          if (vector)
               dm_v_mul_D_A(n_quad, n_stokes, S_m, S_m);
     }

     if (! thermal)
          lin_fac = 0.;
     else {
          if (planck0 == 0.)
               lin_fac = 0.;
          else
               lin_fac = (planck1 / planck0 - 1.) / pow(2., n_doub);

          c = (1. - omega) * planck0 * d_tau;
          for (i = 0; i < n_quad_v; ++i)
               v1[i] = c;
          dm_v_dinv_mul(qx_v, v1, v1, n_quad_v);
          dvec_copy(Sl_p, v1, n_quad_v);
          dvec_copy(Sl_m, v1, n_quad_v);
     }

     if (flags_or(derivs_p, n_derivs)) {
          for (i = 0; i < n_derivs; ++i) {
               if (derivs_h[i]) {
                    if (F_0 != 0.) {
                         c = a * (omega_l[i] * d_tran      * d_tau +
                                  omega      * d_tran_l[i] * d_tau +
                                  omega      * d_tran      * d_tau_l[i]);

                         dvec_scale(c, P_q0_pm, S_p_l[i], n_quad_v);
                         dvec_scale(b, P_q0_pm_l[i], v1, n_quad_v);
                         dvec_add(S_p_l[i], v1, S_p_l[i], n_quad_v);
                         dm_v_dinv_mul(qx_v, S_p_l[i], S_p_l[i], n_quad_v);

                         dvec_scale(c, P_q0_mm, S_m_l[i], n_quad_v);
                         dvec_scale(b, P_q0_mm_l[i], v1, n_quad_v);
                         dvec_add(S_m_l[i], v1, S_m_l[i], n_quad_v);
                         dm_v_dinv_mul(qx_v, S_m_l[i], S_m_l[i], n_quad_v);

                         if (vector)
                              dm_v_mul_D_A(n_quad, n_stokes, S_m_l[i], S_m_l[i]);
                    }

                    if (thermal) {
                         d = -omega_l[i] * d_tau + (1. - omega) * d_tau_l[i];
                         for (j = 0; j < n_quad_v; ++j)
                              v1[j] = d;
                         dm_v_dinv_mul(qx_v, v1, v1, n_quad_v);
                         dvec_copy(Sl_p_l[i], v1, n_quad_v);
                         dvec_copy(Sl_m_l[i], v1, n_quad_v);
                    }
               }
               else
               if (derivs_p[i]) {
                    dvec_zero(S_p_l[i], n_quad_v);
                    dvec_zero(S_m_l[i], n_quad_v);
               }
          }
     }


     /*-------------------------------------------------------------------------
      *
      *-----------------------------------------------------------------------*/
     c = 1.;
     for (i = 0; i < n_doub; ++i) {
/*
          if (! symmetric) {
*/
               if (! flags_or(derivs_p, n_derivs))
                    layer_double  (R_p, T_p, S_m, S_p, Sl_m, Sl_p, n_quad_v, d_tran, lin_fac, F_0 != 0., thermal, i == 0, work);

               else
                    layer_double_l(R_p, T_p, S_m, S_p, R_p_l, T_p_l, S_m_l, S_p_l, n_quad_v, n_derivs, d_tran, d_tran_l, derivs_h, derivs_p, work);
/*
          }
          else {
               if (! flags_or(derivs_h, n_derivs))
                    layer_double_s  (R_p, T_p, S_m, S_p, n_quad_v, d_tran, work);
               else
                    layer_double_s_l(R_p, T_p, S_m, S_p, R_p_l, T_p_l, S_m_l, S_p_l, n_quad_v, n_derivs, d_tran, d_tran_l, derivs_h, derivs_h, work);
          }
*/
          if (F_0 != 0.) {
               d_tran *= d_tran;

               if (flags_or(derivs_p, n_derivs)) {
                    c *= 2.;

                    for (j = 0; j < n_derivs; ++j) {
                         if (! derivs_p[j])
                              continue;

                         d_tran_l[j]  = d_path_l[j] * d_tran * c;
                    }
               }
          }

          if (thermal)
               lin_fac *= 2.;
     }


     /*-------------------------------------------------------------------------
      *
      *-----------------------------------------------------------------------*/
     dmat_mul_D_A(n_quad, n_stokes, R_p, R_p);
     phase_matrix_symmetry2(n_quad, n_stokes, T_p, R_p, T_m, R_m, 1.);

     dm_v_mul_D_A(n_quad, n_stokes, S_m, S_m);

     if (flags_or(derivs_p, n_derivs)) {
          for (i = 0; i < n_derivs; ++i) {
               if (derivs_h[i]) {
                    dmat_mul_D_A(n_quad, n_stokes, R_p_l[i], R_p_l[i]);
                    phase_matrix_symmetry2(n_quad, n_stokes, T_p_l[i], R_p_l[i], T_m_l[i], R_m_l[i], 1.);
               }

               if (derivs_p[i])
                    dm_v_mul_D_A(n_quad, n_stokes, S_m_l[i], S_m_l[i]);
          }
     }


     /*-------------------------------------------------------------------------
      *
      *-----------------------------------------------------------------------*/
     if (F_0 == 0. && ! thermal) {
          dvec_zero(S_p, n_quad_v);
          dvec_zero(S_m, n_quad_v);
     }
     else
     if (F_0 == 0. && thermal) {
          dvec_copy(S_p, Sl_p, n_quad_v);
          dvec_copy(S_m, Sl_m, n_quad_v);
     }
     else
     if (F_0 != 0. && thermal) {
          dvec_add (S_p, Sl_p, S_p, n_quad_v);
          dvec_add (S_m, Sl_m, S_m, n_quad_v);
     }


     /*-------------------------------------------------------------------------
      *
      *-----------------------------------------------------------------------*/
if (0) {
     double atran;
     double *atran_l;

     double *F_p;
     double *F_m;

     double **F_p_l;
     double **F_m_l;

     F_p = get_work1(&work, WORK_DX);
     F_m = get_work1(&work, WORK_DX);

     if (flags_or(derivs_p, n_derivs)) {
          atran_l = get_work1(&work, WORK_DDERIVS);

          F_p_l   = get_work2(&work, WORK_DX, WORK_DERIVS_V, derivs_p);
          F_m_l   = get_work2(&work, WORK_DX, WORK_DERIVS_V, derivs_p);
     }
if (1) {
     double **tpr;
     double **tmr;
     double **gamma;
     double ***tpr_l;
     double ***tmr_l;
     double ***gamma_l;

     tpr   = get_work1(&work, WORK_DXX);
     tmr   = get_work1(&work, WORK_DXX);
     gamma = get_work1(&work, WORK_DXX);

     if (flags_or(derivs_h, n_derivs)) {
          tpr_l   = get_work2(&work, WORK_DXX, WORK_DERIVS_V, derivs_h);
          tmr_l   = get_work2(&work, WORK_DXX, WORK_DERIVS_V, derivs_h);
          gamma_l = get_work2(&work, WORK_DXX, WORK_DERIVS_V, derivs_h);
     }

     build_txr(n_quad, n_stokes, n_derivs, r_p, t_p, tpr, tmr, r_p_l, t_p_l, tpr_l, tmr_l, derivs_h, work);
     build_gamma(n_quad_v, n_derivs, tpr, tmr, gamma, tpr_l, tmr_l, gamma_l, derivs_h, work);

     build_source_vectors_1n(n_quad, n_stokes, n_derivs, qx_v, F_0, omega, omega_l, as_0, as_0_l, P_q0_mm, P_q0_pm, tpr, tmr, gamma, F_p, F_m, P_q0_mm_l, P_q0_pm_l, tpr_l, tmr_l, gamma_l, F_p_l, F_m_l, derivs_h, derivs_p, save_tree, work);
}
else
     build_source_vectors_2n(n_quad_v, n_derivs, qx_v, F_0, omega, omega_l, as_0, as_0_l, P_q0_mm, P_q0_pm, r_p, t_p, F_p, F_m, P_q0_mm_l, P_q0_pm_l, r_p_l, t_p_l, F_p_l, F_m_l, derivs_h, derivs_p, work);

     atran = exp(-ltau * as_0);

     if (flags_or(derivs_p, n_derivs)) {
          for (i = 0; i < n_derivs; ++i) {
               if (! derivs_p[i])
                    continue;

               atran_l[i] = -(ltau_l[i] * as_0 + ltau * as_0_l[i]) * atran;
          }
     }

     build_global_source(n_quad_v, n_derivs, atran, atran_l, R_p, T_p, F_p, F_m, S_p, S_m, R_p_l, T_p_l, F_p_l, F_m_l, S_p_l, S_m_l, derivs_h, derivs_p, work);
}

}



/*******************************************************************************
 *
 ******************************************************************************/
#ifdef INCLUDE_DEV_SOURCE
#include "../src2/xrtm_doub_rts2.c"
#endif
