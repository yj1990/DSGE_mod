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
M_.fname = 'Basu_Bundick_2017';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Basu_Bundick_2017.log');
M_.exo_names = 'eps_a';
M_.exo_names_tex = '{\varepsilon^a}';
M_.exo_names_long = 'preference shock';
M_.exo_names = char(M_.exo_names, 'eps_sigma_a');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon^{\sigma^a}}');
M_.exo_names_long = char(M_.exo_names_long, 'preference shock volatility');
M_.exo_names = char(M_.exo_names, 'eps_z');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon^z}');
M_.exo_names_long = char(M_.exo_names_long, 'technology shock');
M_.exo_names = char(M_.exo_names, 'eps_m');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon^m}');
M_.exo_names_long = char(M_.exo_names_long, 'monetary policy shock');
M_.endo_names = 'C';
M_.endo_names_tex = '{C}';
M_.endo_names_long = 'consumption';
M_.endo_names = char(M_.endo_names, 'N');
M_.endo_names_tex = char(M_.endo_names_tex, '{N}');
M_.endo_names_long = char(M_.endo_names_long, 'labor');
M_.endo_names = char(M_.endo_names, 'P_E');
M_.endo_names_tex = char(M_.endo_names_tex, '{\left({\frac{P^E}{P}}\right)}');
M_.endo_names_long = char(M_.endo_names_long, 'Real price of shares');
M_.endo_names = char(M_.endo_names, 'D_E');
M_.endo_names_tex = char(M_.endo_names_tex, '{\left({\frac{D^E}{P}}\right)}');
M_.endo_names_long = char(M_.endo_names_long, 'Real Dividends of shares');
M_.endo_names = char(M_.endo_names, 'R_R');
M_.endo_names_tex = char(M_.endo_names_tex, '{R^R}');
M_.endo_names_long = char(M_.endo_names_long, 'risk-free rate');
M_.endo_names = char(M_.endo_names, 'W');
M_.endo_names_tex = char(M_.endo_names_tex, '{\left({\frac{W}{P}}\right)}');
M_.endo_names_long = char(M_.endo_names_long, 'real wage');
M_.endo_names = char(M_.endo_names, 'V');
M_.endo_names_tex = char(M_.endo_names_tex, '{V}');
M_.endo_names_long = char(M_.endo_names_long, 'Value function');
M_.endo_names = char(M_.endo_names, 'E_t_V_tp1_1_minus_sigma');
M_.endo_names_tex = char(M_.endo_names_tex, '{\left({E_t V_{t+1}^{1-\sigma}}\right)}');
M_.endo_names_long = char(M_.endo_names_long, 'Auxiliary Variable for EZ');
M_.endo_names = char(M_.endo_names, 'Y');
M_.endo_names_tex = char(M_.endo_names_tex, 'Y');
M_.endo_names_long = char(M_.endo_names_long, 'Output');
M_.endo_names = char(M_.endo_names, 'K');
M_.endo_names_tex = char(M_.endo_names_tex, 'K');
M_.endo_names_long = char(M_.endo_names_long, 'capital');
M_.endo_names = char(M_.endo_names, 'I');
M_.endo_names_tex = char(M_.endo_names_tex, 'I');
M_.endo_names_long = char(M_.endo_names_long, 'Investment');
M_.endo_names = char(M_.endo_names, 'D');
M_.endo_names_tex = char(M_.endo_names_tex, '{\frac{D}{P}}');
M_.endo_names_long = char(M_.endo_names_long, 'Cash flows');
M_.endo_names = char(M_.endo_names, 'Pi');
M_.endo_names_tex = char(M_.endo_names_tex, '\Pi');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'R_K');
M_.endo_names_tex = char(M_.endo_names_tex, '{R^k}');
M_.endo_names_long = char(M_.endo_names_long, 'marginal revenue product of capital');
M_.endo_names = char(M_.endo_names, 'q');
M_.endo_names_tex = char(M_.endo_names_tex, 'q');
M_.endo_names_long = char(M_.endo_names_long, 'Tobins q');
M_.endo_names = char(M_.endo_names, 'mu');
M_.endo_names_tex = char(M_.endo_names_tex, '\mu');
M_.endo_names_long = char(M_.endo_names_long, 'markup');
M_.endo_names = char(M_.endo_names, 'sigma_a');
M_.endo_names_tex = char(M_.endo_names_tex, '{\sigma_a}');
M_.endo_names_long = char(M_.endo_names_long, 'preference shock volatility');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'preference shock level');
M_.endo_names = char(M_.endo_names, 'Z');
M_.endo_names_tex = char(M_.endo_names_tex, 'Z');
M_.endo_names_long = char(M_.endo_names_long, 'technology shock level');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names_long = char(M_.endo_names_long, 'policy rate');
M_.endo_names = char(M_.endo_names, 'Xi');
M_.endo_names_tex = char(M_.endo_names_tex, '\Xi');
M_.endo_names_long = char(M_.endo_names_long, 'marginal costs');
M_.endo_names = char(M_.endo_names, 'u');
M_.endo_names_tex = char(M_.endo_names_tex, 'u');
M_.endo_names_long = char(M_.endo_names_long, 'capacity utilization');
M_.endo_names = char(M_.endo_names, 'PHI');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Phi}');
M_.endo_names_long = char(M_.endo_names_long, 'Rotemberg price adjustment costs');
M_.endo_names = char(M_.endo_names, 'R_E');
M_.endo_names_tex = char(M_.endo_names_tex, '{R^E}');
M_.endo_names_long = char(M_.endo_names_long, 'return to equity');
M_.endo_names = char(M_.endo_names, 'E_R_E');
M_.endo_names_tex = char(M_.endo_names_tex, '{E_t(R^E_{t+1})}');
M_.endo_names_long = char(M_.endo_names_long, 'expected return to equity');
M_.endo_names = char(M_.endo_names, 'E_R_E_squared');
M_.endo_names_tex = char(M_.endo_names_tex, '{(E_t(R^E_{t+1})^2)}');
M_.endo_names_long = char(M_.endo_names_long, 'expected squared return to equity');
M_.endo_names = char(M_.endo_names, 'cond_var_R_E');
M_.endo_names_tex = char(M_.endo_names_tex, '{VAR_t(R^E_{t+1})}');
M_.endo_names_long = char(M_.endo_names_long, 'conditional variance of return to equity');
M_.endo_names = char(M_.endo_names, 'E_M_tp1');
M_.endo_names_tex = char(M_.endo_names_tex, '{(E_t(M_{t+1}))}');
M_.endo_names_long = char(M_.endo_names_long, 'expected SDF');
M_.endo_names = char(M_.endo_names, 'E_R_E_risk_neutral');
M_.endo_names_tex = char(M_.endo_names_tex, '{(E_t(R^E_{t+1})^2)}');
M_.endo_names_long = char(M_.endo_names_long, 'expected SDF squared');
M_.endo_names = char(M_.endo_names, 'E_M_tp1_R_E');
M_.endo_names_tex = char(M_.endo_names_tex, '{E_t(M_{t+1} R^E_{t+1})}');
M_.endo_names_long = char(M_.endo_names_long, 'expecation of SDF times equity return');
M_.endo_names = char(M_.endo_names, 'E_M_tp1_R_E_squared');
M_.endo_names_tex = char(M_.endo_names_tex, '{E_t(M_{t+1} (R^E_{t+1})^2)}');
M_.endo_names_long = char(M_.endo_names_long, 'expecation of SDF times squared equity return');
M_.endo_names = char(M_.endo_names, 'cond_var_R_E_risk_neutral');
M_.endo_names_tex = char(M_.endo_names_tex, '{VAR_t(R^E_{t+1})}');
M_.endo_names_long = char(M_.endo_names_long, 'conditional variance of risk-neutral return to equity');
M_.endo_names = char(M_.endo_names, 'log_Y');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat Y}');
M_.endo_names_long = char(M_.endo_names_long, 'log output');
M_.endo_names = char(M_.endo_names, 'log_C');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat C}');
M_.endo_names_long = char(M_.endo_names_long, 'log consumption');
M_.endo_names = char(M_.endo_names, 'log_I');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat I}');
M_.endo_names_long = char(M_.endo_names_long, 'log investment');
M_.endo_names = char(M_.endo_names, 'log_mu');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat \mu}');
M_.endo_names_long = char(M_.endo_names_long, 'log markup');
M_.endo_names = char(M_.endo_names, 'log_N');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat N}');
M_.endo_names_long = char(M_.endo_names_long, 'log hours');
M_.endo_names = char(M_.endo_names, 'log_sigma_a');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat {\sigma_a}}');
M_.endo_names_long = char(M_.endo_names_long, 'log preference shock volatility');
M_.endo_names = char(M_.endo_names, 'log_W');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat W}');
M_.endo_names_long = char(M_.endo_names_long, 'log wage');
M_.endo_names = char(M_.endo_names, 'pi_annualized');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Pi^{ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized inflation');
M_.endo_names = char(M_.endo_names, 'R_annualized');
M_.endo_names_tex = char(M_.endo_names_tex, '{\R^{ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized interest rate');
M_.endo_names = char(M_.endo_names, 'R_K_annualized');
M_.endo_names_tex = char(M_.endo_names_tex, '{\R^{K,ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized capital return');
M_.endo_names = char(M_.endo_names, 'R_R_annualized');
M_.endo_names_tex = char(M_.endo_names_tex, '{\R^{R,ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized risk-free rate');
M_.endo_names = char(M_.endo_names, 'log_pi_annualized');
M_.endo_names_tex = char(M_.endo_names_tex, '{\log(\Pi^{ann})}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized log inflation');
M_.endo_names = char(M_.endo_names, 'log_R_annualized');
M_.endo_names_tex = char(M_.endo_names_tex, '{\log(\R^{ann})}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized log interest rate');
M_.endo_names = char(M_.endo_names, 'log_R_K_annualized');
M_.endo_names_tex = char(M_.endo_names_tex, '{\log(\R^{K,ann})}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized log capital return');
M_.endo_names = char(M_.endo_names, 'log_R_R_annualized');
M_.endo_names_tex = char(M_.endo_names_tex, '{\log(\R^{R,ann})}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized log risk-free interest rate');
M_.endo_partitions = struct();
M_.param_names = 'siggma';
M_.param_names_tex = '{\sigma}';
M_.param_names_long = 'risk aversion';
M_.param_names = char(M_.param_names, 'theta_v');
M_.param_names_tex = char(M_.param_names_tex, '{\theta_v}');
M_.param_names_long = char(M_.param_names_long, 'uncertainty resolution preference');
M_.param_names = char(M_.param_names, 'psii');
M_.param_names_tex = char(M_.param_names_tex, '\psi');
M_.param_names_long = char(M_.param_names_long, 'intertemporal elasticity of substitution');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, '\eta');
M_.param_names_long = char(M_.param_names_long, 'share of consumption in Cobb-Douglas aggregator');
M_.param_names = char(M_.param_names, 'betta');
M_.param_names_tex = char(M_.param_names_tex, '\beta');
M_.param_names_long = char(M_.param_names_long, 'discount factor');
M_.param_names = char(M_.param_names, 'theta_mu');
M_.param_names_tex = char(M_.param_names_tex, '{\theta_\mu}');
M_.param_names_long = char(M_.param_names_long, 'demand elasticity');
M_.param_names = char(M_.param_names, 'alppha');
M_.param_names_tex = char(M_.param_names_tex, '\alpha');
M_.param_names_long = char(M_.param_names_long, 'labor share');
M_.param_names = char(M_.param_names, 'Psi');
M_.param_names_tex = char(M_.param_names_tex, '\Psi');
M_.param_names_long = char(M_.param_names_long, 'fixed costs');
M_.param_names = char(M_.param_names, 'delta_0');
M_.param_names_tex = char(M_.param_names_tex, '\delta_0');
M_.param_names_long = char(M_.param_names_long, 'ss depreciation');
M_.param_names = char(M_.param_names, 'delta_1');
M_.param_names_tex = char(M_.param_names_tex, '\delta_1');
M_.param_names_long = char(M_.param_names_long, 'variable cu');
M_.param_names = char(M_.param_names, 'delta_2');
M_.param_names_tex = char(M_.param_names_tex, '\delta_2');
M_.param_names_long = char(M_.param_names_long, 'variable cu');
M_.param_names = char(M_.param_names, 'phi_k');
M_.param_names_tex = char(M_.param_names_tex, '\phi_k');
M_.param_names_long = char(M_.param_names_long, 'capital adjustment costs');
M_.param_names = char(M_.param_names, 'phi_p');
M_.param_names_tex = char(M_.param_names_tex, '\phi_P');
M_.param_names_long = char(M_.param_names_long, 'price adjustment costs');
M_.param_names = char(M_.param_names, 'Pi_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar \Pi}');
M_.param_names_long = char(M_.param_names_long, 'steady state inflation');
M_.param_names = char(M_.param_names, 'nu');
M_.param_names_tex = char(M_.param_names_tex, '\nu');
M_.param_names_long = char(M_.param_names_long, 'share of bonds in capital');
M_.param_names = char(M_.param_names, 'rho_r');
M_.param_names_tex = char(M_.param_names_tex, '\rho_r');
M_.param_names_long = char(M_.param_names_long, 'interest smoothing');
M_.param_names = char(M_.param_names, 'rho_pi');
M_.param_names_tex = char(M_.param_names_tex, '\rho_\pi');
M_.param_names_long = char(M_.param_names_long, 'inflation feedback');
M_.param_names = char(M_.param_names, 'rho_y');
M_.param_names_tex = char(M_.param_names_tex, '\rho_y');
M_.param_names_long = char(M_.param_names_long, 'output growth feedback');
M_.param_names = char(M_.param_names, 'log_R_bar');
M_.param_names_tex = char(M_.param_names_tex, '\bar r');
M_.param_names_long = char(M_.param_names_long, 'SS net interest rate');
M_.param_names = char(M_.param_names, 'sigma_a_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma^a}');
M_.param_names_long = char(M_.param_names_long, 'SS volatility preference shock');
M_.param_names = char(M_.param_names, 'sigma_sigma_a');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma^{\sigma^a}}');
M_.param_names_long = char(M_.param_names_long, 'SS volatility of uncertainty shock');
M_.param_names = char(M_.param_names, 'rho_a');
M_.param_names_tex = char(M_.param_names_tex, '\rho_a');
M_.param_names_long = char(M_.param_names_long, 'persistence preference shock');
M_.param_names = char(M_.param_names, 'rho_sigma_a');
M_.param_names_tex = char(M_.param_names_tex, '\rho_{\sigma^a}');
M_.param_names_long = char(M_.param_names_long, 'pseristence volatility shock');
M_.param_names = char(M_.param_names, 'a_bar');
M_.param_names_tex = char(M_.param_names_tex, 'a');
M_.param_names_long = char(M_.param_names_long, 'SS preference shock');
M_.param_names = char(M_.param_names, 'sigma_z_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma^z}');
M_.param_names_long = char(M_.param_names_long, 'SS volatility technology shock');
M_.param_names = char(M_.param_names, 'rho_z');
M_.param_names_tex = char(M_.param_names_tex, '\rho_z');
M_.param_names_long = char(M_.param_names_long, 'persistence technology shock');
M_.param_names = char(M_.param_names, 'PF_normalization');
M_.param_names_tex = char(M_.param_names_tex, 'A');
M_.param_names_long = char(M_.param_names_long, 'Normalization production function');
M_.param_names = char(M_.param_names, 'V_normalization');
M_.param_names_tex = char(M_.param_names_tex, '{V^{norm}}');
M_.param_names_long = char(M_.param_names_long, 'Normalization value function');
M_.param_names = char(M_.param_names, 'Frisch_target');
M_.param_names_tex = char(M_.param_names_tex, '{Frisch elast.}');
M_.param_names_long = char(M_.param_names_long, 'Target Frisch elasticity');
M_.param_names = char(M_.param_names, 'sigma_eps_m');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_m}');
M_.param_names_long = char(M_.param_names_long, 'monetary policy shock volatility');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 47;
M_.param_nbr = 30;
M_.orig_endo_nbr = 47;
M_.aux_vars = [];
M_.predetermined_variables = [ 10 ];
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 0;
erase_compiled_function('Basu_Bundick_2017_static');
erase_compiled_function('Basu_Bundick_2017_dynamic');
M_.orig_eq_nbr = 47;
M_.eq_nbr = 47;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 8 55;
 0 9 56;
 1 10 57;
 0 11 58;
 0 12 0;
 0 13 0;
 0 14 59;
 0 15 0;
 2 16 60;
 3 17 0;
 0 18 61;
 0 19 0;
 0 20 62;
 0 21 63;
 0 22 64;
 0 23 0;
 4 24 0;
 5 25 65;
 6 26 0;
 7 27 0;
 0 28 0;
 0 29 66;
 0 30 0;
 0 31 67;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 0;
 0 42 0;
 0 43 0;
 0 44 0;
 0 45 0;
 0 46 0;
 0 47 0;
 0 48 0;
 0 49 0;
 0 50 0;
 0 51 0;
 0 52 0;
 0 53 0;
 0 54 0;]';
