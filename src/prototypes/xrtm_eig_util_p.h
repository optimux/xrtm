/* xrtm_eig_util.c */
int is_trivial_eigenvector(int i, int n_quad, double **evecs);
int is_degenerate_eigenvalue(int i, int n_quad, double *evals);
void zero_eigen_derivs(int i, int n_quad, int n_derivs, double **evals_r_l, double **evals_i_l, double ***evecs_l, uchar *derivs);
void perturb_zero_elems(int n, double **A);
void eig_1n_gen_complex(int n_quad, int n_derivs, double **gamma, double *evals_r, double *evals_i, double **evecs, double ***gamma_l, double **evals_r_l, double **evals_i_l, double ***evecs_l, int eigen_solver, uchar *derivs, save_tree_data save_tree, work_data work);
void eig_1n_to_2n_real(int n_quad, int n_derivs, double **tpr, double **tmr, double *evals, double **evecs, double *nu, double **X_p, double **X_m, double ***tpr_l, double ***tmr_l, double **evals_l, double ***evecs_l, double **nu_l, double ***X_p_l, double ***X_m_l, double **aux, double ***aul, uchar *derivs, save_tree_data save_tree, work_data work);
void eig_1n_to_2n_complex(int n_quad, int n_derivs, double **tpr, double **tmr, double *evals_r, double *evals_i, double **evecs, dcomplex *nu, dcomplex **X_p, dcomplex **X_m, double ***tpr_l, double ***tmr_l, double **evals_r_l, double **evals_i_l, double ***evecs_l, dcomplex **nu_l, dcomplex ***X_p_l, dcomplex ***X_m_l, uchar *derivs, save_tree_data save_tree, work_data work);
void eig_2n_gen_real(int n_quad, int n_derivs, double **tpr, double **tmr, double **gamma, double *nu, double **X_p, double **X_m, double ***tpr_l, double ***tmr_l, double ***gamma_l, double **nu_l, double ***X_p_l, double ***X_m_l, int eigen_solver, uchar *derivs, save_tree_data save_tree, work_data work);
void eig_2n_gen_complex(int n_quad, int n_derivs, double **tpr, double **tmr, double **gamma, dcomplex *nu, dcomplex **X_p, dcomplex **X_m, double ***tpr_l, double ***tmr_l, double ***gamma_l, dcomplex **nu_l, dcomplex ***X_p_l, dcomplex ***X_m_l, int eigen_solver, uchar *derivs, save_tree_data save_tree, work_data work);
