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
M_.fname = 'Jermann_Quadrini_2012_NK';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Jermann_Quadrini_2012_NK.log');
M_.exo_names = 'eps_z';
M_.exo_names_tex = '{\varepsilon_z}';
M_.exo_names_long = 'Technology shock';
M_.exo_names = char(M_.exo_names, 'eps_zeta');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_{\zeta}}');
M_.exo_names_long = char(M_.exo_names_long, 'Investment shock');
M_.exo_names = char(M_.exo_names, 'eps_gamma');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_{\gamma}}');
M_.exo_names_long = char(M_.exo_names_long, 'Preference shock');
M_.exo_names = char(M_.exo_names, 'eps_eta');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_{\eta}}');
M_.exo_names_long = char(M_.exo_names_long, 'Price Markup shock');
M_.exo_names = char(M_.exo_names, 'eps_upsilon');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_{\upsilon}}');
M_.exo_names_long = char(M_.exo_names_long, 'Wage Markup shock');
M_.exo_names = char(M_.exo_names, 'eps_G');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_{g}}');
M_.exo_names_long = char(M_.exo_names_long, 'Government shock');
M_.exo_names = char(M_.exo_names, 'eps_varsigma');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_{\varsigma}}');
M_.exo_names_long = char(M_.exo_names_long, 'Monetary shock');
M_.exo_names = char(M_.exo_names, 'eps_xi');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_{\xi}}');
M_.exo_names_long = char(M_.exo_names_long, 'Financial Shock');
M_.endo_names = 'R';
M_.endo_names_tex = '{R}';
M_.endo_names_long = 'Effective Gross Interest Rate';
M_.endo_names = char(M_.endo_names, 'P');
M_.endo_names_tex = char(M_.endo_names_tex, '{P}');
M_.endo_names_long = char(M_.endo_names_long, 'Price level');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, '{c}');
M_.endo_names_long = char(M_.endo_names_long, 'Consumption');
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, '{n}');
M_.endo_names_long = char(M_.endo_names_long, 'Labor');
M_.endo_names = char(M_.endo_names, 'u');
M_.endo_names_tex = char(M_.endo_names_tex, '{u}');
M_.endo_names_long = char(M_.endo_names_long, 'capital utilization');
M_.endo_names = char(M_.endo_names, 'd');
M_.endo_names_tex = char(M_.endo_names_tex, '{d}');
M_.endo_names_long = char(M_.endo_names_long, 'Dividend');
M_.endo_names = char(M_.endo_names, 'mu');
M_.endo_names_tex = char(M_.endo_names_tex, '{\mu}');
M_.endo_names_long = char(M_.endo_names_long, 'Lagrange Multiplier enforcement constraint');
M_.endo_names = char(M_.endo_names, 'chi');
M_.endo_names_tex = char(M_.endo_names_tex, '{\chi}');
M_.endo_names_long = char(M_.endo_names_long, 'Lagrange Multiplier demand constraint');
M_.endo_names = char(M_.endo_names, 'byhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{x}');
M_.endo_names_long = char(M_.endo_names_long, 'debt repurchase');
M_.endo_names = char(M_.endo_names, 'Q');
M_.endo_names_tex = char(M_.endo_names_tex, '{Q}');
M_.endo_names_long = char(M_.endo_names_long, 'Tobin Q');
M_.endo_names = char(M_.endo_names, 'invest');
M_.endo_names_tex = char(M_.endo_names_tex, '{i}');
M_.endo_names_long = char(M_.endo_names_long, 'Investment');
M_.endo_names = char(M_.endo_names, 'w_opt');
M_.endo_names_tex = char(M_.endo_names_tex, '{w^*}');
M_.endo_names_long = char(M_.endo_names_long, 'Optimal Wage');
M_.endo_names = char(M_.endo_names, 'W');
M_.endo_names_tex = char(M_.endo_names_tex, '{W}');
M_.endo_names_long = char(M_.endo_names_long, 'Aggregate Wage Index');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, '{y}');
M_.endo_names_long = char(M_.endo_names_long, 'Output');
M_.endo_names = char(M_.endo_names, 'V');
M_.endo_names_tex = char(M_.endo_names_tex, '{V}');
M_.endo_names_long = char(M_.endo_names_long, 'Value of the Firm');
M_.endo_names = char(M_.endo_names, 'T');
M_.endo_names_tex = char(M_.endo_names_tex, '{T}');
M_.endo_names_long = char(M_.endo_names_long, 'Lump sum taxes');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, '{k}');
M_.endo_names_long = char(M_.endo_names_long, 'Capital');
M_.endo_names = char(M_.endo_names, 'b');
M_.endo_names_tex = char(M_.endo_names_tex, '{b}');
M_.endo_names_long = char(M_.endo_names_long, 'Bond');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, '{r}');
M_.endo_names_long = char(M_.endo_names_long, 'Gross Interest Rate');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, '{z}');
M_.endo_names_long = char(M_.endo_names_long, 'Technology');
M_.endo_names = char(M_.endo_names, 'zeta');
M_.endo_names_tex = char(M_.endo_names_tex, '{\zeta}');
M_.endo_names_long = char(M_.endo_names_long, 'Investment Technology');
M_.endo_names = char(M_.endo_names, 'gamma');
M_.endo_names_tex = char(M_.endo_names_tex, '{\gamma}');
M_.endo_names_long = char(M_.endo_names_long, 'Preference shock');
M_.endo_names = char(M_.endo_names, 'eta');
M_.endo_names_tex = char(M_.endo_names_tex, '{\eta}');
M_.endo_names_long = char(M_.endo_names_long, 'Price Markup shock');
M_.endo_names = char(M_.endo_names, 'upsilon');
M_.endo_names_tex = char(M_.endo_names_tex, '{\upsilon}');
M_.endo_names_long = char(M_.endo_names_long, 'Wage Markup shock');
M_.endo_names = char(M_.endo_names, 'G');
M_.endo_names_tex = char(M_.endo_names_tex, '{G}');
M_.endo_names_long = char(M_.endo_names_long, 'Government spending shock');
M_.endo_names = char(M_.endo_names, 'var_sigma');
M_.endo_names_tex = char(M_.endo_names_tex, '{\varsigma}');
M_.endo_names_long = char(M_.endo_names_long, 'Monetary policy shock');
M_.endo_names = char(M_.endo_names, 'xi');
M_.endo_names_tex = char(M_.endo_names_tex, '{\xi}');
M_.endo_names_long = char(M_.endo_names_long, 'Financial Conditions');
M_.endo_names = char(M_.endo_names, 'wopthat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat w^*}');
M_.endo_names_long = char(M_.endo_names_long, 'optimal wage log deviations');
M_.endo_names = char(M_.endo_names, 'What');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat W}');
M_.endo_names_long = char(M_.endo_names_long, 'wage log deviations');
M_.endo_names = char(M_.endo_names, 'upsilonhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat \upsilon}');
M_.endo_names_long = char(M_.endo_names_long, 'wage markup log deviations');
M_.endo_names = char(M_.endo_names, 'yhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat y}');
M_.endo_names_long = char(M_.endo_names_long, 'Output log deviations');
M_.endo_names = char(M_.endo_names, 'chat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat c}');
M_.endo_names_long = char(M_.endo_names_long, 'consumption log deviations');
M_.endo_names = char(M_.endo_names, 'ihat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat i}');
M_.endo_names_long = char(M_.endo_names_long, 'investment log deviations');
M_.endo_names = char(M_.endo_names, 'nhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat n}');
M_.endo_names_long = char(M_.endo_names_long, 'hours log deviations');
M_.endo_names = char(M_.endo_names, 'dyhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat {\frac{d}{y}}}');
M_.endo_names_long = char(M_.endo_names_long, 'equity payout log deviations');
M_.endo_names = char(M_.endo_names, 'muhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat \mu}');
M_.endo_names_long = char(M_.endo_names_long, 'Langrange multiplier log deviations');
M_.endo_names = char(M_.endo_names, 'vyhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat {\frac{V}{Y}}}');
M_.endo_names_long = char(M_.endo_names_long, 'equity value log deviations');
M_.endo_names = char(M_.endo_names, 'y_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta Y}');
M_.endo_names_long = char(M_.endo_names_long, 'Growth rate GDP');
M_.endo_names = char(M_.endo_names, 'c_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta C}');
M_.endo_names_long = char(M_.endo_names_long, 'Growth rate Consumption');
M_.endo_names = char(M_.endo_names, 'invest_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta I}');
M_.endo_names_long = char(M_.endo_names_long, 'Growth rate Investment');
M_.endo_names = char(M_.endo_names, 'pi_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi }');
M_.endo_names_long = char(M_.endo_names_long, 'Inflation');
M_.endo_names = char(M_.endo_names, 'r_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '{r }');
M_.endo_names_long = char(M_.endo_names_long, 'net federal funds rate');
M_.endo_names = char(M_.endo_names, 'n_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta n}');
M_.endo_names_long = char(M_.endo_names_long, 'hours worked');
M_.endo_names = char(M_.endo_names, 'W_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta W}');
M_.endo_names_long = char(M_.endo_names_long, 'Growth rate real wage');
M_.endo_names = char(M_.endo_names, 'debt_repurchase_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '{\frac{\frac{b_{t-1}}{1+r_{t-1}}-\frac{b_{t}}{1+r_{t}}}{y_t}}');
M_.endo_names_long = char(M_.endo_names_long, 'Debt repurchases');
M_.endo_partitions = struct();
M_.param_names = 'betta';
M_.param_names_tex = '{\beta}';
M_.param_names_long = 'discount factor';
M_.param_names = char(M_.param_names, 'tau');
M_.param_names_tex = char(M_.param_names_tex, '{\tau}');
M_.param_names_long = char(M_.param_names_long, 'tax wedge');
M_.param_names = char(M_.param_names, 'alppha');
M_.param_names_tex = char(M_.param_names_tex, '{\alpha}');
M_.param_names_long = char(M_.param_names_long, 'disutility from work');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, '{\theta}');
M_.param_names_long = char(M_.param_names_long, 'capital share');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, '{\delta}');
M_.param_names_long = char(M_.param_names_long, 'depreciation');
M_.param_names = char(M_.param_names, 'xi_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar \xi}');
M_.param_names_long = char(M_.param_names_long, 'enforcement constraint');
M_.param_names = char(M_.param_names, 'BY_ratio');
M_.param_names_tex = char(M_.param_names_tex, '{(\bar b/(1+\bar r)/\bar Y}');
M_.param_names_long = char(M_.param_names_long, 'Debt output ratio');
M_.param_names = char(M_.param_names, 'G_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar G}');
M_.param_names_long = char(M_.param_names_long, 'Average government purchases');
M_.param_names = char(M_.param_names, 'GY_ratio');
M_.param_names_tex = char(M_.param_names_tex, '{\frac{\bar G}{\bar Y}}');
M_.param_names_long = char(M_.param_names_long, 'Average government spending share');
M_.param_names = char(M_.param_names, 'siggma');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma}');
M_.param_names_long = char(M_.param_names_long, 'risk aversion');
M_.param_names = char(M_.param_names, 'epsilon');
M_.param_names_tex = char(M_.param_names_tex, '{\varepsilon}');
M_.param_names_long = char(M_.param_names_long, 'Frisch elasticity');
M_.param_names = char(M_.param_names, 'h');
M_.param_names_tex = char(M_.param_names_tex, '{h}');
M_.param_names_long = char(M_.param_names_long, 'habit parameter');
M_.param_names = char(M_.param_names, 'omega');
M_.param_names_tex = char(M_.param_names_tex, '{\omega}');
M_.param_names_long = char(M_.param_names_long, 'Calvo Wage adjustment');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, '{\phi}');
M_.param_names_long = char(M_.param_names_long, 'Rotemberg price adjustment cost');
M_.param_names = char(M_.param_names, 'varrho');
M_.param_names_tex = char(M_.param_names_tex, '{\varrho}');
M_.param_names_long = char(M_.param_names_long, 'investment adjustment cost');
M_.param_names = char(M_.param_names, 'psi');
M_.param_names_tex = char(M_.param_names_tex, '{\psi}');
M_.param_names_long = char(M_.param_names_long, 'capital utilization cost');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, '{\kappa}');
M_.param_names_long = char(M_.param_names_long, 'equity cost');
M_.param_names = char(M_.param_names, 'eta_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar \eta}');
M_.param_names_long = char(M_.param_names_long, 'average price markup ');
M_.param_names = char(M_.param_names, 'upsilon_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar \upsilon}');
M_.param_names_long = char(M_.param_names_long, 'average wage markup ');
M_.param_names = char(M_.param_names, 'rho_z');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{z}}');
M_.param_names_long = char(M_.param_names_long, 'productivity shock persistence');
M_.param_names = char(M_.param_names, 'rho_zeta');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\zeta}}');
M_.param_names_long = char(M_.param_names_long, 'investment shock persistence');
M_.param_names = char(M_.param_names, 'rho_gamma');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\gamma}}');
M_.param_names_long = char(M_.param_names_long, 'intertemporal shock persistence');
M_.param_names = char(M_.param_names, 'rho_eta');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\eta}}');
M_.param_names_long = char(M_.param_names_long, 'price markup shock persistence');
M_.param_names = char(M_.param_names, 'rho_upsilon');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\upsilon}}');
M_.param_names_long = char(M_.param_names_long, 'wage markup shock persistence');
M_.param_names = char(M_.param_names, 'rho_G');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{G}}');
M_.param_names_long = char(M_.param_names_long, 'government shock persistence');
M_.param_names = char(M_.param_names, 'rho_varsigma');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\varsigma}}');
M_.param_names_long = char(M_.param_names_long, 'interest policy shock persistence');
M_.param_names = char(M_.param_names, 'rho_xi');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\xi}}');
M_.param_names_long = char(M_.param_names_long, 'financial shock persistence');
M_.param_names = char(M_.param_names, 'rho_gz');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{gz}}');
M_.param_names_long = char(M_.param_names_long, 'interaction production government ');
M_.param_names = char(M_.param_names, 'rho_R');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{R}}');
M_.param_names_long = char(M_.param_names_long, 'Taylor rule persistence');
M_.param_names = char(M_.param_names, 'nu_1');
M_.param_names_tex = char(M_.param_names_tex, '{\nu_{1}}');
M_.param_names_long = char(M_.param_names_long, 'Taylor rule feedback');
M_.param_names = char(M_.param_names, 'nu_2');
M_.param_names_tex = char(M_.param_names_tex, '{\nu_{2}}');
M_.param_names_long = char(M_.param_names_long, 'Taylor rule feedback');
M_.param_names = char(M_.param_names, 'nu_3');
M_.param_names_tex = char(M_.param_names_tex, '{\nu_{3}}');
M_.param_names_long = char(M_.param_names_long, 'Taylor rule feedback');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 8;
M_.endo_nbr = 45;
M_.param_nbr = 32;
M_.orig_endo_nbr = 45;
M_.aux_vars = [];
options_.varobs = cell(1);
options_.varobs(1)  = {'y_obs'};
options_.varobs(2)  = {'c_obs'};
options_.varobs(3)  = {'invest_obs'};
options_.varobs(4)  = {'pi_obs'};
options_.varobs(5)  = {'r_obs'};
options_.varobs(6)  = {'n_obs'};
options_.varobs(7)  = {'W_obs'};
options_.varobs(8)  = {'debt_repurchase_obs'};
options_.varobs_id = [ 38 39 40 41 42 43 44 45  ];
M_.Sigma_e = zeros(8, 8);
M_.Correlation_matrix = eye(8, 8);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('Jermann_Quadrini_2012_NK_static');
erase_compiled_function('Jermann_Quadrini_2012_NK_dynamic');
M_.orig_eq_nbr = 45;
M_.eq_nbr = 45;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 19 0;
 1 20 64;
 2 21 65;
 3 22 0;
 0 23 66;
 0 24 67;
 0 25 68;
 0 26 69;
 0 27 0;
 0 28 70;
 4 29 71;
 0 30 0;
 5 31 0;
 6 32 72;
 0 33 73;
 0 34 0;
 7 35 0;
 8 36 0;
 9 37 0;
 10 38 0;
 11 39 74;
 12 40 75;
 13 41 76;
 14 42 0;
 15 43 0;
 16 44 0;
 17 45 0;
 0 46 77;
 0 47 0;
 0 48 0;
 0 49 0;
 18 50 0;
 0 51 0;
 0 52 0;
 0 53 0;
 0 54 0;
 0 55 0;
 0 56 0;
 0 57 0;
 0 58 0;
 0 59 0;
 0 60 0;
 0 61 0;
 0 62 0;
 0 63 0;]';
