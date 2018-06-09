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
M_.fname = 'Gali_2015_chapter_4';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Gali_2015_chapter_4.log');
M_.exo_names = 'eps_a';
M_.exo_names_tex = '{\varepsilon_a}';
M_.exo_names_long = 'technology shock';
M_.exo_names = char(M_.exo_names, 'eps_zeta');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_\zeta}');
M_.exo_names_long = char(M_.exo_names_long, 'money demand shock innovation');
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
M_.endo_names = char(M_.endo_names, 'money_growth');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Delta m_q}');
M_.endo_names_long = char(M_.endo_names_long, 'money growth');
M_.endo_names = char(M_.endo_names, 'zeta');
M_.endo_names_tex = char(M_.endo_names_tex, '{\zeta}');
M_.endo_names_long = char(M_.endo_names_long, 'money demand shock');
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
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_1');
M_.endo_partitions = struct();
M_.param_names = 'alppha';
M_.param_names_tex = '{\alppha}';
M_.param_names_long = 'capital share';
M_.param_names = char(M_.param_names, 'betta');
M_.param_names_tex = char(M_.param_names_tex, '{\beta}');
M_.param_names_long = char(M_.param_names_long, 'discount factor');
M_.param_names = char(M_.param_names, 'rho_a');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_a}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation technology shock');
M_.param_names = char(M_.param_names, 'rho_zeta');
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
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 20;
M_.param_nbr = 12;
M_.orig_endo_nbr = 19;
M_.aux_vars(1).endo_index = 20;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 13;
M_.aux_vars(1).orig_lead_lag = -1;
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
erase_compiled_function('Gali_2015_chapter_4_static');
erase_compiled_function('Gali_2015_chapter_4_dynamic');
M_.orig_eq_nbr = 19;
M_.eq_nbr = 20;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 8 28;
 0 9 29;
 0 10 0;
 1 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 2 15 0;
 0 16 0;
 3 17 0;
 0 18 0;
 0 19 0;
 4 20 0;
 5 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 6 26 0;
 7 27 0;]';
