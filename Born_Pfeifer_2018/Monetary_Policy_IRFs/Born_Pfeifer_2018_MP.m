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
M_.fname = 'Born_Pfeifer_2018_MP';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Born_Pfeifer_2018_MP.log');
M_.exo_names = 'eps_a';
M_.exo_names_tex = '{\varepsilon_a}';
M_.exo_names_long = 'technology shock';
M_.exo_names = char(M_.exo_names, 'eps_nu');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_\nu}');
M_.exo_names_long = char(M_.exo_names_long, 'monetary policy shock');
M_.exo_names = char(M_.exo_names, 'eps_z');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_z}');
M_.exo_names_long = char(M_.exo_names_long, 'preference shock innovation');
M_.endo_names = 'pi_p';
M_.endo_names_tex = '{\pi^p}';
M_.endo_names_long = 'price inflation';
M_.endo_names = char(M_.endo_names, 'y_gap');
M_.endo_names_tex = char(M_.endo_names_tex, '{\tilde y}');
M_.endo_names_long = char(M_.endo_names_long, 'output gap');
M_.endo_names = char(M_.endo_names, 'y_nat');
M_.endo_names_tex = char(M_.endo_names_tex, '{y^{nat}}');
M_.endo_names_long = char(M_.endo_names_long, 'natural output');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, '{y}');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'yhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat y}');
M_.endo_names_long = char(M_.endo_names_long, 'output deviation from steady state');
M_.endo_names = char(M_.endo_names, 'r_nat');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^{nat}}');
M_.endo_names_long = char(M_.endo_names_long, 'natural interest rate');
M_.endo_names = char(M_.endo_names, 'r_real');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^r}');
M_.endo_names_long = char(M_.endo_names_long, 'real interest rate');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, '{i}');
M_.endo_names_long = char(M_.endo_names_long, 'nominal interrst rate');
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, '{n}');
M_.endo_names_long = char(M_.endo_names_long, 'hours worked');
M_.endo_names = char(M_.endo_names, 'm_real');
M_.endo_names_tex = char(M_.endo_names_tex, '{(m-p)}');
M_.endo_names_long = char(M_.endo_names_long, 'real money stock');
M_.endo_names = char(M_.endo_names, 'm_growth_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta m}');
M_.endo_names_long = char(M_.endo_names_long, 'money growth annualized');
M_.endo_names = char(M_.endo_names, 'm_nominal');
M_.endo_names_tex = char(M_.endo_names_tex, '{m}');
M_.endo_names_long = char(M_.endo_names_long, 'nominal money stock');
M_.endo_names = char(M_.endo_names, 'nu');
M_.endo_names_tex = char(M_.endo_names_tex, '{\nu}');
M_.endo_names_long = char(M_.endo_names_long, 'AR(1) monetary policy shock process');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, '{a}');
M_.endo_names_long = char(M_.endo_names_long, 'AR(1) technology shock process');
M_.endo_names = char(M_.endo_names, 'r_real_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^{r,ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized real interest rate');
M_.endo_names = char(M_.endo_names, 'i_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{i^{ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized nominal interest rate');
M_.endo_names = char(M_.endo_names, 'r_nat_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^{nat,ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized natural interest rate');
M_.endo_names = char(M_.endo_names, 'pi_p_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi^{p,ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized inflation rate');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, '{z}');
M_.endo_names_long = char(M_.endo_names_long, 'AR(1) preference shock process');
M_.endo_names = char(M_.endo_names, 'p');
M_.endo_names_tex = char(M_.endo_names_tex, '{p}');
M_.endo_names_long = char(M_.endo_names_long, 'price level');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, '{w}');
M_.endo_names_long = char(M_.endo_names_long, 'nominal wage');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, '{c}');
M_.endo_names_long = char(M_.endo_names_long, 'consumption');
M_.endo_names = char(M_.endo_names, 'w_real');
M_.endo_names_tex = char(M_.endo_names_tex, '\omega');
M_.endo_names_long = char(M_.endo_names_long, 'real wage');
M_.endo_names = char(M_.endo_names, 'w_gap');
M_.endo_names_tex = char(M_.endo_names_tex, '{\tilde \omega}');
M_.endo_names_long = char(M_.endo_names_long, 'real wage gap');
M_.endo_names = char(M_.endo_names, 'pi_w');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi^w}');
M_.endo_names_long = char(M_.endo_names_long, 'wage inflation');
M_.endo_names = char(M_.endo_names, 'w_nat');
M_.endo_names_tex = char(M_.endo_names_tex, '{w^{nat}}');
M_.endo_names_long = char(M_.endo_names_long, 'natural real wage');
M_.endo_names = char(M_.endo_names, 'mu_p');
M_.endo_names_tex = char(M_.endo_names_tex, '{\mu^p}');
M_.endo_names_long = char(M_.endo_names_long, 'markup');
M_.endo_names = char(M_.endo_names, 'pi_w_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi^{w,ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized wage inflation rate');
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
M_.param_names = char(M_.param_names, 'rho_nu');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\nu}}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation monetary policy shock');
M_.param_names = char(M_.param_names, 'rho_z');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{z}}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation demand shock');
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
M_.param_names = char(M_.param_names, 'epsilon_p');
M_.param_names_tex = char(M_.param_names_tex, '{\epsilon_p}');
M_.param_names_long = char(M_.param_names_long, 'demand elasticity goods');
M_.param_names = char(M_.param_names, 'theta_p');
M_.param_names_tex = char(M_.param_names_tex, '{\theta_p}');
M_.param_names_long = char(M_.param_names_long, 'Calvo parameter prices');
M_.param_names = char(M_.param_names, 'epsilon_w');
M_.param_names_tex = char(M_.param_names_tex, '{\epsilon_w}');
M_.param_names_long = char(M_.param_names_long, 'demand elasticity labor services');
M_.param_names = char(M_.param_names, 'theta_w');
M_.param_names_tex = char(M_.param_names_tex, '{\theta_w}');
M_.param_names_long = char(M_.param_names_long, 'Calvo parameter wages');
M_.param_names = char(M_.param_names, 'tau');
M_.param_names_tex = char(M_.param_names_tex, '{\tau}');
M_.param_names_long = char(M_.param_names_long, 'labor subsidy');
M_.param_names = char(M_.param_names, 'lambda_w');
M_.param_names_tex = char(M_.param_names_tex, '{\lambda_w}');
M_.param_names_long = char(M_.param_names_long, 'Slope of the wage PC');
M_.param_names = char(M_.param_names, 'tau_n_SS');
M_.param_names_tex = char(M_.param_names_tex, '{bar {\tau^n}}');
M_.param_names_long = char(M_.param_names_long, 'Steady state labor tax');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 28;
M_.param_nbr = 17;
M_.orig_endo_nbr = 28;
M_.aux_vars = [];
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('Born_Pfeifer_2018_MP_static');
erase_compiled_function('Born_Pfeifer_2018_MP_dynamic');
M_.orig_eq_nbr = 28;
M_.eq_nbr = 28;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 9 37;
 0 10 38;
 0 11 0;
 1 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 2 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 3 21 0;
 4 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 5 27 0;
 6 28 0;
 0 29 0;
 0 30 0;
 0 31 0;
 7 32 0;
 0 33 39;
 8 34 0;
 0 35 0;
 0 36 0;]';
