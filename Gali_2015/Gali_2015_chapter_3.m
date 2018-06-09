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
M_.fname = 'Gali_2015_chapter_3';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Gali_2015_chapter_3.log');
M_.exo_names = 'eps_a';
M_.exo_names_tex = '{\varepsilon_a}';
M_.exo_names_long = 'technology shock';
M_.exo_names = char(M_.exo_names, 'eps_nu');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_\nu}');
M_.exo_names_long = char(M_.exo_names_long, 'monetary policy shock');
M_.exo_names = char(M_.exo_names, 'eps_z');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_z}');
M_.exo_names_long = char(M_.exo_names_long, 'preference shock innovation');
M_.endo_names = 'pi';
M_.endo_names_tex = '{\pi}';
M_.endo_names_long = 'inflation';
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
M_.endo_names_tex = char(M_.endo_names_tex, '{m-p}');
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
M_.endo_names = char(M_.endo_names, 'pi_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi^{ann}}');
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
M_.endo_names_tex = char(M_.endo_names_tex, '{\frac{w}{p}}');
M_.endo_names_long = char(M_.endo_names_long, 'real wage');
M_.endo_names = char(M_.endo_names, 'mu');
M_.endo_names_tex = char(M_.endo_names_tex, '{\mu}');
M_.endo_names_long = char(M_.endo_names_long, 'markup');
M_.endo_names = char(M_.endo_names, 'mu_hat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat \mu}');
M_.endo_names_long = char(M_.endo_names_long, 'markup gap');
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
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 25;
M_.param_nbr = 12;
M_.orig_endo_nbr = 25;
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
erase_compiled_function('Gali_2015_chapter_3_static');
erase_compiled_function('Gali_2015_chapter_3_dynamic');
M_.orig_eq_nbr = 25;
M_.eq_nbr = 25;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 7 32;
 0 8 33;
 0 9 0;
 1 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 2 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 3 19 0;
 4 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 5 25 0;
 6 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 0 30 0;
 0 31 0;]';
M_.nstatic = 17;
M_.nfwrd   = 2;
M_.npred   = 6;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 6;
M_.ndynamic   = 8;
M_.equations_tags = {
  1 , 'name' , 'New Keynesian Phillips Curve eq. (22)' ;
  2 , 'name' , 'Dynamic IS Curve eq. (23)' ;
  3 , 'name' , 'Interest Rate Rule eq. (26)' ;
  4 , 'name' , 'Definition natural rate of interest eq. (24)' ;
  5 , 'name' , 'Definition real interest rate' ;
  6 , 'name' , 'Definition natural output, eq. (20)' ;
  7 , 'name' , 'Definition output gap' ;
  8 , 'name' , 'Monetary policy shock' ;
  9 , 'name' , 'TFP shock' ;
  10 , 'name' , 'Production function (eq. 14)' ;
  11 , 'name' , 'Preference shock, p. 54' ;
  12 , 'name' , 'Money growth (derived from eq. (4))' ;
  13 , 'name' , 'Real money demand (eq. 4)' ;
  14 , 'name' , 'Annualized nominal interest rate' ;
  15 , 'name' , 'Annualized real interest rate' ;
  16 , 'name' , 'Annualized natural interest rate' ;
  17 , 'name' , 'Annualized inflation' ;
  18 , 'name' , 'Output deviation from steady state' ;
  19 , 'name' , 'Definition price level' ;
  20 , 'name' , 'resource constraint, eq. (12)' ;
  21 , 'name' , 'FOC labor, eq. (2)' ;
  22 , 'name' , 'definition real wage' ;
  23 , 'name' , 'definition nominal money stock' ;
  24 , 'name' , 'average price markup, eq. (18)' ;
  25 , 'name' , 'average price markuo, eq. (20)' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(25, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(12, 1);
M_.NNZDerivatives = [74; -1; -1];
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
epsilon = M_.params( 11 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(2, 2) = 0.0625;
resid(1);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 15;
options_.order = 1;
var_list_ = char('y_gap','pi_ann','y','n','w_real','p','i_ann','r_real_ann','m_nominal','nu');
info = stoch_simul(var_list_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = 0.25;
options_.impulse_responses.plot_threshold = 0;
options_.irf = 15;
options_.order = 1;
var_list_ = char('y_gap','pi_ann','y','n','w_real','p','i_ann','r_real_ann','m_nominal','z');
info = stoch_simul(var_list_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(3, 3) = 0;
options_.impulse_responses.plot_threshold = 0;
options_.irf = 15;
options_.order = 1;
var_list_ = char('y_gap','pi_ann','y','n','w_real','p','i_ann','r_real_ann','m_nominal','a');
info = stoch_simul(var_list_);
save('Gali_2015_chapter_3_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Gali_2015_chapter_3_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Gali_2015_chapter_3_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Gali_2015_chapter_3_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Gali_2015_chapter_3_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Gali_2015_chapter_3_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Gali_2015_chapter_3_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
