%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'Gali_2015_chapter_3_nonlinear';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Gali_2015_chapter_3_nonlinear.log');
M_.exo_names = 'eps_a';
M_.exo_names_tex = '{\varepsilon_a}';
M_.exo_names_long = 'technology shock';
M_.exo_names = char(M_.exo_names, 'eps_z');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_z}');
M_.exo_names_long = char(M_.exo_names_long, 'preference shock');
M_.exo_names = char(M_.exo_names, 'eps_m');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_m}');
M_.exo_names_long = char(M_.exo_names_long, 'money supply shock innovation');
M_.endo_names = 'C';
M_.endo_names_tex = '{C}';
M_.endo_names_long = 'Consumption';
M_.endo_names = char(M_.endo_names, 'W_real');
M_.endo_names_tex = char(M_.endo_names_tex, '{\frac{W}{P}}');
M_.endo_names_long = char(M_.endo_names_long, 'Real Wage');
M_.endo_names = char(M_.endo_names, 'Pi');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Pi}');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'A');
M_.endo_names_tex = char(M_.endo_names_tex, '{A}');
M_.endo_names_long = char(M_.endo_names_long, 'AR(1) technology process');
M_.endo_names = char(M_.endo_names, 'N');
M_.endo_names_tex = char(M_.endo_names_tex, '{N}');
M_.endo_names_long = char(M_.endo_names_long, 'Hours worked');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, '{R^n}');
M_.endo_names_long = char(M_.endo_names_long, 'Nominal Interest Rate');
M_.endo_names = char(M_.endo_names, 'realinterest');
M_.endo_names_tex = char(M_.endo_names_tex, '{R^{r}}');
M_.endo_names_long = char(M_.endo_names_long, 'Real Interest Rate');
M_.endo_names = char(M_.endo_names, 'Y');
M_.endo_names_tex = char(M_.endo_names_tex, '{Y}');
M_.endo_names_long = char(M_.endo_names_long, 'Output');
M_.endo_names = char(M_.endo_names, 'Q');
M_.endo_names_tex = char(M_.endo_names_tex, '{Q}');
M_.endo_names_long = char(M_.endo_names_long, 'Bond price');
M_.endo_names = char(M_.endo_names, 'Z');
M_.endo_names_tex = char(M_.endo_names_tex, '{Z}');
M_.endo_names_long = char(M_.endo_names_long, 'AR(1) preference shock process');
M_.endo_names = char(M_.endo_names, 'S');
M_.endo_names_tex = char(M_.endo_names_tex, '{S}');
M_.endo_names_long = char(M_.endo_names_long, 'Price dispersion');
M_.endo_names = char(M_.endo_names, 'Pi_star');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Pi^*}');
M_.endo_names_long = char(M_.endo_names_long, 'Optimal reset price');
M_.endo_names = char(M_.endo_names, 'x_aux_1');
M_.endo_names_tex = char(M_.endo_names_tex, '{x_1}');
M_.endo_names_long = char(M_.endo_names_long, 'aux. var. 1 recursive price setting');
M_.endo_names = char(M_.endo_names, 'x_aux_2');
M_.endo_names_tex = char(M_.endo_names_tex, '{x_2}');
M_.endo_names_long = char(M_.endo_names_long, 'aux. var. 2 recursive price setting');
M_.endo_names = char(M_.endo_names, 'MC');
M_.endo_names_tex = char(M_.endo_names_tex, '{mc}');
M_.endo_names_long = char(M_.endo_names_long, 'real marginal costs');
M_.endo_names = char(M_.endo_names, 'M_real');
M_.endo_names_tex = char(M_.endo_names_tex, '{M/P}');
M_.endo_names_long = char(M_.endo_names_long, 'real money stock');
M_.endo_names = char(M_.endo_names, 'i_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{i^{ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized nominal interest rate');
M_.endo_names = char(M_.endo_names, 'pi_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi^{ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized inflation rate');
M_.endo_names = char(M_.endo_names, 'r_real_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^{r,ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized real interest rate');
M_.endo_names = char(M_.endo_names, 'P');
M_.endo_names_tex = char(M_.endo_names_tex, '{P}');
M_.endo_names_long = char(M_.endo_names_long, 'price level');
M_.endo_names = char(M_.endo_names, 'log_m_nominal');
M_.endo_names_tex = char(M_.endo_names_tex, '{log(M)}');
M_.endo_names_long = char(M_.endo_names_long, 'log nominal money stock');
M_.endo_names = char(M_.endo_names, 'log_y');
M_.endo_names_tex = char(M_.endo_names_tex, '{log(Y)}');
M_.endo_names_long = char(M_.endo_names_long, 'log output');
M_.endo_names = char(M_.endo_names, 'log_W_real');
M_.endo_names_tex = char(M_.endo_names_tex, '{log(W/P)}');
M_.endo_names_long = char(M_.endo_names_long, 'log real wage');
M_.endo_names = char(M_.endo_names, 'log_N');
M_.endo_names_tex = char(M_.endo_names_tex, '{log(N)}');
M_.endo_names_long = char(M_.endo_names_long, 'log hours');
M_.endo_names = char(M_.endo_names, 'log_P');
M_.endo_names_tex = char(M_.endo_names_tex, '{log(P)}');
M_.endo_names_long = char(M_.endo_names_long, 'log price level');
M_.endo_names = char(M_.endo_names, 'log_A');
M_.endo_names_tex = char(M_.endo_names_tex, '{log(A)}');
M_.endo_names_long = char(M_.endo_names_long, 'log technology level');
M_.endo_names = char(M_.endo_names, 'log_Z');
M_.endo_names_tex = char(M_.endo_names_tex, '{log(Z)}');
M_.endo_names_long = char(M_.endo_names_long, 'log preference shock');
M_.endo_names = char(M_.endo_names, 'money_growth');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta m_q}');
M_.endo_names_long = char(M_.endo_names_long, 'money growth');
M_.endo_names = char(M_.endo_names, 'money_growth_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta m^{ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'money growth annualized');
M_.endo_partitions = struct();
M_.param_names = 'alppha';
M_.param_names_tex = '{\alpha}';
M_.param_names_long = 'capital share';
M_.param_names = char(M_.param_names, 'betta');
M_.param_names_tex = char(M_.param_names_tex, '{\beta}');
M_.param_names_long = char(M_.param_names_long, 'discount factor');
M_.param_names = char(M_.param_names, 'rho_a');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_a}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation technology shock');
M_.param_names = char(M_.param_names, 'rho_m');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\zeta}}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation monetary demand shock');
M_.param_names = char(M_.param_names, 'rho_z');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{z}}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation monetary demand shock');
M_.param_names = char(M_.param_names, 'siggma');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma}');
M_.param_names_long = char(M_.param_names_long, 'inverse EIS');
M_.param_names = char(M_.param_names, 'varphi');
M_.param_names_tex = char(M_.param_names_tex, '{\varphi}');
M_.param_names_long = char(M_.param_names_long, 'inverse Frisch elasticity');
M_.param_names = char(M_.param_names, 'phi_pi');
M_.param_names_tex = char(M_.param_names_tex, '{\phi_{\pi}}');
M_.param_names_long = char(M_.param_names_long, 'inflation feedback Taylor Rule');
M_.param_names = char(M_.param_names, 'phi_y');
M_.param_names_tex = char(M_.param_names_tex, '{\phi_{y}}');
M_.param_names_long = char(M_.param_names_long, 'output feedback Taylor Rule');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, '{\eta}');
M_.param_names_long = char(M_.param_names_long, 'semi-elasticity of money demand');
M_.param_names = char(M_.param_names, 'epsilon');
M_.param_names_tex = char(M_.param_names_tex, '{\epsilon}');
M_.param_names_long = char(M_.param_names_long, 'demand elasticity');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, '{\theta}');
M_.param_names_long = char(M_.param_names_long, 'Calvo parameter');
M_.param_names = char(M_.param_names, 'tau');
M_.param_names_tex = char(M_.param_names_tex, '{\tau}');
M_.param_names_long = char(M_.param_names_long, 'labor subsidy');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 29;
M_.param_nbr = 13;
M_.orig_endo_nbr = 29;
M_.aux_vars = [];
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('Gali_2015_chapter_3_nonlinear_static');
erase_compiled_function('Gali_2015_chapter_3_nonlinear_dynamic');
M_.orig_eq_nbr = 29;
M_.eq_nbr = 29;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 7 36;
 0 8 0;
 0 9 37;
 1 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 2 16 38;
 3 17 0;
 0 18 0;
 0 19 39;
 0 20 40;
 0 21 0;
 4 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 5 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 0 30 0;
 0 31 0;
 0 32 0;
 0 33 0;
 6 34 0;
 0 35 0;]';
