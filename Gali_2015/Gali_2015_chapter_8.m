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
M_.fname = 'Gali_2015_chapter_8';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Gali_2015_chapter_8.log');
M_.exo_names = 'eps_nu';
M_.exo_names_tex = '{\varepsilon^\nu}';
M_.exo_names_long = 'monetary policy shock';
M_.exo_names = char(M_.exo_names, 'eps_a');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon^a}');
M_.exo_names_long = char(M_.exo_names_long, 'technology shock');
M_.exo_names = char(M_.exo_names, 'eps_z');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon^z}');
M_.exo_names_long = char(M_.exo_names_long, 'preference shock');
M_.exo_names = char(M_.exo_names, 'p_star');
M_.exo_names_tex = char(M_.exo_names_tex, '{p^*}');
M_.exo_names_long = char(M_.exo_names_long, 'world price level');
M_.endo_names = 'y_gap';
M_.endo_names_tex = '{\tilde{y}}';
M_.endo_names_long = 'output gap';
M_.endo_names = char(M_.endo_names, 'pi_h');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi_H}');
M_.endo_names_long = char(M_.endo_names_long, 'domestic inflation');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, '{i}');
M_.endo_names_long = char(M_.endo_names_long, 'nominal interest rate');
M_.endo_names = char(M_.endo_names, 'y_nat');
M_.endo_names_tex = char(M_.endo_names_tex, '{y^{n}}');
M_.endo_names_long = char(M_.endo_names_long, 'natural output');
M_.endo_names = char(M_.endo_names, 'r_nat');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^{n}}');
M_.endo_names_long = char(M_.endo_names_long, 'natural interest rate');
M_.endo_names = char(M_.endo_names, 's_nat');
M_.endo_names_tex = char(M_.endo_names_tex, '{s^{n}}');
M_.endo_names_long = char(M_.endo_names_long, 'natural terms of trade');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, '{y}');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 's_gap');
M_.endo_names_tex = char(M_.endo_names_tex, '{\tilde{s}}');
M_.endo_names_long = char(M_.endo_names_long, 'terms of trade gap');
M_.endo_names = char(M_.endo_names, 's');
M_.endo_names_tex = char(M_.endo_names_tex, '{s}');
M_.endo_names_long = char(M_.endo_names_long, 'terms of trade');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi}');
M_.endo_names_long = char(M_.endo_names_long, 'CPI inflation');
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, '{n}');
M_.endo_names_long = char(M_.endo_names_long, 'employment');
M_.endo_names = char(M_.endo_names, 'r_real');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^r}');
M_.endo_names_long = char(M_.endo_names_long, 'real interest rate');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, '{w}');
M_.endo_names_long = char(M_.endo_names_long, 'nominal wage');
M_.endo_names = char(M_.endo_names, 'nx');
M_.endo_names_tex = char(M_.endo_names_tex, '{nx}');
M_.endo_names_long = char(M_.endo_names_long, 'net exports in terms of domestic outout');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, '{c}');
M_.endo_names_long = char(M_.endo_names_long, 'consumption');
M_.endo_names = char(M_.endo_names, 'yhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat y}');
M_.endo_names_long = char(M_.endo_names_long, 'output deviation from steady state');
M_.endo_names = char(M_.endo_names, 'p_h');
M_.endo_names_tex = char(M_.endo_names_tex, '{p_H}');
M_.endo_names_long = char(M_.endo_names_long, 'domestic price level');
M_.endo_names = char(M_.endo_names, 'p');
M_.endo_names_tex = char(M_.endo_names_tex, '{p}');
M_.endo_names_long = char(M_.endo_names_long, 'CPI');
M_.endo_names = char(M_.endo_names, 'er');
M_.endo_names_tex = char(M_.endo_names_tex, '{e}');
M_.endo_names_long = char(M_.endo_names_long, 'Nominal exchange rate');
M_.endo_names = char(M_.endo_names, 'd_er');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta e}');
M_.endo_names_long = char(M_.endo_names_long, 'Nominal exchange rate growth');
M_.endo_names = char(M_.endo_names, 'y_star');
M_.endo_names_tex = char(M_.endo_names_tex, '{y^*}');
M_.endo_names_long = char(M_.endo_names_long, 'world output');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, '{a}');
M_.endo_names_long = char(M_.endo_names_long, 'AR(1) technology shock process');
M_.endo_names = char(M_.endo_names, 'nu');
M_.endo_names_tex = char(M_.endo_names_tex, '{\nu}');
M_.endo_names_long = char(M_.endo_names_long, 'AR(1) monetary policy shock process');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, '{z}');
M_.endo_names_long = char(M_.endo_names_long, 'AR(1) preference shock process');
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
M_.endo_names_long = char(M_.endo_names_long, 'annualized CPI inflation rate');
M_.endo_names = char(M_.endo_names, 'pi_h_ann');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi_H^{ann}}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized domestic inflation rate');
M_.endo_partitions = struct();
M_.param_names = 'betta';
M_.param_names_tex = '{\beta}';
M_.param_names_long = 'discount factor';
M_.param_names = char(M_.param_names, 'siggma');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma}');
M_.param_names_long = char(M_.param_names_long, 'inverse EIS');
M_.param_names = char(M_.param_names, 'varphi');
M_.param_names_tex = char(M_.param_names_tex, '{\varphi}');
M_.param_names_long = char(M_.param_names_long, 'inverse Frisch elasticity');
M_.param_names = char(M_.param_names, 'alppha');
M_.param_names_tex = char(M_.param_names_tex, '{\alpha}');
M_.param_names_long = char(M_.param_names_long, 'capital share');
M_.param_names = char(M_.param_names, 'epsilon');
M_.param_names_tex = char(M_.param_names_tex, '{\epsilon}');
M_.param_names_long = char(M_.param_names_long, 'demand elasticity');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, '{\theta}');
M_.param_names_long = char(M_.param_names_long, 'Calvo parameter');
M_.param_names = char(M_.param_names, 'upsilon');
M_.param_names_tex = char(M_.param_names_tex, '{\upsilon}');
M_.param_names_long = char(M_.param_names_long, 'openness parameter');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, '{\eta}');
M_.param_names_long = char(M_.param_names_long, 'substitutability foreign/domestic goods');
M_.param_names = char(M_.param_names, 'rho_a');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_a}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation technology shock');
M_.param_names = char(M_.param_names, 'rho_nu');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\nu}}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation monetary policy shock');
M_.param_names = char(M_.param_names, 'rho_y_star');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{y^*}}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation world output growth shock');
M_.param_names = char(M_.param_names, 'rho_z');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{z}}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation preference shock');
M_.param_names = char(M_.param_names, 'phi_pi');
M_.param_names_tex = char(M_.param_names_tex, '{\phi_{\pi}}');
M_.param_names_long = char(M_.param_names_long, 'inflation feedback Taylor Rule');
M_.param_names = char(M_.param_names, 'phi_y');
M_.param_names_tex = char(M_.param_names_tex, '{\phi_{y}}');
M_.param_names_long = char(M_.param_names_long, 'output feedback Taylor Rule');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 29;
M_.param_nbr = 14;
M_.orig_endo_nbr = 29;
M_.aux_vars = [];
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('Gali_2015_chapter_8_static');
erase_compiled_function('Gali_2015_chapter_8_dynamic');
M_.orig_eq_nbr = 29;
M_.eq_nbr = 29;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 8 37;
 0 9 38;
 0 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 1 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 2 24 0;
 3 25 0;
 4 26 0;
 0 27 0;
 0 28 39;
 5 29 0;
 6 30 0;
 7 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 0;]';
