c***********************************************************************
c This file was generated by bindx version 0.01.  Edit at your own risk.
c***********************************************************************


      subroutine xrtm_create_f77(d, options, solvers, max_coef, n_quad,
     &n_stokes, n_derivs, n_layers, n_theta_0s, n_kernels,
     &n_kernel_quad, kernels, n_out_levels, n_out_thetas, error)
      implicit none
      byte d(*)
      integer options
      integer solvers
      integer max_coef
      integer n_quad
      integer n_stokes
      integer n_derivs
      integer n_layers
      integer n_theta_0s
      integer n_kernels
      integer n_kernel_quad
      integer kernels(*)
      integer n_out_levels
      integer n_out_thetas
      integer error
      integer xrtm_create_bindx_f77
      error = xrtm_create_bindx_f77(d, options, solvers, max_coef,
     &n_quad, n_stokes, n_derivs, n_layers, n_theta_0s, n_kernels,
     &n_kernel_quad, kernels, n_out_levels, n_out_thetas)
      end subroutine xrtm_create_f77


      subroutine xrtm_destroy_f77(d, error)
      implicit none
      byte d(*)
      integer error
      integer xrtm_destroy_bindx_f77
      error = xrtm_destroy_bindx_f77(d)
      end subroutine xrtm_destroy_f77


      integer function xrtm_get_options_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_options_bindx_f77
      xrtm_get_options_f77 = xrtm_get_options_bindx_f77(d)
      end function xrtm_get_options_f77


      integer function xrtm_get_solvers_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_solvers_bindx_f77
      xrtm_get_solvers_f77 = xrtm_get_solvers_bindx_f77(d)
      end function xrtm_get_solvers_f77


      integer function xrtm_get_max_coef_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_max_coef_bindx_f77
      xrtm_get_max_coef_f77 = xrtm_get_max_coef_bindx_f77(d)
      end function xrtm_get_max_coef_f77


      integer function xrtm_get_n_quad_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_n_quad_bindx_f77
      xrtm_get_n_quad_f77 = xrtm_get_n_quad_bindx_f77(d)
      end function xrtm_get_n_quad_f77


      integer function xrtm_get_n_stokes_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_n_stokes_bindx_f77
      xrtm_get_n_stokes_f77 = xrtm_get_n_stokes_bindx_f77(d)
      end function xrtm_get_n_stokes_f77


      integer function xrtm_get_n_derivs_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_n_derivs_bindx_f77
      xrtm_get_n_derivs_f77 = xrtm_get_n_derivs_bindx_f77(d)
      end function xrtm_get_n_derivs_f77


      integer function xrtm_get_n_layers_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_n_layers_bindx_f77
      xrtm_get_n_layers_f77 = xrtm_get_n_layers_bindx_f77(d)
      end function xrtm_get_n_layers_f77


      integer function xrtm_get_n_kernels_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_n_kernels_bindx_f77
      xrtm_get_n_kernels_f77 = xrtm_get_n_kernels_bindx_f77(d)
      end function xrtm_get_n_kernels_f77


      integer function xrtm_get_n_kernel_quad_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_n_kernel_quad_bindx_f77
      xrtm_get_n_kernel_quad_f77 = xrtm_get_n_kernel_quad_bindx_f77(d)
      end function xrtm_get_n_kernel_quad_f77


      integer function xrtm_get_kernel_f77(d, i_kernel)
      implicit none
      byte d(*)
      integer i_kernel
      integer xrtm_get_kernel_bindx_f77
      xrtm_get_kernel_f77 = xrtm_get_kernel_bindx_f77(d, i_kernel)
      end function xrtm_get_kernel_f77


      integer function xrtm_get_n_out_levels_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_n_out_levels_bindx_f77
      xrtm_get_n_out_levels_f77 = xrtm_get_n_out_levels_bindx_f77(d)
      end function xrtm_get_n_out_levels_f77


      integer function xrtm_get_n_out_thetas_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_n_out_thetas_bindx_f77
      xrtm_get_n_out_thetas_f77 = xrtm_get_n_out_thetas_bindx_f77(d)
      end function xrtm_get_n_out_thetas_f77


      subroutine xrtm_set_doub_d_tau_f77(d, d_tau, error)
      implicit none
      byte d(*)
      real*8 d_tau
      integer error
      integer xrtm_set_doub_d_tau_bindx_f77
      error = xrtm_set_doub_d_tau_bindx_f77(d, d_tau)
      end subroutine xrtm_set_doub_d_tau_f77


      real*8 function xrtm_get_doub_d_tau_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_doub_d_tau_bindx_f77
      xrtm_get_doub_d_tau_f77 = xrtm_get_doub_d_tau_bindx_f77(d)
      end function xrtm_get_doub_d_tau_f77


      subroutine xrtm_set_pade_params_f77(d, pade_s, pade_r, error)
      implicit none
      byte d(*)
      integer pade_s
      integer pade_r
      integer error
      integer xrtm_set_pade_params_bindx_f77
      error = xrtm_set_pade_params_bindx_f77(d, pade_s, pade_r)
      end subroutine xrtm_set_pade_params_f77


      subroutine xrtm_get_pade_params_f77(d, pade_s, pade_r, error)
      implicit none
      byte d(*)
      integer pade_s
      integer pade_r
      integer error
      integer xrtm_get_pade_params_bindx_f77
      error = xrtm_get_pade_params_bindx_f77(d, pade_s, pade_r)
      end subroutine xrtm_get_pade_params_f77


      subroutine xrtm_set_sos_params_f77(d, max_os, max_tau, sos_tol,
     &error)
      implicit none
      byte d(*)
      integer max_os
      real*8 max_tau
      real*8 sos_tol
      integer error
      integer xrtm_set_sos_params_bindx_f77
      error = xrtm_set_sos_params_bindx_f77(d, max_os, max_tau, sos_tol)
      end subroutine xrtm_set_sos_params_f77


      subroutine xrtm_get_sos_params_f77(d, max_os, max_tau, sos_tol,
     &error)
      implicit none
      byte d(*)
      integer max_os
      real*8 max_tau
      real*8 sos_tol
      integer error
      integer xrtm_get_sos_params_bindx_f77
      error = xrtm_get_sos_params_bindx_f77(d, max_os, max_tau, sos_tol)
      end subroutine xrtm_get_sos_params_f77


      subroutine xrtm_set_fourier_tol_f77(d, fourier_tol, error)
      implicit none
      byte d(*)
      real*8 fourier_tol
      integer error
      integer xrtm_set_fourier_tol_bindx_f77
      error = xrtm_set_fourier_tol_bindx_f77(d, fourier_tol)
      end subroutine xrtm_set_fourier_tol_f77


      real*8 function xrtm_get_fourier_tol_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_fourier_tol_bindx_f77
      xrtm_get_fourier_tol_f77 = xrtm_get_fourier_tol_bindx_f77(d)
      end function xrtm_get_fourier_tol_f77


      subroutine xrtm_set_lambda_f77(d, lambda, error)
      implicit none
      byte d(*)
      real*8 lambda
      integer error
      integer xrtm_set_lambda_bindx_f77
      error = xrtm_set_lambda_bindx_f77(d, lambda)
      end subroutine xrtm_set_lambda_f77


      real*8 function xrtm_get_lambda_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_lambda_bindx_f77
      xrtm_get_lambda_f77 = xrtm_get_lambda_bindx_f77(d)
      end function xrtm_get_lambda_f77


      subroutine xrtm_set_planet_r_f77(d, planet_r, error)
      implicit none
      byte d(*)
      real*8 planet_r
      integer error
      integer xrtm_set_planet_r_bindx_f77
      error = xrtm_set_planet_r_bindx_f77(d, planet_r)
      end subroutine xrtm_set_planet_r_f77


      real*8 function xrtm_get_planet_r_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_planet_r_bindx_f77
      xrtm_get_planet_r_f77 = xrtm_get_planet_r_bindx_f77(d)
      end function xrtm_get_planet_r_f77


      subroutine xrtm_set_levels_z_f77(d, levels_z, error)
      implicit none
      byte d(*)
      real*8 levels_z(*)
      integer error
      integer xrtm_set_levels_z_bindx_f77
      error = xrtm_set_levels_z_bindx_f77(d, levels_z)
      end subroutine xrtm_set_levels_z_f77


      subroutine xrtm_get_levels_z_f77(d, levels_z, error)
      implicit none
      byte d(*)
      real*8 levels_z(*)
      integer error
      integer xrtm_get_levels_z_bindx_f77
      error = xrtm_get_levels_z_bindx_f77(d, levels_z)
      end subroutine xrtm_get_levels_z_f77


      subroutine xrtm_set_out_levels_f77(d, out_levels, error)
      implicit none
      byte d(*)
      integer out_levels(*)
      integer error
      integer xrtm_set_out_levels_bindx_f77
      error = xrtm_set_out_levels_bindx_f77(d, out_levels)
      end subroutine xrtm_set_out_levels_f77


      subroutine xrtm_get_out_levels_f77(d, out_levels, error)
      implicit none
      byte d(*)
      integer out_levels(*)
      integer error
      integer xrtm_get_out_levels_bindx_f77
      error = xrtm_get_out_levels_bindx_f77(d, out_levels)
      end subroutine xrtm_get_out_levels_f77


      subroutine xrtm_set_out_taus_f77(d, out_taus, error)
      implicit none
      byte d(*)
      real*8 out_taus(*)
      integer error
      integer xrtm_set_out_taus_bindx_f77
      error = xrtm_set_out_taus_bindx_f77(d, out_taus)
      end subroutine xrtm_set_out_taus_f77


      subroutine xrtm_get_out_taus_f77(d, out_taus, error)
      implicit none
      byte d(*)
      real*8 out_taus(*)
      integer error
      integer xrtm_get_out_taus_bindx_f77
      error = xrtm_get_out_taus_bindx_f77(d, out_taus)
      end subroutine xrtm_get_out_taus_f77


      subroutine xrtm_set_out_thetas_f77(d, out_thetas, error)
      implicit none
      byte d(*)
      real*8 out_thetas(*)
      integer error
      integer xrtm_set_out_thetas_bindx_f77
      error = xrtm_set_out_thetas_bindx_f77(d, out_thetas)
      end subroutine xrtm_set_out_thetas_f77


      subroutine xrtm_get_out_thetas_f77(d, out_thetas, error)
      implicit none
      byte d(*)
      real*8 out_thetas(*)
      integer error
      integer xrtm_get_out_thetas_bindx_f77
      error = xrtm_get_out_thetas_bindx_f77(d, out_thetas)
      end subroutine xrtm_get_out_thetas_f77


      subroutine xrtm_set_F_iso_top_f77(d, F_iso_top, error)
      implicit none
      byte d(*)
      real*8 F_iso_top
      integer error
      integer xrtm_set_F_iso_top_bindx_f77
      error = xrtm_set_F_iso_top_bindx_f77(d, F_iso_top)
      end subroutine xrtm_set_F_iso_top_f77


      real*8 function xrtm_get_F_iso_top_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_F_iso_top_bindx_f77
      xrtm_get_F_iso_top_f77 = xrtm_get_F_iso_top_bindx_f77(d)
      end function xrtm_get_F_iso_top_f77


      subroutine xrtm_set_F_iso_top_l_1_f77(d, i_deriv, F_iso_top_l,
     &error)
      implicit none
      byte d(*)
      integer i_deriv
      real*8 F_iso_top_l
      integer error
      integer xrtm_set_F_iso_top_l_1_bindx_f77
      error = xrtm_set_F_iso_top_l_1_bindx_f77(d, i_deriv, F_iso_top_l)
      end subroutine xrtm_set_F_iso_top_l_1_f77


      subroutine xrtm_set_F_iso_top_l_n_f77(d, F_iso_top_l, error)
      implicit none
      byte d(*)
      real*8 F_iso_top_l(*)
      integer error
      integer xrtm_set_F_iso_top_l_n_bindx_f77
      error = xrtm_set_F_iso_top_l_n_bindx_f77(d, F_iso_top_l)
      end subroutine xrtm_set_F_iso_top_l_n_f77


      real*8 function xrtm_get_F_iso_top_l_f77(d, i_deriv)
      implicit none
      byte d(*)
      integer i_deriv
      integer xrtm_get_F_iso_top_l_bindx_f77
      xrtm_get_F_iso_top_l_f77 = xrtm_get_F_iso_top_l_bindx_f77(d,
     &i_deriv)
      end function xrtm_get_F_iso_top_l_f77


      subroutine xrtm_set_F_iso_bot_f77(d, F_iso_bot, error)
      implicit none
      byte d(*)
      real*8 F_iso_bot
      integer error
      integer xrtm_set_F_iso_bot_bindx_f77
      error = xrtm_set_F_iso_bot_bindx_f77(d, F_iso_bot)
      end subroutine xrtm_set_F_iso_bot_f77


      real*8 function xrtm_get_F_iso_bot_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_F_iso_bot_bindx_f77
      xrtm_get_F_iso_bot_f77 = xrtm_get_F_iso_bot_bindx_f77(d)
      end function xrtm_get_F_iso_bot_f77


      subroutine xrtm_set_F_iso_bot_l_1_f77(d, i_deriv, F_iso_bot_l,
     &error)
      implicit none
      byte d(*)
      integer i_deriv
      real*8 F_iso_bot_l
      integer error
      integer xrtm_set_F_iso_bot_l_1_bindx_f77
      error = xrtm_set_F_iso_bot_l_1_bindx_f77(d, i_deriv, F_iso_bot_l)
      end subroutine xrtm_set_F_iso_bot_l_1_f77


      subroutine xrtm_set_F_iso_bot_l_n_f77(d, F_iso_bot_l, error)
      implicit none
      byte d(*)
      real*8 F_iso_bot_l(*)
      integer error
      integer xrtm_set_F_iso_bot_l_n_bindx_f77
      error = xrtm_set_F_iso_bot_l_n_bindx_f77(d, F_iso_bot_l)
      end subroutine xrtm_set_F_iso_bot_l_n_f77


      real*8 function xrtm_get_F_iso_bot_l_f77(d, i_deriv)
      implicit none
      byte d(*)
      integer i_deriv
      integer xrtm_get_F_iso_bot_l_bindx_f77
      xrtm_get_F_iso_bot_l_f77 = xrtm_get_F_iso_bot_l_bindx_f77(d,
     &i_deriv)
      end function xrtm_get_F_iso_bot_l_f77


      subroutine xrtm_set_F_0_f77(d, F_0, error)
      implicit none
      byte d(*)
      real*8 F_0
      integer error
      integer xrtm_set_F_0_bindx_f77
      error = xrtm_set_F_0_bindx_f77(d, F_0)
      end subroutine xrtm_set_F_0_f77


      real*8 function xrtm_get_F_0_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_F_0_bindx_f77
      xrtm_get_F_0_f77 = xrtm_get_F_0_bindx_f77(d)
      end function xrtm_get_F_0_f77


      subroutine xrtm_set_theta_0_f77(d, theta_0, error)
      implicit none
      byte d(*)
      real*8 theta_0
      integer error
      integer xrtm_set_theta_0_bindx_f77
      error = xrtm_set_theta_0_bindx_f77(d, theta_0)
      end subroutine xrtm_set_theta_0_f77


      real*8 function xrtm_get_theta_0_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_theta_0_bindx_f77
      xrtm_get_theta_0_f77 = xrtm_get_theta_0_bindx_f77(d)
      end function xrtm_get_theta_0_f77


      subroutine xrtm_set_phi_0_f77(d, phi_0, error)
      implicit none
      byte d(*)
      real*8 phi_0
      integer error
      integer xrtm_set_phi_0_bindx_f77
      error = xrtm_set_phi_0_bindx_f77(d, phi_0)
      end subroutine xrtm_set_phi_0_f77


      real*8 function xrtm_get_phi_0_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_phi_0_bindx_f77
      xrtm_get_phi_0_f77 = xrtm_get_phi_0_bindx_f77(d)
      end function xrtm_get_phi_0_f77


      subroutine xrtm_set_levels_b_f77(d, levels_b, error)
      implicit none
      byte d(*)
      real*8 levels_b(*)
      integer error
      integer xrtm_set_levels_b_bindx_f77
      error = xrtm_set_levels_b_bindx_f77(d, levels_b)
      end subroutine xrtm_set_levels_b_f77


      subroutine xrtm_get_levels_b_f77(d, levels_b, error)
      implicit none
      byte d(*)
      real*8 levels_b(*)
      integer error
      integer xrtm_get_levels_b_bindx_f77
      error = xrtm_get_levels_b_bindx_f77(d, levels_b)
      end subroutine xrtm_get_levels_b_f77


      subroutine xrtm_set_levels_b_l_1_f77(d, i_deriv, levels_b_l,
     &error)
      implicit none
      byte d(*)
      integer i_deriv
      real*8 levels_b_l(*)
      integer error
      integer xrtm_set_levels_b_l_1_bindx_f77
      error = xrtm_set_levels_b_l_1_bindx_f77(d, i_deriv, levels_b_l)
      end subroutine xrtm_set_levels_b_l_1_f77


      subroutine xrtm_set_levels_b_l_n_f77(d, levels_b_l, error)
      implicit none
      byte d(*)
      real*8 levels_b_l(*)
      integer error
      integer xrtm_set_levels_b_l_n_bindx_f77
      error = xrtm_set_levels_b_l_n_bindx_f77(d, levels_b_l)
      end subroutine xrtm_set_levels_b_l_n_f77


      subroutine xrtm_get_levels_b_l_f77(d, i_deriv, levels_b_l, error)
      implicit none
      byte d(*)
      integer i_deriv
      real*8 levels_b_l(*)
      integer error
      integer xrtm_get_levels_b_l_bindx_f77
      error = xrtm_get_levels_b_l_bindx_f77(d, i_deriv, levels_b_l)
      end subroutine xrtm_get_levels_b_l_f77


      subroutine xrtm_set_surface_b_f77(d, surface_b, error)
      implicit none
      byte d(*)
      real*8 surface_b
      integer error
      integer xrtm_set_surface_b_bindx_f77
      error = xrtm_set_surface_b_bindx_f77(d, surface_b)
      end subroutine xrtm_set_surface_b_f77


      real*8 function xrtm_get_surface_b_f77(d)
      implicit none
      byte d(*)
      integer xrtm_get_surface_b_bindx_f77
      xrtm_get_surface_b_f77 = xrtm_get_surface_b_bindx_f77(d)
      end function xrtm_get_surface_b_f77


      subroutine xrtm_set_surface_b_l_1_f77(d, i_deriv, surface_b_l,
     &error)
      implicit none
      byte d(*)
      integer i_deriv
      real*8 surface_b_l
      integer error
      integer xrtm_set_surface_b_l_1_bindx_f77
      error = xrtm_set_surface_b_l_1_bindx_f77(d, i_deriv, surface_b_l)
      end subroutine xrtm_set_surface_b_l_1_f77


      subroutine xrtm_set_surface_b_l_n_f77(d, surface_b_l, error)
      implicit none
      byte d(*)
      real*8 surface_b_l(*)
      integer error
      integer xrtm_set_surface_b_l_n_bindx_f77
      error = xrtm_set_surface_b_l_n_bindx_f77(d, surface_b_l)
      end subroutine xrtm_set_surface_b_l_n_f77


      real*8 function xrtm_get_surface_b_l_f77(d, i_deriv)
      implicit none
      byte d(*)
      integer i_deriv
      integer xrtm_get_surface_b_l_bindx_f77
      xrtm_get_surface_b_l_f77 = xrtm_get_surface_b_l_bindx_f77(d,
     &i_deriv)
      end function xrtm_get_surface_b_l_f77


      subroutine xrtm_set_g_1_f77(d, i_layer, g, error)
      implicit none
      byte d(*)
      integer i_layer
      real*8 g
      integer error
      integer xrtm_set_g_1_bindx_f77
      error = xrtm_set_g_1_bindx_f77(d, i_layer, g)
      end subroutine xrtm_set_g_1_f77


      subroutine xrtm_set_g_n_f77(d, g, error)
      implicit none
      byte d(*)
      real*8 g(*)
      integer error
      integer xrtm_set_g_n_bindx_f77
      error = xrtm_set_g_n_bindx_f77(d, g)
      end subroutine xrtm_set_g_n_f77


      real*8 function xrtm_get_g_f77(d, i_layer)
      implicit none
      byte d(*)
      integer i_layer
      integer xrtm_get_g_bindx_f77
      xrtm_get_g_f77 = xrtm_get_g_bindx_f77(d, i_layer)
      end function xrtm_get_g_f77


      subroutine xrtm_set_g_l_11_f77(d, i_layer, i_deriv, g_l, error)
      implicit none
      byte d(*)
      integer i_layer
      integer i_deriv
      real*8 g_l
      integer error
      integer xrtm_set_g_l_11_bindx_f77
      error = xrtm_set_g_l_11_bindx_f77(d, i_layer, i_deriv, g_l)
      end subroutine xrtm_set_g_l_11_f77


      subroutine xrtm_set_g_l_n1_f77(d, i_deriv, g_l, error)
      implicit none
      byte d(*)
      integer i_deriv
      real*8 g_l(*)
      integer error
      integer xrtm_set_g_l_n1_bindx_f77
      error = xrtm_set_g_l_n1_bindx_f77(d, i_deriv, g_l)
      end subroutine xrtm_set_g_l_n1_f77


      subroutine xrtm_set_g_l_1n_f77(d, i_layer, g_l, error)
      implicit none
      byte d(*)
      integer i_layer
      real*8 g_l(*)
      integer error
      integer xrtm_set_g_l_1n_bindx_f77
      error = xrtm_set_g_l_1n_bindx_f77(d, i_layer, g_l)
      end subroutine xrtm_set_g_l_1n_f77


      subroutine xrtm_set_g_l_nn_f77(d, g_l, error)
      implicit none
      byte d(*)
      real*8 g_l(*)
      integer error
      integer xrtm_set_g_l_nn_bindx_f77
      error = xrtm_set_g_l_nn_bindx_f77(d, g_l)
      end subroutine xrtm_set_g_l_nn_f77


      real*8 function xrtm_get_g_l_f77(d, i_layer, i_deriv)
      implicit none
      byte d(*)
      integer i_layer
      integer i_deriv
      integer xrtm_get_g_l_bindx_f77
      xrtm_get_g_l_f77 = xrtm_get_g_l_bindx_f77(d, i_layer, i_deriv)
      end function xrtm_get_g_l_f77


      subroutine xrtm_set_coef_1_f77(d, i_layer, n_coef_layer, coef,
     &error)
      implicit none
      byte d(*)
      integer i_layer
      integer n_coef_layer
      real*8 coef(*)
      integer error
      integer xrtm_set_coef_1_bindx_f77
      error = xrtm_set_coef_1_bindx_f77(d, i_layer, n_coef_layer, coef)
      end subroutine xrtm_set_coef_1_f77


      subroutine xrtm_set_coef_n_f77(d, n_coef_layer, coef, error)
      implicit none
      byte d(*)
      integer n_coef_layer(*)
      real*8 coef(*)
      integer error
      integer xrtm_set_coef_n_bindx_f77
      error = xrtm_set_coef_n_bindx_f77(d, n_coef_layer, coef)
      end subroutine xrtm_set_coef_n_f77


      integer function xrtm_get_n_coef_f77(d, i_layer)
      implicit none
      byte d(*)
      integer i_layer
      integer xrtm_get_n_coef_bindx_f77
      xrtm_get_n_coef_f77 = xrtm_get_n_coef_bindx_f77(d, i_layer)
      end function xrtm_get_n_coef_f77


      real*8 function xrtm_get_coef_f77(d, i_layer, i_elem, i_coef)
      implicit none
      byte d(*)
      integer i_layer
      integer i_elem
      integer i_coef
      integer xrtm_get_coef_bindx_f77
      xrtm_get_coef_f77 = xrtm_get_coef_bindx_f77(d, i_layer, i_elem,
     &i_coef)
      end function xrtm_get_coef_f77


      subroutine xrtm_set_coef_l_11_f77(d, i_layer, i_deriv, coef_l,
     &error)
      implicit none
      byte d(*)
      integer i_layer
      integer i_deriv
      real*8 coef_l(*)
      integer error
      integer xrtm_set_coef_l_11_bindx_f77
      error = xrtm_set_coef_l_11_bindx_f77(d, i_layer, i_deriv, coef_l)
      end subroutine xrtm_set_coef_l_11_f77


      subroutine xrtm_set_coef_l_n1_f77(d, i_deriv, coef_l, error)
      implicit none
      byte d(*)
      integer i_deriv
      real*8 coef_l(*)
      integer error
      integer xrtm_set_coef_l_n1_bindx_f77
      error = xrtm_set_coef_l_n1_bindx_f77(d, i_deriv, coef_l)
      end subroutine xrtm_set_coef_l_n1_f77


      subroutine xrtm_set_coef_l_1n_f77(d, i_layer, coef_l, error)
      implicit none
      byte d(*)
      integer i_layer
      real*8 coef_l(*)
      integer error
      integer xrtm_set_coef_l_1n_bindx_f77
      error = xrtm_set_coef_l_1n_bindx_f77(d, i_layer, coef_l)
      end subroutine xrtm_set_coef_l_1n_f77


      subroutine xrtm_set_coef_l_nn_f77(d, coef_l, error)
      implicit none
      byte d(*)
      real*8 coef_l(*)
      integer error
      integer xrtm_set_coef_l_nn_bindx_f77
      error = xrtm_set_coef_l_nn_bindx_f77(d, coef_l)
      end subroutine xrtm_set_coef_l_nn_f77


      real*8 function xrtm_get_coef_l_f77(d, i_layer, i_deriv, i_elem,
     &i_coef)
      implicit none
      byte d(*)
      integer i_layer
      integer i_deriv
      integer i_elem
      integer i_coef
      integer xrtm_get_coef_l_bindx_f77
      xrtm_get_coef_l_f77 = xrtm_get_coef_l_bindx_f77(d, i_layer,
     &i_deriv, i_elem, i_coef)
      end function xrtm_get_coef_l_f77


      subroutine xrtm_set_omega_1_f77(d, i_layer, omega, error)
      implicit none
      byte d(*)
      integer i_layer
      real*8 omega
      integer error
      integer xrtm_set_omega_1_bindx_f77
      error = xrtm_set_omega_1_bindx_f77(d, i_layer, omega)
      end subroutine xrtm_set_omega_1_f77


      subroutine xrtm_set_omega_n_f77(d, omega, error)
      implicit none
      byte d(*)
      real*8 omega(*)
      integer error
      integer xrtm_set_omega_n_bindx_f77
      error = xrtm_set_omega_n_bindx_f77(d, omega)
      end subroutine xrtm_set_omega_n_f77


      real*8 function xrtm_get_omega_f77(d, i_layer)
      implicit none
      byte d(*)
      integer i_layer
      integer xrtm_get_omega_bindx_f77
      xrtm_get_omega_f77 = xrtm_get_omega_bindx_f77(d, i_layer)
      end function xrtm_get_omega_f77


      subroutine xrtm_set_omega_l_11_f77(d, i_layer, i_deriv, omega_l,
     &error)
      implicit none
      byte d(*)
      integer i_layer
      integer i_deriv
      real*8 omega_l
      integer error
      integer xrtm_set_omega_l_11_bindx_f77
      error = xrtm_set_omega_l_11_bindx_f77(d, i_layer, i_deriv,
     &omega_l)
      end subroutine xrtm_set_omega_l_11_f77


      subroutine xrtm_set_omega_l_n1_f77(d, i_deriv, omega_l, error)
      implicit none
      byte d(*)
      integer i_deriv
      real*8 omega_l(*)
      integer error
      integer xrtm_set_omega_l_n1_bindx_f77
      error = xrtm_set_omega_l_n1_bindx_f77(d, i_deriv, omega_l)
      end subroutine xrtm_set_omega_l_n1_f77


      subroutine xrtm_set_omega_l_1n_f77(d, i_layer, omega_l, error)
      implicit none
      byte d(*)
      integer i_layer
      real*8 omega_l(*)
      integer error
      integer xrtm_set_omega_l_1n_bindx_f77
      error = xrtm_set_omega_l_1n_bindx_f77(d, i_layer, omega_l)
      end subroutine xrtm_set_omega_l_1n_f77


      subroutine xrtm_set_omega_l_nn_f77(d, omega_l, error)
      implicit none
      byte d(*)
      real*8 omega_l(*)
      integer error
      integer xrtm_set_omega_l_nn_bindx_f77
      error = xrtm_set_omega_l_nn_bindx_f77(d, omega_l)
      end subroutine xrtm_set_omega_l_nn_f77


      real*8 function xrtm_get_omega_l_f77(d, i_layer, i_deriv)
      implicit none
      byte d(*)
      integer i_layer
      integer i_deriv
      integer xrtm_get_omega_l_bindx_f77
      xrtm_get_omega_l_f77 = xrtm_get_omega_l_bindx_f77(d, i_layer,
     &i_deriv)
      end function xrtm_get_omega_l_f77


      subroutine xrtm_set_ltau_1_f77(d, i_layer, ltau, error)
      implicit none
      byte d(*)
      integer i_layer
      real*8 ltau
      integer error
      integer xrtm_set_ltau_1_bindx_f77
      error = xrtm_set_ltau_1_bindx_f77(d, i_layer, ltau)
      end subroutine xrtm_set_ltau_1_f77


      subroutine xrtm_set_ltau_n_f77(d, ltau, error)
      implicit none
      byte d(*)
      real*8 ltau(*)
      integer error
      integer xrtm_set_ltau_n_bindx_f77
      error = xrtm_set_ltau_n_bindx_f77(d, ltau)
      end subroutine xrtm_set_ltau_n_f77


      real*8 function xrtm_get_ltau_f77(d, i_layer)
      implicit none
      byte d(*)
      integer i_layer
      integer xrtm_get_ltau_bindx_f77
      xrtm_get_ltau_f77 = xrtm_get_ltau_bindx_f77(d, i_layer)
      end function xrtm_get_ltau_f77


      subroutine xrtm_set_ltau_l_11_f77(d, i_layer, i_deriv, ltau_l,
     &error)
      implicit none
      byte d(*)
      integer i_layer
      integer i_deriv
      real*8 ltau_l
      integer error
      integer xrtm_set_ltau_l_11_bindx_f77
      error = xrtm_set_ltau_l_11_bindx_f77(d, i_layer, i_deriv, ltau_l)
      end subroutine xrtm_set_ltau_l_11_f77


      subroutine xrtm_set_ltau_l_n1_f77(d, i_deriv, ltau_l, error)
      implicit none
      byte d(*)
      integer i_deriv
      real*8 ltau_l(*)
      integer error
      integer xrtm_set_ltau_l_n1_bindx_f77
      error = xrtm_set_ltau_l_n1_bindx_f77(d, i_deriv, ltau_l)
      end subroutine xrtm_set_ltau_l_n1_f77


      subroutine xrtm_set_ltau_l_1n_f77(d, i_layer, ltau_l, error)
      implicit none
      byte d(*)
      integer i_layer
      real*8 ltau_l(*)
      integer error
      integer xrtm_set_ltau_l_1n_bindx_f77
      error = xrtm_set_ltau_l_1n_bindx_f77(d, i_layer, ltau_l)
      end subroutine xrtm_set_ltau_l_1n_f77


      subroutine xrtm_set_ltau_l_nn_f77(d, ltau_l, error)
      implicit none
      byte d(*)
      real*8 ltau_l(*)
      integer error
      integer xrtm_set_ltau_l_nn_bindx_f77
      error = xrtm_set_ltau_l_nn_bindx_f77(d, ltau_l)
      end subroutine xrtm_set_ltau_l_nn_f77


      real*8 function xrtm_get_ltau_l_f77(d, i_layer, i_deriv)
      implicit none
      byte d(*)
      integer i_layer
      integer i_deriv
      integer xrtm_get_ltau_l_bindx_f77
      xrtm_get_ltau_l_f77 = xrtm_get_ltau_l_bindx_f77(d, i_layer,
     &i_deriv)
      end function xrtm_get_ltau_l_f77


      subroutine xrtm_set_kernel_ampfac_f77(d, i_kernel, ampfac, error)
      implicit none
      byte d(*)
      integer i_kernel
      real*8 ampfac
      integer error
      integer xrtm_set_kernel_ampfac_bindx_f77
      error = xrtm_set_kernel_ampfac_bindx_f77(d, i_kernel, ampfac)
      end subroutine xrtm_set_kernel_ampfac_f77


      real*8 function xrtm_get_kernel_ampfac_f77(d, i_kernel)
      implicit none
      byte d(*)
      integer i_kernel
      integer xrtm_get_kernel_ampfac_bindx_f77
      xrtm_get_kernel_ampfac_f77 = xrtm_get_kernel_ampfac_bindx_f77(d,
     &i_kernel)
      end function xrtm_get_kernel_ampfac_f77


      subroutine xrtm_set_kernel_params_1_f77(d, i_kernel, i_param,
     &param, error)
      implicit none
      byte d(*)
      integer i_kernel
      integer i_param
      real*8 param
      integer error
      integer xrtm_set_kernel_params_1_bindx_f77
      error = xrtm_set_kernel_params_1_bindx_f77(d, i_kernel, i_param,
     &param)
      end subroutine xrtm_set_kernel_params_1_f77


      subroutine xrtm_set_kernel_params_n_f77(d, i_kernel, params,
     &error)
      implicit none
      byte d(*)
      integer i_kernel
      real*8 params(*)
      integer error
      integer xrtm_set_kernel_params_n_bindx_f77
      error = xrtm_set_kernel_params_n_bindx_f77(d, i_kernel, params)
      end subroutine xrtm_set_kernel_params_n_f77


      real*8 function xrtm_get_kernel_params_f77(d, i_kernel, i_param)
      implicit none
      byte d(*)
      integer i_kernel
      integer i_param
      integer xrtm_get_kernel_params_bindx_f77
      xrtm_get_kernel_params_f77 = xrtm_get_kernel_params_bindx_f77(d,
     &i_kernel, i_param)
      end function xrtm_get_kernel_params_f77


      subroutine xrtm_set_kernel_ampfac_l_1_f77(d, i_kernel, i_deriv,
     &ampfac_l, error)
      implicit none
      byte d(*)
      integer i_kernel
      integer i_deriv
      real*8 ampfac_l
      integer error
      integer xrtm_set_kernel_ampfac_l_1_bindx_f77
      error = xrtm_set_kernel_ampfac_l_1_bindx_f77(d, i_kernel, i_deriv,
     &ampfac_l)
      end subroutine xrtm_set_kernel_ampfac_l_1_f77


      subroutine xrtm_set_kernel_ampfac_l_n_f77(d, i_kernel, ampfac_l,
     &error)
      implicit none
      byte d(*)
      integer i_kernel
      real*8 ampfac_l(*)
      integer error
      integer xrtm_set_kernel_ampfac_l_n_bindx_f77
      error = xrtm_set_kernel_ampfac_l_n_bindx_f77(d, i_kernel,
     &ampfac_l)
      end subroutine xrtm_set_kernel_ampfac_l_n_f77


      real*8 function xrtm_get_kernel_ampfac_l_f77(d, i_kernel, i_deriv)
      implicit none
      byte d(*)
      integer i_kernel
      integer i_deriv
      integer xrtm_get_kernel_ampfac_l_bindx_f77
      xrtm_get_kernel_ampfac_l_f77 =
     &xrtm_get_kernel_ampfac_l_bindx_f77(d, i_kernel, i_deriv)
      end function xrtm_get_kernel_ampfac_l_f77


      subroutine xrtm_set_kernel_params_l_11_f77(d, i_kernel, i_deriv,
     &i_param, param_l, error)
      implicit none
      byte d(*)
      integer i_kernel
      integer i_deriv
      integer i_param
      real*8 param_l
      integer error
      integer xrtm_set_kernel_params_l_11_bindx_f77
      error = xrtm_set_kernel_params_l_11_bindx_f77(d, i_kernel,
     &i_deriv, i_param, param_l)
      end subroutine xrtm_set_kernel_params_l_11_f77


      subroutine xrtm_set_kernel_params_l_1n_f77(d, i_kernel, i_deriv,
     &params_l, error)
      implicit none
      byte d(*)
      integer i_kernel
      integer i_deriv
      real*8 params_l(*)
      integer error
      integer xrtm_set_kernel_params_l_1n_bindx_f77
      error = xrtm_set_kernel_params_l_1n_bindx_f77(d, i_kernel,
     &i_deriv, params_l)
      end subroutine xrtm_set_kernel_params_l_1n_f77


      subroutine xrtm_set_kernel_params_l_n1_f77(d, i_kernel, i_param,
     &params_l, error)
      implicit none
      byte d(*)
      integer i_kernel
      integer i_param
      real*8 params_l(*)
      integer error
      integer xrtm_set_kernel_params_l_n1_bindx_f77
      error = xrtm_set_kernel_params_l_n1_bindx_f77(d, i_kernel,
     &i_param, params_l)
      end subroutine xrtm_set_kernel_params_l_n1_f77


      subroutine xrtm_set_kernel_params_l_nn_f77(d, i_kernel, params_l,
     &error)
      implicit none
      byte d(*)
      integer i_kernel
      real*8 params_l(*)
      integer error
      integer xrtm_set_kernel_params_l_nn_bindx_f77
      error = xrtm_set_kernel_params_l_nn_bindx_f77(d, i_kernel,
     &params_l)
      end subroutine xrtm_set_kernel_params_l_nn_f77


      real*8 function xrtm_get_kernel_params_l_f77(d, i_kernel, i_deriv,
     &i_param)
      implicit none
      byte d(*)
      integer i_kernel
      integer i_deriv
      integer i_param
      integer xrtm_get_kernel_params_l_bindx_f77
      xrtm_get_kernel_params_l_f77 =
     &xrtm_get_kernel_params_l_bindx_f77(d, i_kernel, i_deriv, i_param)
      end function xrtm_get_kernel_params_l_f77


      subroutine xrtm_update_varied_layers_f77(d, error)
      implicit none
      byte d(*)
      integer error
      integer xrtm_update_varied_layers_bindx_f77
      error = xrtm_update_varied_layers_bindx_f77(d)
      end subroutine xrtm_update_varied_layers_f77


      subroutine xrtm_qx_f77(d, qx, error)
      implicit none
      byte d(*)
      real*8 qx(*)
      integer error
      integer xrtm_qx_bindx_f77
      error = xrtm_qx_bindx_f77(d, qx)
      end subroutine xrtm_qx_f77


      subroutine xrtm_qw_f77(d, qw, error)
      implicit none
      byte d(*)
      real*8 qw(*)
      integer error
      integer xrtm_qw_bindx_f77
      error = xrtm_qw_bindx_f77(d, qw)
      end subroutine xrtm_qw_f77


      subroutine xrtm_kernel_qx_f77(d, kernel_qx, error)
      implicit none
      byte d(*)
      real*8 kernel_qx(*)
      integer error
      integer xrtm_kernel_qx_bindx_f77
      error = xrtm_kernel_qx_bindx_f77(d, kernel_qx)
      end subroutine xrtm_kernel_qx_f77


      subroutine xrtm_kernel_qw_f77(d, kernel_qw, error)
      implicit none
      byte d(*)
      real*8 kernel_qw(*)
      integer error
      integer xrtm_kernel_qw_bindx_f77
      error = xrtm_kernel_qw_bindx_f77(d, kernel_qw)
      end subroutine xrtm_kernel_qw_f77


      subroutine xrtm_solution_f77(d, solver, solutions, n_out_phis,
     &out_phis, I_p, I_m, K_p, K_m, mean_p, mean_m, mean_p_l, mean_m_l,
     &flux_p, flux_m, flux_p_l, flux_m_l, flux_div, flux_div_l, error)
      implicit none
      byte d(*)
      integer solver
      integer solutions
      integer n_out_phis
      real*8 out_phis(*)
      real*8 I_p(*)
      real*8 I_m(*)
      real*8 K_p(*)
      real*8 K_m(*)
      real*8 mean_p(*)
      real*8 mean_m(*)
      real*8 mean_p_l(*)
      real*8 mean_m_l(*)
      real*8 flux_p(*)
      real*8 flux_m(*)
      real*8 flux_p_l(*)
      real*8 flux_m_l(*)
      real*8 flux_div(*)
      real*8 flux_div_l(*)
      integer error
      integer xrtm_solution_bindx_f77
      error = xrtm_solution_bindx_f77(d, solver, solutions, n_out_phis,
     &out_phis, I_p, I_m, K_p, K_m, mean_p, mean_m, mean_p_l, mean_m_l,
     &flux_p, flux_m, flux_p_l, flux_m_l, flux_div, flux_div_l)
      end subroutine xrtm_solution_f77


      subroutine xrtm_radiance_f77(d, solver, n_out_phis, out_phis, I_p,
     &I_m, K_p, K_m, error)
      implicit none
      byte d(*)
      integer solver
      integer n_out_phis
      real*8 out_phis(*)
      real*8 I_p(*)
      real*8 I_m(*)
      real*8 K_p(*)
      real*8 K_m(*)
      integer error
      integer xrtm_radiance_bindx_f77
      error = xrtm_radiance_bindx_f77(d, solver, n_out_phis, out_phis,
     &I_p, I_m, K_p, K_m)
      end subroutine xrtm_radiance_f77


      subroutine xrtm_mean_radiance_f77(d, solver, mean_p, mean_m,
     &mean_p_l, mean_m_l, error)
      implicit none
      byte d(*)
      integer solver
      real*8 mean_p(*)
      real*8 mean_m(*)
      real*8 mean_p_l(*)
      real*8 mean_m_l(*)
      integer error
      integer xrtm_mean_radiance_bindx_f77
      error = xrtm_mean_radiance_bindx_f77(d, solver, mean_p, mean_m,
     &mean_p_l, mean_m_l)
      end subroutine xrtm_mean_radiance_f77


      subroutine xrtm_flux_f77(d, solver, flux_p, flux_m, flux_p_l,
     &flux_m_l, error)
      implicit none
      byte d(*)
      integer solver
      real*8 flux_p(*)
      real*8 flux_m(*)
      real*8 flux_p_l(*)
      real*8 flux_m_l(*)
      integer error
      integer xrtm_flux_bindx_f77
      error = xrtm_flux_bindx_f77(d, solver, flux_p, flux_m, flux_p_l,
     &flux_m_l)
      end subroutine xrtm_flux_f77


      subroutine xrtm_flux_divergence_f77(d, solver, flux_div,
     &flux_div_l, error)
      implicit none
      byte d(*)
      integer solver
      real*8 flux_div(*)
      real*8 flux_div_l(*)
      integer error
      integer xrtm_flux_divergence_bindx_f77
      error = xrtm_flux_divergence_bindx_f77(d, solver, flux_div,
     &flux_div_l)
      end subroutine xrtm_flux_divergence_f77