M_.nstatic = 20;
M_.nfwrd   = 7;
M_.npred   = 11;
M_.nboth   = 7;
M_.nsfwrd   = 14;
M_.nspred   = 18;
M_.ndynamic   = 25;
M_.equations_tags = {
  1 , 'name' , '1.) HH Euler equation for bonds' ;
  2 , 'name' , '2.) Capital utilization' ;
  3 , 'name' , '3.) Euler equation for capital' ;
  4 , 'name' , '4.) Price of capital' ;
  5 , 'name' , '5.) Law of motion for capital' ;
  6 , 'name' , '6.) Wage FOC' ;
  7 , 'name' , '7.)Wage index' ;
  8 , 'name' , '8.) Labor Demand' ;
  9 , 'name' , '9.) Bond demand' ;
  10 , 'name' , '10.) Nominal price setting FOC' ;
  11 , 'name' , '11.) Firm value' ;
  12 , 'name' , '12.) Enforcement constraint' ;
  13 , 'name' , '13.) Firm budget' ;
  14 , 'name' , '14.) HH budget constraint' ;
  15 , 'name' , '15.) Government budget' ;
  16 , 'name' , '16.) Monetary policy' ;
  17 , 'name' , '17.)Definition output' ;
  18 , 'name' , '18.) Debt repurchase' ;
  19 , 'name' , 'Definition before tax interest rate' ;
  20 , 'name' , 'Definition output deviations from trend' ;
  21 , 'name' , 'Definition consumption deviation from trend' ;
  22 , 'name' , 'Definition investment deviation from trend' ;
  23 , 'name' , 'Definition hours deviation from trend' ;
  24 , 'name' , 'Definition lagrange multiplier deviation from trend' ;
  25 , 'name' , 'Definition wage markup deviation from trend' ;
  26 , 'name' , 'Definition optimal wage deviation from trend' ;
  27 , 'name' , 'Definition wage deviation from trend' ;
  28 , 'name' , 'Definition equity payout to GDP ratio' ;
  29 , 'name' , 'Definition equity share' ;
  30 , 'name' , 'LOM TFP shock' ;
  31 , 'name' , 'LOM MEI shock' ;
  32 , 'name' , 'LOM preference shock' ;
  33 , 'name' , 'LOM price shock' ;
  34 , 'name' , 'LOM wage markup shock' ;
  35 , 'name' , 'LOM spending shock' ;
  36 , 'name' , 'LOM monetary shock' ;
  37 , 'name' , 'LOM financial shock' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:8];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(45, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(8, 1);
M_.params = NaN(32, 1);
M_.NNZDerivatives = [230; -1; -1];
M_.params( 1 ) = 0.9825;
betta = M_.params( 1 );
M_.params( 2 ) = 0.35;
tau = M_.params( 2 );
M_.params( 3 ) = 16.736;
alppha = M_.params( 3 );
M_.params( 4 ) = 0.36;
theta = M_.params( 4 );
M_.params( 5 ) = 0.025;
delta = M_.params( 5 );
M_.params( 6 ) = 0.199;
xi_bar = M_.params( 6 );
M_.params( 7 ) = 3.36;
BY_ratio = M_.params( 7 );
M_.params( 8 ) = 0.179;
G_bar = M_.params( 8 );
M_.params( 9 ) = 0.18;
GY_ratio = M_.params( 9 );
M_.params( 10 ) = 1.09;
siggma = M_.params( 10 );
M_.params( 11 ) = 1.761;
epsilon = M_.params( 11 );
M_.params( 12 ) = 0.608;
h = M_.params( 12 );
M_.params( 13 ) = 0.278;
omega = M_.params( 13 );
M_.params( 14 ) = 0.031;
phi = M_.params( 14 );
M_.params( 15 ) = 0.021;
varrho = M_.params( 15 );
M_.params( 16 ) = 0.815;
psi = M_.params( 16 );
M_.params( 17 ) = 0.426;
kappa = M_.params( 17 );
M_.params( 18 ) = 1.137;
eta_bar = M_.params( 18 );
M_.params( 19 ) = 1.025;
upsilon_bar = M_.params( 19 );
M_.params( 20 ) = 0.902;
rho_z = M_.params( 20 );
M_.params( 21 ) = 0.922;
rho_zeta = M_.params( 21 );
M_.params( 22 ) = 0.794;
rho_gamma = M_.params( 22 );
M_.params( 23 ) = 0.906;
rho_eta = M_.params( 23 );
M_.params( 24 ) = 0.627;
rho_upsilon = M_.params( 24 );
M_.params( 25 ) = 0.955;
rho_G = M_.params( 25 );
M_.params( 26 ) = 0.203;
rho_varsigma = M_.params( 26 );
M_.params( 27 ) = 0.969;
rho_xi = M_.params( 27 );
M_.params( 28 ) = 0.509;
rho_gz = M_.params( 28 );
M_.params( 29 ) = 0.745;
rho_R = M_.params( 29 );
M_.params( 30 ) = 2.410;
nu_1 = M_.params( 30 );
M_.params( 31 ) = 0;
nu_2 = M_.params( 31 );
M_.params( 32 ) = 0.121;
nu_3 = M_.params( 32 );
options_.TeX=1;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 2.5e-05;
M_.Sigma_e(2, 2) = 3.6e-05;
M_.Sigma_e(3, 3) = 0.000256;
M_.Sigma_e(4, 4) = 0.000361;
M_.Sigma_e(5, 5) = 0.007225000000000001;
M_.Sigma_e(6, 6) = 0.0007840000000000001;
M_.Sigma_e(7, 7) = 4e-06;
M_.Sigma_e(8, 8) = 6.4e-05;
write_latex_parameter_table;
estim_params_.var_exo = [];
estim_params_.var_endo = [];
estim_params_.corrx = [];
estim_params_.corrn = [];
estim_params_.param_vals = [];
estim_params_.param_vals = [estim_params_.param_vals; 10, NaN, (-Inf), Inf, 3, 1.5, 0.37, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 11, NaN, (-Inf), Inf, 3, 2, 0.75, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 12, NaN, (-Inf), Inf, 1, 0.5, 0.3, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 13, NaN, (-Inf), Inf, 1, 0.5, 0.3, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 14, NaN, (-Inf), Inf, 4, 0.1, 0.3, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 15, NaN, (-Inf), Inf, 4, 0.1, 0.3, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 16, NaN, (-Inf), Inf, 1, 0.5, 0.15, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 17, NaN, (-Inf), Inf, 4, 0.2, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 18, NaN, (-Inf), Inf, 1, 1.2, 0.1, 1, 2, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 19, NaN, (-Inf), Inf, 1, 1.2, 0.1, 1, 2, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 20, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 21, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 22, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 23, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 24, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 25, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 26, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 27, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 28, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 1, NaN, (-Inf), Inf, 4, 0.001, 0.05, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 2, NaN, (-Inf), Inf, 4, 0.001, 0.05, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 3, NaN, (-Inf), Inf, 4, 0.001, 0.05, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 4, NaN, (-Inf), Inf, 4, 0.001, 0.05, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 5, NaN, (-Inf), Inf, 4, 0.001, 0.05, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 6, NaN, (-Inf), Inf, 4, 0.001, 0.05, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 7, NaN, (-Inf), Inf, 4, 0.001, 0.05, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 8, NaN, (-Inf), Inf, 4, 0.001, 0.05, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 29, NaN, (-Inf), Inf, 1, 0.75, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 30, NaN, (-Inf), Inf, 3, 1.5, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 31, NaN, (-Inf), Inf, 3, 0.12, 0.05, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 32, NaN, (-Inf), Inf, 3, 0.12, 0.05, NaN, NaN, NaN ];
options_.MaxNumberOfBytes = 1e7;
options_.bayesian_irf = 1;
options_.diffuse_filter = 1;
options_.mh_drop = 0.25;
options_.mh_jscale = 0.375;
options_.mh_nblck = 1;
options_.mh_replic = 1000;
options_.mode_check.status = 1;
options_.mode_compute = 0;
options_.plot_priors = 1;
options_.datafile = 'JQ2012_original_data';
options_.mode_file = 'JQ_2012_NK_mode';
options_.order = 1;
options_.steadystate.nocheck = 1;
var_list_ = char('yhat','chat','ihat','nhat','pi_obs','debt_repurchase_obs','z');
oo_recursive_=dynare_estimation(var_list_);
mode_results=load('JQ_2012_NK_mode'); 
M_=set_all_parameters(mode_results.xparam1,estim_params_,M_); 
var_list_=char('y_obs','c_obs','invest_obs','pi_obs','r_obs','n_obs','W_obs','debt_repurchase_obs') 
options_.irf = 0;
options_.nocorr = 1;
options_.nofunctions = 1;
options_.nograph = 1;
options_.order = 1;
var_list_ = char('y_obs','c_obs','invest_obs','pi_obs','r_obs','n_obs','W_obs','debt_repurchase_obs');
info = stoch_simul(var_list_);
fprintf('(b/(1+r)/Y: %4.3f\n',(oo_.dr.ys(strmatch('b',M_.endo_names,'exact'))/(1+oo_.dr.ys(strmatch('r',M_.endo_names,'exact'))))/oo_.dr.ys(strmatch('y',M_.endo_names,'exact')))
fprintf('Debt-Capital Ratio: %4.3f\n',(oo_.dr.ys(strmatch('b',M_.endo_names,'exact'))/(1+oo_.dr.ys(strmatch('r',M_.endo_names,'exact'))))/oo_.dr.ys(strmatch('k',M_.endo_names,'exact')))
fprintf('Total Debt-Output Ratio: %4.3f\n',(oo_.dr.ys(strmatch('b',M_.endo_names,'exact'))+oo_.dr.ys(strmatch('y',M_.endo_names,'exact')))/(oo_.dr.ys(strmatch('y',M_.endo_names,'exact'))*(1+oo_.dr.ys(strmatch('r',M_.endo_names,'exact')))))
fprintf('Total Debt-Capital Ratio: %4.3f\n',(oo_.dr.ys(strmatch('b',M_.endo_names,'exact'))+oo_.dr.ys(strmatch('y',M_.endo_names,'exact')))/(oo_.dr.ys(strmatch('k',M_.endo_names,'exact'))*(1+oo_.dr.ys(strmatch('r',M_.endo_names,'exact')))))
fprintf('Capital-Output Ratio: %4.3f\n',(oo_.dr.ys(strmatch('k',M_.endo_names,'exact'))/oo_.dr.ys(strmatch('y',M_.endo_names,'exact'))))
options_.parameter_set = 'posterior_mode';
var_list_ = char('y_obs');
[oo_,M_]= shock_decomposition(M_,oo_,options_,var_list_,bayestopt_,estim_params_);
timeline=1984:0.25:2010.25;
y_pos=strmatch('y_obs',M_.endo_names,'exact');
xi_pos=strmatch('eps_xi',M_.exo_names,'exact');
if exist('emp_data.mat','file')
emp_data=load('emp_data.mat'); 
emp_GDP=emp_data.log_Real_GDP_detrended;    
figure('Name','Figure 10')
subplot(2,2,1)
plot(timeline,squeeze(oo_.shock_decomposition(y_pos,xi_pos,:))*100,'r--',timeline,squeeze(oo_.shock_decomposition(y_pos,end,:))*100,'b-')
axis([1985 2010.25 -2.5 1.5])
y_pos=strmatch('y_obs',M_.endo_names,'exact');
xi_pos=strmatch('eps_xi',M_.exo_names,'exact');
legend('Financial Shocks','Data','Location','SouthWest')
title('GDP growth')
subplot(2,2,2)
plot(timeline(timeline>1985),cumsum(squeeze(oo_.shock_decomposition(y_pos,xi_pos,timeline>1985)))*100,'r--',emp_data.data_timeline,emp_GDP*100,'b-')
axis([1985 2010.25 -8.5 6.5])
title('GDP level')
end
if options_.mh_replic>2000
generate_var_decomp_posterior()
generate_trace_plots(1);
end
collect_latex_files;
save('Jermann_Quadrini_2012_NK_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Jermann_Quadrini_2012_NK_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Jermann_Quadrini_2012_NK_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Jermann_Quadrini_2012_NK_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Jermann_Quadrini_2012_NK_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Jermann_Quadrini_2012_NK_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Jermann_Quadrini_2012_NK_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