M_.nstatic = 11;
M_.nfwrd   = 2;
M_.npred   = 7;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 7;
M_.ndynamic   = 9;
M_.equations_tags = {
  1 , 'name' , 'New Keynesian Phillips Curve eq. (22)' ;
  2 , 'name' , 'Dynamic IS Curve eq. (23)' ;
  3 , 'name' , 'Definition natural rate of interest eq. (24)' ;
  4 , 'name' , 'Definition real interest rate' ;
  5 , 'name' , 'Definition natural output, eq. (20)' ;
  6 , 'name' , 'Definition output gap' ;
  7 , 'name' , 'TFP shock' ;
  8 , 'name' , 'Production function (eq. 14)' ;
  9 , 'name' , 'Preference shock, p. 54' ;
  10 , 'name' , 'Money growth (derived from eq. (4))' ;
  11 , 'name' , 'Real money demand, (p. 114)' ;
  12 , 'name' , 'definition nominal money growth' ;
  13 , 'name' , '0 exogenous money growth (p. 114)' ;
  14 , 'name' , 'exogenous process for money demand shock' ;
  15 , 'name' , 'Annualized nominal interest rate' ;
  16 , 'name' , 'Annualized real interest rate' ;
  17 , 'name' , 'Annualized natural interest rate' ;
  18 , 'name' , 'Annualized inflation' ;
  19 , 'name' , 'Output deviation from steady state' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(20, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(12, 1);
M_.NNZDerivatives = [59; -1; -1];
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
M_.params( 4 ) = 0.2;
rho_zeta = M_.params( 4 );
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
M_.Sigma_e(1, 1) = 1;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 0;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('y','y_gap','pi');
info = stoch_simul(var_list_);
y_pos=strmatch('y',var_list_ ,'exact');
y_gap_pos=strmatch('y_gap',var_list_ ,'exact');
pi_pos=strmatch('pi',var_list_ ,'exact');
ii=0; 
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = 0;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
ii=ii+1;
info=stoch_simul(var_list_); 
par.theta=M_.params(strmatch('theta',M_.param_names,'exact'));
par.alppha=M_.params(strmatch('alppha',M_.param_names,'exact'));
par.betta=M_.params(strmatch('betta',M_.param_names,'exact'));
par.epsilon=M_.params(strmatch('epsilon',M_.param_names,'exact'));
par.siggma=M_.params(strmatch('siggma',M_.param_names,'exact'));
par.varphi=M_.params(strmatch('varphi',M_.param_names,'exact'));
par.lambda=(1-par.theta)*(1-par.betta*par.theta)/par.theta*(1-par.alppha)/(1-par.alppha+par.alppha*par.epsilon);
variance.y_gap(ii)=oo_.var(y_gap_pos,y_gap_pos);
variance.y(ii)=oo_.var(y_pos,y_pos);
variance.pi(ii)=oo_.var(pi_pos,pi_pos);
L(ii)=0.5*((par.siggma+(par.varphi+par.alppha)/(1-par.alppha))*variance.y_gap(ii)+par.epsilon/par.lambda*variance.pi(ii))/100;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = 0;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(3, 3) = 1;
ii=ii+1;
info=stoch_simul(var_list_); 
par.theta=M_.params(strmatch('theta',M_.param_names,'exact'));
par.alppha=M_.params(strmatch('alppha',M_.param_names,'exact'));
par.betta=M_.params(strmatch('betta',M_.param_names,'exact'));
par.epsilon=M_.params(strmatch('epsilon',M_.param_names,'exact'));
par.siggma=M_.params(strmatch('siggma',M_.param_names,'exact'));
par.varphi=M_.params(strmatch('varphi',M_.param_names,'exact'));
par.lambda=(1-par.theta)*(1-par.betta*par.theta)/par.theta*(1-par.alppha)/(1-par.alppha+par.alppha*par.epsilon);
variance.y_gap(ii)=oo_.var(y_gap_pos,y_gap_pos);
variance.y(ii)=oo_.var(y_pos,y_pos);
variance.pi(ii)=oo_.var(pi_pos,pi_pos);
L(ii)=0.5*((par.siggma+(par.varphi+par.alppha)/(1-par.alppha))*variance.y_gap(ii)+par.epsilon/par.lambda*variance.pi(ii))/100;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = 0;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(2, 2) = 1;
ii=ii+1;
info=stoch_simul(var_list_); 
par.theta=M_.params(strmatch('theta',M_.param_names,'exact'));
par.alppha=M_.params(strmatch('alppha',M_.param_names,'exact'));
par.betta=M_.params(strmatch('betta',M_.param_names,'exact'));
par.epsilon=M_.params(strmatch('epsilon',M_.param_names,'exact'));
par.siggma=M_.params(strmatch('siggma',M_.param_names,'exact'));
par.varphi=M_.params(strmatch('varphi',M_.param_names,'exact'));
par.lambda=(1-par.theta)*(1-par.betta*par.theta)/par.theta*(1-par.alppha)/(1-par.alppha+par.alppha*par.epsilon);
variance.y_gap(ii)=oo_.var(y_gap_pos,y_gap_pos);
variance.y(ii)=oo_.var(y_pos,y_pos);
variance.pi(ii)=oo_.var(pi_pos,pi_pos);
L(ii)=0.5*((par.siggma+(par.varphi+par.alppha)/(1-par.alppha))*variance.y_gap(ii)+par.epsilon/par.lambda*variance.pi(ii))/100;
labels=strvcat('sigma(y)','sigma(tilde y)','sigma(pi)','L');
headers=strvcat(' ','Technology','Demand','Money Demand');
values=[sqrt(variance.y);sqrt(variance.y_gap);sqrt(variance.pi);L];
options_.noprint=0;
dyntable(options_,'Constant money growth',headers,labels,values,size(labels,2)+2,4,3)
save('Gali_2015_chapter_4_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Gali_2015_chapter_4_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Gali_2015_chapter_4_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Gali_2015_chapter_4_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Gali_2015_chapter_4_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Gali_2015_chapter_4_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Gali_2015_chapter_4_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