M_.nstatic = 17;
M_.nfwrd   = 3;
M_.npred   = 8;
M_.nboth   = 0;
M_.nsfwrd   = 3;
M_.nspred   = 8;
M_.ndynamic   = 11;
M_.equations_tags = {
  1 , 'name' , 'New Keynesian Phillips Curve eq. (18)' ;
  2 , 'name' , 'New Keynesian Wage Phillips Curve eq. (22)' ;
  3 , 'name' , 'Dynamic IS Curve eq. (22)' ;
  4 , 'name' , 'Interest Rate Rule eq. (26)' ;
  5 , 'name' , 'Definition natural rate of interest eq. (24)' ;
  6 , 'name' , 'Definition wage gap, eq (21)' ;
  7 , 'name' , 'Definition natural wage, eq (16)' ;
  8 , 'name' , 'Definition markup' ;
  9 , 'name' , 'Definition real wage gap, p. 171' ;
  10 , 'name' , 'Definition real interest rate' ;
  11 , 'name' , 'Definition natural output, eq. (20)' ;
  12 , 'name' , 'Definition output gap' ;
  13 , 'name' , 'Monetary policy shock' ;
  14 , 'name' , 'TFP shock' ;
  15 , 'name' , 'Production function, p. 171' ;
  16 , 'name' , 'Preference shock, p. 54' ;
  17 , 'name' , 'Money growth (derived from eq. (4))' ;
  18 , 'name' , 'Real money demand (eq. 4)' ;
  19 , 'name' , 'Annualized nominal interest rate' ;
  20 , 'name' , 'Annualized real interest rate' ;
  21 , 'name' , 'Annualized natural interest rate' ;
  22 , 'name' , 'Annualized inflation' ;
  23 , 'name' , 'Annualized wage inflation' ;
  24 , 'name' , 'Output deviation from steady state' ;
  25 , 'name' , 'Definition price level' ;
  26 , 'name' , 'resource constraint, eq. (12)' ;
  27 , 'name' , 'definition real wage' ;
  28 , 'name' , 'definition real wage' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(28, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(17, 1);
M_.NNZDerivatives = [86; -1; -1];
M_.params( 6 ) = 1;
siggma = M_.params( 6 );
M_.params( 7 ) = 5;
varphi = M_.params( 7 );
M_.params( 8 ) = 1.5;
phi_pi = M_.params( 8 );
M_.params( 9 ) = 0.125;
phi_y = M_.params( 9 );
M_.params( 12 ) = 0.75;
theta_p = M_.params( 12 );
M_.params( 4 ) = 0.5;
rho_nu = M_.params( 4 );
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
epsilon_p = M_.params( 11 );
M_.params( 15 ) = 0;
tau = M_.params( 15 );
M_.params( 13 ) = 4.5;
epsilon_w = M_.params( 13 );
M_.params( 14 ) = 0.75;
theta_w = M_.params( 14 );
M_.params( 17 ) = 0;
tau_n_SS = M_.params( 17 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 0.0625;
M_.Sigma_e(3, 3) = 1;
options_.irf = 15;
options_.order = 1;
var_list_ = char('y_gap','pi_p_ann','pi_w_ann','w_real','y','n');
info = stoch_simul(var_list_);
save('Born_Pfeifer_2018_MP_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Born_Pfeifer_2018_MP_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Born_Pfeifer_2018_MP_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Born_Pfeifer_2018_MP_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Born_Pfeifer_2018_MP_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Born_Pfeifer_2018_MP_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Born_Pfeifer_2018_MP_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
disp('Note: 28 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
