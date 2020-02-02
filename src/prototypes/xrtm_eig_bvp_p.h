/* xrtm_eig_bvp.c */
void calc_radiance_levels(int n_quad, int n_layers, int n_derivs, int n_ulevels, int *ulevels, double *ltau, double **ltau_l, double *atran, double **atran_l, double **nu, double ***X_p, double ***X_m, double **Fs_p, double **Fs_m, double **Fs1_p, double **Fs1_m, double **Ft0_p, double **Ft0_m, double **Ft1_p, double **Ft1_m, double ***nu_l, double ****X_p_l, double ****X_m_l, double ***Fs_p_l, double ***Fs_m_l, double ***Fs1_p_l, double ***Fs1_m_l, double ***Ft0_p_l, double ***Ft0_m_l, double ***Ft1_p_l, double ***Ft1_m_l, double *B, double **B_l, double **I_p, double **I_m, double ***I_p_l, double ***I_m_l, int solar, int thermal, uchar **derivs_layers, uchar **derivs_beam, uchar **derivs_thermal, save_tree_data save_tree, work_data work);
void calc_radiance_taus(int n_quad, int n_layers, int n_derivs, int n_ulevels, int *ulevels, double *utaus, double *ltau, double **ltau_l, double *as_0, double **as_0_l, double *atran, double **atran_l, double **nu, double ***X_p, double ***X_m, double **Fs_p, double **Fs_m, double ***nu_l, double ****X_p_l, double ****X_m_l, double ***Fs_p_l, double ***Fs_m_l, double *B, double **B_l, double **I_p, double **I_m, double ***I_p_l, double ***I_m_l, int solar, int thermal, uchar **derivs_layers, uchar **derivs_beam, uchar **derivs_thermal, save_tree_data save_tree, work_data work);
void calc_radiance_levels2(int n_quad, int n_layers, int n_derivs, int n_ulevels, int *ulevels, double *ltau, double **ltau_l, double *atran, double **atran_l, dcomplex **nu, dcomplex ***X_p, dcomplex ***X_m, double **Fs_p, double **Fs_m, double **Fs1_p, double **Fs1_m, double **Ft0_p, double **Ft0_m, double **Ft1_p, double **Ft1_m, dcomplex ***nu_l, dcomplex ****X_p_l, dcomplex ****X_m_l, double ***Fs_p_l, double ***Fs_m_l, double ***Fs1_p_l, double ***Fs1_m_l, double ***Ft0_p_l, double ***Ft0_m_l, double ***Ft1_p_l, double ***Ft1_m_l, dcomplex *B, dcomplex **B_l, double **I_p, double **I_m, double ***I_p_l, double ***I_m_l, int solar, int thermal, uchar **derivs_layers, uchar **derivs_beam, uchar **derivs_thermal, save_tree_data save_tree, work_data work);
void calc_radiance_taus2(int n_quad, int n_layers, int n_derivs, int n_ulevels, int *ulevels, double *utaus, double *ltau, double **ltau_l, double *as_0, double **as_0_l, double *atran, double **atran_l, dcomplex **nu, dcomplex ***X_p, dcomplex ***X_m, double **Fs_p, double **Fs_m, dcomplex ***nu_l, dcomplex ****X_p_l, dcomplex ****X_m_l, double ***Fs_p_l, double ***Fs_m_l, dcomplex *B, dcomplex **B_l, double **I_p, double **I_m, double ***I_p_l, double ***I_m_l, int solar, int thermal, uchar **derivs_layers, uchar **derivs_beam, uchar **derivs_thermal, save_tree_data save_tree, work_data work);
void rtm_eig_bvp(int i_four, int n_quad, int n_stokes, int n_derivs, int n_layers, double qf, double *qx_v, double *qw_v, double F_0, double mu_0, int *ulevels, double *utaus, int n_ulevels, double *umus, int n_umus, double *planck, double **planck_l, double *omega, double **omega_l, double *ltau, double **ltau_l, double **Rs_qq, double ***Rs_qq_l, double *Rs_u0, double **Rs_u0_l, double **Rs_uq, double ***Rs_uq_l, double *btran, double **btran_l, double *as_0, double **as_0_l, double *atran, double **atran_l, double **P_q0_mm, double **P_q0_pm, double **P_u0_mm, double **P_u0_pm, double ***P_uq_pp, double ***P_uq_mp, double ***P_uq_mm, double ***P_uq_pm, double ***r_p, double ***t_p, double ***r_m, double ***t_m, double ***P_q0_mm_l, double ***P_q0_pm_l, double ***P_u0_mm_l, double ***P_u0_pm_l, double ****P_uq_pp_l, double ****P_uq_mp_l, double ****P_uq_mm_l, double ****P_uq_pm_l, double ****r_p_l, double ****t_p_l, double ****r_m_l, double ****t_m_l, double *I1_m, double **I1_m_l, double *In_p, double **In_p_l, double **I_p, double **I_m, double ***I_p_l, double ***I_m_l, int add_single_scattering, int greens, int sfi, int surface, int solar, int thermal, int upwelling, int downwelling, int utau_output, int vector, int eigen_solver_real, int eigen_solver_complex, derivs_data *derivs, save_tree_data save_tree, work_data work, double F_iso_top, double *F_iso_top_l, double F_iso_bot, double *F_iso_bot_l, double surface_b, double *surface_b_l);