M_.nstatic = 19;
M_.nfwrd   = 4;
M_.npred   = 5;
M_.nboth   = 1;
M_.nsfwrd   = 5;
M_.nspred   = 6;
M_.ndynamic   = 10;
M_.equations_tags = {
  1 , 'name' , 'FOC Wages, eq. (2)' ;
  2 , 'name' , 'Euler equation eq. (3)' ;
  3 , 'name' , 'Definition nominal interest rate), p. 22 top' ;
  4 , 'name' , 'Aggregate output, above eq. (14)' ;
  5 , 'name' , 'Definition Real interest rate' ;
  6 , 'name' , 'Market Clearing, eq. (15)' ;
  7 , 'name' , 'Technology Shock, eq. (6)' ;
  8 , 'name' , 'Preference Shock, p.54' ;
  9 , 'name' , 'definition nominal money growth' ;
  10 , 'name' , 'exogenous process for money supply growth rate, eq. (35)' ;
  11 , 'name' , 'definition annualized nominal money growth' ;
  12 , 'name' , 'Definition marginal cost' ;
  13 , 'name' , 'LOM prices, eq. (7)' ;
  14 , 'name' , 'LOM price dispersion' ;
  15 , 'name' , 'FOC price setting' ;
  16 , 'name' , 'Auxiliary price setting recursion 1' ;
  17 , 'name' , 'Auxiliary price setting recursion 2' ;
  18 , 'name' , 'Definition log output' ;
  19 , 'name' , 'Definition log real wage' ;
  20 , 'name' , 'Definition log hours' ;
  21 , 'name' , 'Annualized inflation' ;
  22 , 'name' , 'Annualized nominal interest rate' ;
  23 , 'name' , 'Annualized real interest rate' ;
  24 , 'name' , 'Real money demand, eq. (4)' ;
  25 , 'name' , 'definition nominal money stock' ;
  26 , 'name' , 'Definition price level' ;
  27 , 'name' , 'Definition log price level' ;
  28 , 'name' , 'Definition log TFP' ;
  29 , 'name' , 'Definition log preference' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(29, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(13, 1);
M_.NNZDerivatives = [89; -1; -1];
M_.params( 6 ) = 1;
siggma = M_.params( 6 );
M_.params( 7 ) = 5;
varphi = M_.params( 7 );
M_.params( 8 ) = 1.5;
phi_pi = M_.params( 8 );
M_.params( 9 ) = 0.125;
phi_y = M_.params( 9 );
M_.params( 12 ) = 0.75;
theta = M_.params( 12 );
M_.params( 4 ) = 0.5;
rho_m = M_.params( 4 );
M_.params( 5 ) = 0.5;
rho_z = M_.params( 5 );
M_.params( 3 ) = 0.9;
rho_a = M_.params( 3 );
M_.params( 2 ) = 0.99;
betta = M_.params( 2 );
M_.params( 10 ) = 3.77;
eta = M_.params( 10 );
M_.params( 1 ) = 0.25;
alppha = M_.params( 1 );
M_.params( 11 ) = 9;
epsilon = M_.params( 11 );
M_.params( 13 ) = 0;
tau = M_.params( 13 );
resid(1);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(3, 3) = 6.25e-06;
resid(1);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 15;
options_.order = 1;
var_list_ = char('pi_ann','log_y','log_N','log_W_real','log_P','i_ann','r_real_ann','log_m_nominal','money_growth_ann');
info = stoch_simul(var_list_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(2, 2) = 2.5e-05;
M_.Sigma_e(3, 3) = 0;
options_.impulse_responses.plot_threshold = 0;
options_.irf = 15;
options_.order = 1;
var_list_ = char('pi_ann','log_y','log_N','log_W_real','log_P','i_ann','r_real_ann','log_m_nominal','log_Z');
info = stoch_simul(var_list_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.0001;
M_.Sigma_e(2, 2) = 0;
options_.impulse_responses.plot_threshold = 0;
options_.irf = 15;
options_.order = 1;
var_list_ = char('pi_ann','log_y','log_N','log_W_real','log_P','i_ann','r_real_ann','log_m_nominal','log_A');
info = stoch_simul(var_list_);
save('Gali_2015_chapter_3_nonlinear_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Gali_2015_chapter_3_nonlinear_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Gali_2015_chapter_3_nonlinear_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Gali_2015_chapter_3_nonlinear_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Gali_2015_chapter_3_nonlinear_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Gali_2015_chapter_3_nonlinear_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Gali_2015_chapter_3_nonlinear_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