M_.nstatic = 19;
M_.nfwrd   = 3;
M_.npred   = 7;
M_.nboth   = 0;
M_.nsfwrd   = 3;
M_.nspred   = 7;
M_.ndynamic   = 10;
M_.equations_tags = {
  1 , 'name' , 'New Keynesian Phillips Curve (eq. 37)' ;
  2 , 'name' , 'Dynamic IS Curve (eq. 29)' ;
  3 , 'name' , 'Natural output (eq. 35)' ;
  4 , 'name' , 'Natural rate of interest (eq. 38)' ;
  5 , 'name' , 'Natural terms of trade (below eq. (35))' ;
  6 , 'name' , 'Terms of trade gap (middle p. 238)' ;
  7 , 'name' , 'Output' ;
  8 , 'name' , ' Terms of trade, p. 238' ;
  9 , 'name' , 'CPI inflation (13)' ;
  10 , 'name' , 'Production function (eq. 32)' ;
  11 , 'name' , 'Definition real interest rate' ;
  12 , 'name' , 'Monetary policy shock, below eq. (39)' ;
  13 , 'name' , 'TFP shock, top of p. 233' ;
  14 , 'name' , 'Preference shock, top of p. 227' ;
  15 , 'name' , 'FOC wage, eq. (11)' ;
  16 , 'name' , 'net exports, eq. (31)' ;
  17 , 'name' , 'consumption determined by resource constraint, p. 236' ;
  18 , 'name' , 'World output growth shock' ;
  19 , 'name' , 'Annualized nominal interest rate' ;
  20 , 'name' , 'Annualized real interest rate' ;
  21 , 'name' , ' Annualized natural interest rate' ;
  22 , 'name' , 'Annualized CPI inflation' ;
  23 , 'name' , 'Annualized domestic inflation' ;
  24 , 'name' , 'Output deviation from steady state' ;
  25 , 'name' , 'Domestic price level, p. 229' ;
  26 , 'name' , 'CPI definition' ;
  27 , 'name' , 'Nominal exchange rate' ;
  28 , 'name' , 'Definiion exchange rate growth' ;
  29 , 'name' , 'Interest Rate Rule (eq. 39) (FDIT)' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(29, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(14, 1);
M_.NNZDerivatives = [89; -1; -1];
case_title='Flexible domestic inflation targeting (FDIT)';    
short_title='FDIT';
M_.params( 1 ) = 0.99;
betta = M_.params( 1 );
M_.params( 2 ) = 1;
siggma = M_.params( 2 );
M_.params( 3 ) = 5;
varphi = M_.params( 3 );
M_.params( 4 ) = 0.25;
alppha = M_.params( 4 );
M_.params( 5 ) = 9;
epsilon = M_.params( 5 );
M_.params( 6 ) = 0.75;
theta = M_.params( 6 );
M_.params( 7 ) = 0.4;
upsilon = M_.params( 7 );
M_.params( 10 ) = 0.5;
rho_nu = M_.params( 10 );
M_.params( 9 ) = 0.9;
rho_a = M_.params( 9 );
M_.params( 11 ) = 0;
rho_y_star = M_.params( 11 );
M_.params( 13 ) = 1.5;
phi_pi = M_.params( 13 );
M_.params( 14 ) = 0.125;
phi_y = M_.params( 14 );
M_.params( 8 ) = 1;
eta = M_.params( 8 );
M_.params( 12 ) = 0.5;
rho_z = M_.params( 12 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.0625;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 15;
options_.order = 1;
var_list_ = char('y_gap','n','pi_h_ann','pi_ann','p_h','p','s','er','i_ann','r_real_ann');
info = stoch_simul(var_list_);
set_param_value('siggma',1);
set_param_value('eta',1);
set_param_value('upsilon',0.4);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(3, 3) = 0;
M_.Sigma_e(4, 4) = 0;
options_.irf = 0;
options_.order = 1;
var_list_ = char('y','y_gap','pi_h','pi','s','d_er');
info = stoch_simul(var_list_);
y_pos=strmatch('y',var_list_ ,'exact');
y_gap_pos=strmatch('y_gap',var_list_ ,'exact');
pi_pos=strmatch('pi',var_list_ ,'exact');
pi_h_pos=strmatch('pi_h',var_list_ ,'exact');
s_pos=strmatch('s',var_list_ ,'exact');
d_er_pos=strmatch('d_er',var_list_ ,'exact');
par.upsilon=M_.params(strmatch('upsilon',M_.param_names,'exact'));
par.theta=M_.params(strmatch('theta',M_.param_names,'exact'));
par.alppha=M_.params(strmatch('alppha',M_.param_names,'exact'));
par.betta=M_.params(strmatch('betta',M_.param_names,'exact'));
par.epsilon=M_.params(strmatch('epsilon',M_.param_names,'exact'));
par.siggma=M_.params(strmatch('siggma',M_.param_names,'exact'));
par.varphi=M_.params(strmatch('varphi',M_.param_names,'exact'));
par.lambda=(1-par.theta)*(1-par.betta*par.theta)/par.theta*(1-par.alppha)/(1-par.alppha+par.alppha*par.epsilon);
variance.y=oo_.var(y_pos,y_pos);
variance.y_gap=oo_.var(y_gap_pos,y_gap_pos);
variance.pi_h=oo_.var(pi_h_pos,pi_h_pos);
variance.pi=oo_.var(pi_pos,pi_pos);
variance.s=oo_.var(s_pos,s_pos);
variance.d_er=oo_.var(d_er_pos,d_er_pos);
L=(1-par.upsilon)*0.5*(((1+par.varphi)/(1-par.alppha))*variance.y_gap+par.epsilon/par.lambda*variance.pi_h)/100;
labels=strvcat('sigma(y)','sigma(tilde y)','sigma(pi_h)','sigma(pi)','sigma(s)','sigma(Delta e)','L');
headers=strvcat(' ',short_title);
values=[sqrt([variance.y;variance.y_gap;variance.pi_h;variance.pi;variance.s;variance.d_er]);L];
options_.noprint=0;
dyntable(options_,'Table 8.1: Properties of simple policy rules',headers,labels,values,size(labels,2)+2,4,3)
save('Gali_2015_chapter_8_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Gali_2015_chapter_8_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Gali_2015_chapter_8_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Gali_2015_chapter_8_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Gali_2015_chapter_8_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Gali_2015_chapter_8_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Gali_2015_chapter_8_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