M_.nstatic = 30;
M_.nfwrd   = 10;
M_.npred   = 4;
M_.nboth   = 3;
M_.nsfwrd   = 13;
M_.nspred   = 7;
M_.ndynamic   = 17;
M_.equations_tags = {
  1 , 'name' , 'Definition value function' ;
  2 , 'name' , 'Auxiliary variable needed for Epstein-Zin preferences' ;
  3 , 'name' , 'Budget constraint' ;
  4 , 'name' , '(10) labor FOC' ;
  5 , 'name' , '(11) Stock FOC' ;
  6 , 'name' , '(12) Firm Bond FOC' ;
  7 , 'name' , 'Production function' ;
  8 , 'name' , 'LOM Capital' ;
  9 , 'name' , 'Cash flows' ;
  10 , 'name' , 'Labor FOC' ;
  11 , 'name' , 'Capital FOC' ;
  12 , 'name' , 'Utilization FOC' ;
  13 , 'name' , 'Pricing FOC' ;
  14 , 'name' , 'FOC capital' ;
  15 , 'name' , 'FOC investment' ;
  16 , 'name' , 'Dividends' ;
  17 , 'name' , 'Taylor Rule' ;
  18 , 'name' , 'Bond FOC' ;
  19 , 'name' , 'Markup definition' ;
  20 , 'name' , 'Rotemberg cost definition' ;
  21 , 'name' , 'Definition equity return' ;
  22 , 'name' , 'Definition expected equity return' ;
  23 , 'name' , 'Definition expected squared equity return' ;
  24 , 'name' , 'Definition conditional variance equity return' ;
  30 , 'name' , 'Preference shock process level equation' ;
  31 , 'name' , 'Preference shock volatility process' ;
  32 , 'name' , 'TFP shock process' ;
  33 , 'name' , 'Definition log output' ;
  34 , 'name' , 'Definition log consumption' ;
  35 , 'name' , 'Definition log investment' ;
  36 , 'name' , 'Definition log markup' ;
  37 , 'name' , 'Definition log hours' ;
  38 , 'name' , 'Definition log volatility' ;
  39 , 'name' , 'Definition log wage' ;
  40 , 'name' , 'Definition annualized inflation' ;
  41 , 'name' , 'Definition annualized interest rate' ;
  42 , 'name' , 'Definition annualized return to capital' ;
  43 , 'name' , 'Definition annualized risk-free rate' ;
  44 , 'name' , 'Definition annualized log inflation' ;
  45 , 'name' , 'Definition annualized log interest rate' ;
  46 , 'name' , 'Definition annualized log return to capital' ;
  47 , 'name' , 'Definition annualized log risk-free rate' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(47, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(30, 1);
M_.NNZDerivatives = [213; 950; 7951];
M_.params( 7 ) = 0.333;
alppha = M_.params( 7 );
M_.params( 5 ) = 0.994;
betta = M_.params( 5 );
M_.params( 9 ) = 0.025;
delta_0 = M_.params( 9 );
M_.params( 10 ) = 0;
delta_1 = M_.params( 10 );
M_.params( 11 ) = 0.00031;
delta_2 = M_.params( 11 );
M_.params( 13 ) = 100;
phi_p = M_.params( 13 );
M_.params( 14 ) = 1.005;
Pi_bar = M_.params( 14 );
M_.params( 19 ) = log(M_.params(14)/M_.params(5));
log_R_bar = M_.params( 19 );
M_.params( 16 ) = 0;
rho_r = M_.params( 16 );
M_.params( 17 ) = 1.5;
rho_pi = M_.params( 17 );
M_.params( 18 ) = 0.2;
rho_y = M_.params( 18 );
M_.params( 1 ) = 80;
siggma = M_.params( 1 );
M_.params( 3 ) = 0.95;
psii = M_.params( 3 );
M_.params( 6 ) = 6;
theta_mu = M_.params( 6 );
M_.params( 24 ) = 1;
a_bar = M_.params( 24 );
M_.params( 29 ) = 2;
Frisch_target = M_.params( 29 );
M_.params( 12 ) = 2.0901;
phi_k = M_.params( 12 );
M_.params( 22 ) = 0.93564;
rho_a = M_.params( 22 );
M_.params( 20 ) = 0.0026251;
sigma_a_bar = M_.params( 20 );
M_.params( 23 ) = 0.74227;
rho_sigma_a = M_.params( 23 );
M_.params( 21 ) = 0.0025022;
sigma_sigma_a = M_.params( 21 );
M_.params( 26 ) = 0.98793;
rho_z = M_.params( 26 );
M_.params( 25 ) = 0.0012857;
sigma_z_bar = M_.params( 25 );
M_.params( 15 ) = 0.9;
nu = M_.params( 15 );
M_.params( 30 ) = 0;
sigma_eps_m = M_.params( 30 );
M_.params( 4 ) = 0;
eta = M_.params( 4 );
M_.params( 8 ) = 0;
Psi = M_.params( 8 );
write_latex_definitions;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (1)^2;
M_.Sigma_e(3, 3) = (1)^2;
M_.Sigma_e(4, 4) = (0)^2;
steady;
options_.TeX=1;
write_latex_parameter_table;
options_.k_order_solver = 1;
options_.irf = 0;
options_.k_order_solver = 1;
options_.noprint = 1;
options_.order = 3;
options_.pruning = 1;
var_list_ = char('Y','log_Y','log_C','log_I','log_mu','log_N','log_sigma_a','log_pi_annualized','log_R_annualized','log_R_R_annualized','log_W','log_R_K_annualized','cond_var_R_E','Z','a','sigma_a');
info = stoch_simul(var_list_);
y_pos 	= strmatch('Y',M_.endo_names,'exact');
c_pos 	= strmatch('C',M_.endo_names,'exact');
inv_pos = strmatch('I',M_.endo_names,'exact');
mu_pos 	= strmatch('mu',M_.endo_names,'exact');
n_pos 	= strmatch('N',M_.endo_names,'exact');
w_pos 	= strmatch('W',M_.endo_names,'exact');
pi_pos 	= strmatch('Pi',M_.endo_names,'exact');
r_pos 	= strmatch('R',M_.endo_names,'exact');
R_R_pos = strmatch('R_R',M_.endo_names,'exact');
sigma_a_pos = strmatch('sigma_a',M_.endo_names,'exact');
Z_pos    = strmatch('Z',M_.endo_names,'exact');
conditional_variance_R_E_pos = strmatch('cond_var_R_E',M_.endo_names,'exact');
IRF_periods=20;
burnin=5000; 
shock_mat_with_zeros=zeros(burnin+IRF_periods,M_.exo_nbr); 
IRF_no_shock_mat = simult_(oo_.dr.ys,oo_.dr,shock_mat_with_zeros,options_.order)'; 
stochastic_steady_state=IRF_no_shock_mat(1+burnin,:); 
shock_mat = zeros(burnin+IRF_periods,M_.exo_nbr);
shock_mat(1+burnin,strmatch('eps_sigma_a',M_.exo_names,'exact'))= 1;
IRF_mat = simult_(oo_.dr.ys,oo_.dr,shock_mat,options_.order)';
IRF_mat_percent_from_SSS = (IRF_mat(1+burnin+1:1+burnin+IRF_periods,:)-IRF_no_shock_mat(1+burnin+1:1+burnin+IRF_periods,:))./repmat(stochastic_steady_state,IRF_periods,1); 
y_vola_IRF 		= 100*IRF_mat_percent_from_SSS(:,y_pos);
c_vola_IRF 		= 100*IRF_mat_percent_from_SSS(:,c_pos);
inv_vola_IRF 	= 100*IRF_mat_percent_from_SSS(:,inv_pos);
mu_vola_IRF 	= 100*IRF_mat_percent_from_SSS(:,mu_pos);
n_vola_IRF 		= 100*IRF_mat_percent_from_SSS(:,n_pos);
w_vola_IRF 		= 100*IRF_mat_percent_from_SSS(:,w_pos);
pi_vola_IRF 	= 400*IRF_mat_percent_from_SSS(:,pi_pos);
r_vola_IRF 		= 400*IRF_mat_percent_from_SSS(:,r_pos);
R_R_vola_IRF 	= 400*IRF_mat_percent_from_SSS(:,R_R_pos);
sigma_a_vola_IRF= 100*IRF_mat_percent_from_SSS(:,sigma_a_pos);
Z_vola_IRF      = 100*IRF_mat_percent_from_SSS(:,Z_pos);
vxo_shock 		= 100*sqrt(4*(IRF_mat(burnin+1:burnin+IRF_periods,conditional_variance_R_E_pos)));
vxo_mean=100*sqrt(4*(stochastic_steady_state(conditional_variance_R_E_pos)));
vxo_vola_IRF 	= 100*(vxo_shock/vxo_mean-1);
hh=figure;
figure(hh)   
subplot(3,3,1)
hold on
plot(y_vola_IRF,'b-','LineWidth',3)
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('Output','FontSize',14)
ylabel('Percent','FontSize',12)
figure(hh)   
subplot(3,3,2)
hold on
plot(c_vola_IRF,'b-','LineWidth',3)
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('Consumption','FontSize',14)
ylabel('Percent','FontSize',12)
figure(hh)   
subplot(3,3,3)
hold on
plot(inv_vola_IRF,'b-','LineWidth',3)
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('Investment','FontSize',14)
ylabel('Percent','FontSize',12)
figure(hh)   
subplot(3,3,4)
hold on
plot(mu_vola_IRF,'b-','LineWidth',3)
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('Markup','FontSize',14)
ylabel('Percent','FontSize',12)
figure(hh)   
subplot(3,3,5)
hold on
plot(n_vola_IRF,'b-','LineWidth',3)
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('Hours Worked','FontSize',14)
ylabel('Percent','FontSize',12)
figure(hh)   
subplot(3,3,6)
hold on
plot(w_vola_IRF,'b-','LineWidth',3)
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('Real Wage','FontSize',14)
ylabel('Percent','FontSize',12)
figure(hh)   
subplot(3,3,7)
hold on
plot(R_R_vola_IRF,'b-','LineWidth',3)
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('Real Interest Rate','FontSize',14)
ylabel('Percent','FontSize',12)
figure(hh)   
subplot(3,3,8)
hold on
plot(pi_vola_IRF,'b-','LineWidth',3)
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('Inflation','FontSize',14)
ylabel('Percent','FontSize',12)
figure(hh)   
subplot(3,3,9)
hold on
plot(sigma_a_vola_IRF,'b-','LineWidth',3)
plot(sigma_a_vola_IRF,'r--','LineWidth',3,'HandleVisibility','off')
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('Preference Shock Volatility','FontSize',14)
ylabel('Percent','FontSize',12)
figure
hold on
plot(vxo_shock,'b-','LineWidth',3)
plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);
title('VXO','FontSize',14)
ylabel('Percent','FontSize',12)
save('Basu_Bundick_2017_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Basu_Bundick_2017_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Basu_Bundick_2017_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Basu_Bundick_2017_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Basu_Bundick_2017_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Basu_Bundick_2017_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Basu_Bundick_2017_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
