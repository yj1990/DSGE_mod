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
M_.fname = 'Jermann_Quadrini_2012_RBC';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Jermann_Quadrini_2012_RBC.log');
M_.exo_names = 'eps_z';
M_.exo_names_tex = '{\varepsilon_z}';
M_.exo_names_long = 'Technology shock';
M_.exo_names = char(M_.exo_names, 'eps_xi');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_{\xi}}');
M_.exo_names_long = char(M_.exo_names_long, 'Financial Shock');
M_.endo_names = 'c';
M_.endo_names_tex = '{c}';
M_.endo_names_long = 'Consumption';
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, '{n}');
M_.endo_names_long = char(M_.endo_names_long, 'Labor');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, '{w}');
M_.endo_names_long = char(M_.endo_names_long, 'Wage');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, '{k}');
M_.endo_names_long = char(M_.endo_names_long, 'Capital');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, '{R}');
M_.endo_names_long = char(M_.endo_names_long, 'Effective Gross Interest Rate');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, '{r}');
M_.endo_names_long = char(M_.endo_names_long, 'Gross Interest Rate');
M_.endo_names = char(M_.endo_names, 'd');
M_.endo_names_tex = char(M_.endo_names_tex, '{d}');
M_.endo_names_long = char(M_.endo_names_long, 'Dividend');
M_.endo_names = char(M_.endo_names, 'b');
M_.endo_names_tex = char(M_.endo_names_tex, '{b}');
M_.endo_names_long = char(M_.endo_names_long, 'Bond');
M_.endo_names = char(M_.endo_names, 'mu');
M_.endo_names_tex = char(M_.endo_names_tex, '{\mu}');
M_.endo_names_long = char(M_.endo_names_long, 'Lagrange Multiplier');
M_.endo_names = char(M_.endo_names, 'v');
M_.endo_names_tex = char(M_.endo_names_tex, '{v}');
M_.endo_names_long = char(M_.endo_names_long, 'Value of the Firm');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, '{z}');
M_.endo_names_long = char(M_.endo_names_long, 'Technology');
M_.endo_names = char(M_.endo_names, 'xi');
M_.endo_names_tex = char(M_.endo_names_tex, '{\xi}');
M_.endo_names_long = char(M_.endo_names_long, 'Financial Conditions');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, '{y}');
M_.endo_names_long = char(M_.endo_names_long, 'Output');
M_.endo_names = char(M_.endo_names, 'invest');
M_.endo_names_tex = char(M_.endo_names_tex, '{i}');
M_.endo_names_long = char(M_.endo_names_long, 'Investment');
M_.endo_names = char(M_.endo_names, 'yhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat y}');
M_.endo_names_long = char(M_.endo_names_long, 'output deviation from trend');
M_.endo_names = char(M_.endo_names, 'chat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat c}');
M_.endo_names_long = char(M_.endo_names_long, 'consumption deviation from trend');
M_.endo_names = char(M_.endo_names, 'ihat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat i}');
M_.endo_names_long = char(M_.endo_names_long, 'investment deviation from trend');
M_.endo_names = char(M_.endo_names, 'nhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat n}');
M_.endo_names_long = char(M_.endo_names_long, 'hours deviation from trend');
M_.endo_names = char(M_.endo_names, 'byhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat y}');
M_.endo_names_long = char(M_.endo_names_long, 'debt-repurchase to GDP ratio deviation from trend');
M_.endo_names = char(M_.endo_names, 'dyhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat y}');
M_.endo_names_long = char(M_.endo_names_long, 'dividend to GDP ratio deviation from trend');
M_.endo_names = char(M_.endo_names, 'muhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat \mu}');
M_.endo_names_long = char(M_.endo_names_long, 'Lagrange multiplier from trend');
M_.endo_names = char(M_.endo_names, 'vyhat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat y}');
M_.endo_names_long = char(M_.endo_names_long, 'Equity value deviation from trend');
M_.endo_partitions = struct();
M_.param_names = 'theta';
M_.param_names_tex = '{\theta}';
M_.param_names_long = 'capital share';
M_.param_names = char(M_.param_names, 'betta');
M_.param_names_tex = char(M_.param_names_tex, '{\beta}');
M_.param_names_long = char(M_.param_names_long, 'discount factor');
M_.param_names = char(M_.param_names, 'alppha');
M_.param_names_tex = char(M_.param_names_tex, '{\alpha}');
M_.param_names_long = char(M_.param_names_long, 'disutility from work');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, '{\delta}');
M_.param_names_long = char(M_.param_names_long, 'depreciation');
M_.param_names = char(M_.param_names, 'tau');
M_.param_names_tex = char(M_.param_names_tex, '{\tau}');
M_.param_names_long = char(M_.param_names_long, 'tax wedge');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, '{\kappa}');
M_.param_names_long = char(M_.param_names_long, 'equity cost');
M_.param_names = char(M_.param_names, 'siggma');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma}');
M_.param_names_long = char(M_.param_names_long, 'risk aversion');
M_.param_names = char(M_.param_names, 'sigma_z');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_z}');
M_.param_names_long = char(M_.param_names_long, 'std_z');
M_.param_names = char(M_.param_names, 'sigma_xi');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_xi}');
M_.param_names_long = char(M_.param_names_long, 'std_xi');
M_.param_names = char(M_.param_names, 'BY_ratio');
M_.param_names_tex = char(M_.param_names_tex, '{(\bar b/(1+\bar r)/\bar Y}');
M_.param_names_long = char(M_.param_names_long, 'Debt output ratio');
M_.param_names = char(M_.param_names, 'A11');
M_.param_names_tex = char(M_.param_names_tex, '{A_{11}}');
M_.param_names_long = char(M_.param_names_long, 'A_11');
M_.param_names = char(M_.param_names, 'A12');
M_.param_names_tex = char(M_.param_names_tex, '{A_{12}}');
M_.param_names_long = char(M_.param_names_long, 'A_12');
M_.param_names = char(M_.param_names, 'A21');
M_.param_names_tex = char(M_.param_names_tex, '{A_{21}}');
M_.param_names_long = char(M_.param_names_long, 'A_21');
M_.param_names = char(M_.param_names, 'A22');
M_.param_names_tex = char(M_.param_names_tex, '{A_{22}}');
M_.param_names_long = char(M_.param_names_long, 'A_22');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 22;
M_.param_nbr = 14;
M_.orig_endo_nbr = 22;
M_.aux_vars = [];
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('Jermann_Quadrini_2012_RBC_static');
erase_compiled_function('Jermann_Quadrini_2012_RBC_dynamic');
M_.orig_eq_nbr = 22;
M_.eq_nbr = 22;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 6 28;
 0 7 29;
 0 8 0;
 1 9 0;
 0 10 0;
 2 11 0;
 0 12 30;
 3 13 0;
 0 14 31;
 0 15 32;
 4 16 33;
 5 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 0;]';
M_.nstatic = 12;
M_.nfwrd   = 5;
M_.npred   = 4;
M_.nboth   = 1;
M_.nsfwrd   = 6;
M_.nspred   = 5;
M_.ndynamic   = 10;
M_.equations_tags = {
  1 , 'name' , 'FOC labor, equation 1 on p. 4 Appendix' ;
  2 , 'name' , 'Euler equatoin, equation 2 on p. 4 Appendix' ;
  3 , 'name' , 'budget constraint household, equation 3 on p. 4 Appendix' ;
  4 , 'name' , 'FOC labor input, equation 4 on p. 4 Appendix' ;
  5 , 'name' , 'FOC capital, equation 5 on p. 4 Appendix' ;
  6 , 'name' , 'FOC bonds, equation 6 on p. 4 Appendix' ;
  7 , 'name' , 'budget constraint firm, equation 7 on p. 4 Appendix' ;
  8 , 'name' , 'Enforcement constraint, equation 8 on p. 4 Appendix' ;
  9 , 'name' , 'Equation 1 of VAR in equation (11)' ;
  10 , 'name' , 'Equation 2 of VAR in equation (11)' ;
  11 , 'name' , 'Production function' ;
  12 , 'name' , 'LOM capital' ;
  13 , 'name' , 'Definition firm value, equation 11) in appendix p.' ;
  14 , 'name' , 'Definition before tax interest rate' ;
  15 , 'name' , 'Definition output deviations from trend' ;
  16 , 'name' , 'Definition consumption deviation from trend' ;
  17 , 'name' , 'Definition investment deviation from trend' ;
  18 , 'name' , 'Definition hours deviation from trend' ;
  19 , 'name' , 'Definition lagrange multiplier deviation from trend' ;
  20 , 'name' , 'Definition debt repurchase share in GDP' ;
  21 , 'name' , 'Definition equity payout to GDP ratio' ;
  22 , 'name' , 'Definition equity share' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(22, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(14, 1);
M_.NNZDerivatives = [97; -1; -1];
M_.params( 7 ) = 1;
siggma = M_.params( 7 );
M_.params( 1 ) = 0.36;
theta = M_.params( 1 );
M_.params( 2 ) = 0.9825;
betta = M_.params( 2 );
M_.params( 4 ) = 0.025;
delta = M_.params( 4 );
M_.params( 5 ) = 0.35;
tau = M_.params( 5 );
M_.params( 10 ) = 3.36;
BY_ratio = M_.params( 10 );
M_.params( 6 ) = 0.08;
kappa = M_.params( 6 );
kappa_store=kappa;
estimated_process=load('innovations_corrected.mat')
cov_matrix=estimated_process.cov_matrix;
M_.params( 9 ) = sqrt(cov_matrix(2,2));
sigma_xi = M_.params( 9 );
M_.params( 8 ) = sqrt(cov_matrix(1,1));
sigma_z = M_.params( 8 );
covariance_z_xi =0; 
bhat_OLS=estimated_process.bhat_OLS;
M_.params( 11 ) = bhat_OLS(1,1);
A11 = M_.params( 11 );
M_.params( 12 ) = bhat_OLS(1,2);
A12 = M_.params( 12 );
M_.params( 13 ) = bhat_OLS(2,1);
A21 = M_.params( 13 );
M_.params( 14 ) = bhat_OLS(2,2);
A22 = M_.params( 14 );
options_.TeX=1;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = M_.params(8)^2;
M_.Sigma_e(2, 2) = M_.params(9)^2;
M_.Sigma_e(1, 2) = covariance_z_xi;
M_.Sigma_e(2, 1) = M_.Sigma_e(1, 2);
M_.sigma_e_is_diagonal = 0;
steady;
write_latex_parameter_table;
set_param_value('A12',0);
set_param_value('A21',0);
options_.bandpass.indicator = 1;
options_.irf = 50;
options_.nocorr = 1;
options_.nofunctions = 1;
options_.nograph = 1;
options_.order = 1;
options_.bandpass.passband = [6;32;];
var_list_ = char();
info = stoch_simul(var_list_);
fprintf('(b/(1+r)/Y: %4.3f\n',(oo_.dr.ys(strmatch('b',M_.endo_names,'exact'))/(1+oo_.dr.ys(strmatch('r',M_.endo_names,'exact'))))/oo_.dr.ys(strmatch('y',M_.endo_names,'exact')))
fprintf('Debt-Capital Ratio: %4.3f\n',(oo_.dr.ys(strmatch('b',M_.endo_names,'exact'))/(1+oo_.dr.ys(strmatch('r',M_.endo_names,'exact'))))/oo_.dr.ys(strmatch('k',M_.endo_names,'exact')))
fprintf('Total Debt-Output Ratio: %4.3f\n',(oo_.dr.ys(strmatch('b',M_.endo_names,'exact'))+oo_.dr.ys(strmatch('y',M_.endo_names,'exact')))/(oo_.dr.ys(strmatch('y',M_.endo_names,'exact'))*(1+oo_.dr.ys(strmatch('r',M_.endo_names,'exact')))))
fprintf('Total Debt-Capital Ratio: %4.3f\n',(oo_.dr.ys(strmatch('b',M_.endo_names,'exact'))+oo_.dr.ys(strmatch('y',M_.endo_names,'exact')))/(oo_.dr.ys(strmatch('k',M_.endo_names,'exact'))*(1+oo_.dr.ys(strmatch('r',M_.endo_names,'exact')))))
fprintf('Capital-Output Ratio: %4.3f\n',(oo_.dr.ys(strmatch('k',M_.endo_names,'exact'))/oo_.dr.ys(strmatch('y',M_.endo_names,'exact'))))
figure('Name','Figure 6: Impulse Responses')
subplot(2,4,1)
plot(-oo_.irfs.yhat_eps_z*100,'b')
hold on
plot(-oo_.irfs.yhat_eps_xi*100,'r--')
axis([-inf inf -0.8 0]);
ll=legend('TFP shock','Financial Shock');
title('Output')
subplot(2,4,2)
plot(-oo_.irfs.nhat_eps_z*100,'b')
hold on
plot(-oo_.irfs.nhat_eps_xi*100,'r--')
axis([-inf inf -1.2 0.8]);
title('Hours')
subplot(2,4,3)
plot(-oo_.irfs.chat_eps_z*100,'b')
hold on
plot(-oo_.irfs.chat_eps_xi*100,'r--')
axis([-inf inf -0.6 0.06]);
title('Consumption')
subplot(2,4,4)
plot(-oo_.irfs.ihat_eps_z*100,'b')
hold on
plot(-oo_.irfs.ihat_eps_xi*100,'r--')
axis([-inf inf -3.5 0.5]);
title('Investment')
subplot(2,4,5)
plot(-oo_.irfs.byhat_eps_z*100,'b')
hold on
plot(-oo_.irfs.byhat_eps_xi*100,'r--')
axis([-inf inf -1.9 2.4]);
title('Debt rep./Y')
subplot(2,4,6)
plot(-oo_.irfs.dyhat_eps_z*100,'b')
hold on
plot(-oo_.irfs.dyhat_eps_xi*100,'r--')
axis([-inf inf -1.5 1.5]);
title('Equity Payout/Y')
subplot(2,4,7)
plot(-oo_.irfs.vyhat_eps_z*100,'b')
hold on
plot(-oo_.irfs.vyhat_eps_xi*100,'r--')
axis([-inf inf -0.3 0.4]);
title('Equity Value')
subplot(2,4,8)
plot(-oo_.irfs.muhat_eps_z*100,'b')
hold on
plot(-oo_.irfs.muhat_eps_xi*100,'r--')
axis([-inf inf -20 25])
title('Multiplier, \mu')
innovations=load('innovations_corrected.mat');
emp_data=load('emp_data.mat');                                 
emp_GDP=emp_data.log_Real_GDP_detrended;    
emp_value_added=emp_data.log_Real_Business_value_added_detrended(:,1);
emp_equity=emp_data.equity_payout_detrended;
emp_debt=emp_data.debt_repurchases_detrended;
emp_hours=emp_data.log_Total_Private_hours_detrended;
emp_consumption=emp_data.log_Real_Personal_Consumption;
emp_investment=emp_data.log_Real_Investment_detrended;
timeline=emp_data.data_timeline;  
n_points=length(emp_GDP);      
set_param_value('kappa',0);
set_param_value('tau',0.00001);        
set_param_value('A12',estimated_process.bhat_OLS(1,2));
set_param_value('A21',estimated_process.bhat_OLS(2,1));
options_.irf = 105;
options_.nocorr = 1;
options_.nofunctions = 1;
options_.nograph = 1;
options_.nomoments = 1;
options_.order = 1;
var_list_ = char();
info = stoch_simul(var_list_);
initial_condition_states = repmat(oo_.dr.ys,1,M_.maximum_lag);
shock_matrix = zeros(n_points,M_.exo_nbr);      
shock_matrix(:,strmatch('eps_z',M_.exo_names,'exact')) = innovations.resid(:,1)';
shock_matrix(:,strmatch('eps_xi',M_.exo_names,'exact')) = zeros(1,n_points); 
y2 = simult_(initial_condition_states,oo_.dr,shock_matrix,1);
y_IRF_prod_nofric = y2(:,M_.maximum_lag+1:end)-repmat(oo_.dr.ys,1,n_points);     
shock_matrix(:,strmatch('eps_z',M_.exo_names,'exact')) = zeros(1,n_points);
shock_matrix(:,strmatch('eps_xi',M_.exo_names,'exact')) = innovations.resid(:,2)'; 
y2 = simult_(initial_condition_states,oo_.dr,shock_matrix,1);
y_IRF_fin_nofric = y2(:,M_.maximum_lag+1:end)-repmat(oo_.dr.ys,1,n_points);         
shock_matrix(:,strmatch('eps_z',M_.exo_names,'exact')) = innovations.resid(:,1)';
shock_matrix(:,strmatch('eps_xi',M_.exo_names,'exact')) = innovations.resid(:,2)'; 
y2 = simult_(initial_condition_states,oo_.dr,shock_matrix,1);
y_IRF_both_nofric = y2(:,M_.maximum_lag+1:end)-repmat(oo_.dr.ys,1,n_points);
set_param_value('kappa',kappa_store);
set_param_value('tau',0.35);
options_.bandpass.indicator = 1;
options_.irf = 105;
options_.nocorr = 1;
options_.nofunctions = 1;
options_.nograph = 1;
options_.nomoments = 1;
options_.order = 1;
options_.bandpass.passband = [6;32;];
var_list_ = char();
info = stoch_simul(var_list_);
initial_condition_states = repmat(oo_.dr.ys,1,M_.maximum_lag);
shock_matrix = zeros(n_points,M_.exo_nbr);                
shock_matrix(:,strmatch('eps_z',M_.exo_names,'exact')) = innovations.resid(:,1)';
shock_matrix(:,strmatch('eps_xi',M_.exo_names,'exact')) = zeros(1,n_points); 
y2 = simult_(initial_condition_states,oo_.dr,shock_matrix,1);
y_IRF_prod_fric = y2(:,M_.maximum_lag+1:end)-repmat(oo_.dr.ys,1,n_points);               
shock_matrix(:,strmatch('eps_z',M_.exo_names,'exact')) = zeros(1,n_points);
shock_matrix(:,strmatch('eps_xi',M_.exo_names,'exact')) = innovations.resid(:,2)'; 
y2 = simult_(initial_condition_states,oo_.dr,shock_matrix,1);
y_IRF_fin_fric = y2(:,M_.maximum_lag+1:end)-repmat(oo_.dr.ys,1,n_points);                    
shock_matrix(:,strmatch('eps_z',M_.exo_names,'exact')) = innovations.resid(:,1)';
shock_matrix(:,strmatch('eps_xi',M_.exo_names,'exact')) = innovations.resid(:,2)'; 
y2 = simult_(initial_condition_states,oo_.dr,shock_matrix,1);
y_IRF_both_fric = y2(:,M_.maximum_lag+1:end)-repmat(oo_.dr.ys,1,n_points);     
figure('Name','Figure 2: Multiplier')
plot(timeline,100*y_IRF_both_fric(strmatch('muhat',M_.endo_names,'exact'),:));
axis([-inf inf -90 120]);
title('Lagrange Multiplier');
ff=figure('Name','Figure 3: Response to productivity shock only');
subplot(2,2,1)
hh1=plot(timeline,100*y_IRF_prod_fric(strmatch('yhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*y_IRF_prod_nofric(strmatch('yhat',M_.endo_names,'exact'),:),'r--');
hh3=plot(timeline,100*emp_GDP,'g');
hold off
axis([-inf inf -14 8]);
plot_NBER_recessions([hh1;hh2;hh3]);     
ll=legend([hh1 hh2 hh3],'Baseline','No fin. fric.','Data');
set(ll,'Location','NorthWest');
title('GDP');
subplot(2,2,2)
hh1=plot(timeline,100*y_IRF_prod_fric(strmatch('nhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*y_IRF_prod_nofric(strmatch('nhat',M_.endo_names,'exact'),:),'r--');
hh3=plot(timeline,100*emp_hours,'g');
hold off
axis([-inf inf -14 8]);        
plot_NBER_recessions([hh1;hh2;hh3]);     
title('Hours');
subplot(2,2,3)
hh1=plot(timeline,100*y_IRF_prod_fric(strmatch('byhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*emp_debt,'g');
hold off
axis([-inf inf -12 15]);        
plot_NBER_recessions([hh1;hh2]);     
title('Debt repurchase');
subplot(2,2,4)
hh1=plot(timeline,100*y_IRF_prod_fric(strmatch('dyhat',M_.endo_names,'exact'),:),'b-.');   
hold on
hh2=plot(timeline,100*emp_equity,'g');
hold off
axis([-inf inf -12 15]);        
plot_NBER_recessions([hh1;hh2]);     
title('Equity payout');
ff=figure('Name','Figure 4: Response to financial shocks only');
subplot(2,2,1)
hh1=plot(timeline,100*y_IRF_fin_fric(strmatch('yhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*emp_GDP,'g');
hold off
axis([-inf inf -14 8]);
plot_NBER_recessions([hh1;hh2]);     
ll=legend([hh1 hh2],'Model','GDP');
set(ll,'Location','NorthWest');
title('GDP');
subplot(2,2,2)
hh1=plot(timeline,100*y_IRF_fin_fric(strmatch('nhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*emp_hours,'g');
hold off
axis([-inf inf -14 8]);        
plot_NBER_recessions([hh1;hh2]);     
title('Hours');
subplot(2,2,3)
hh1=plot(timeline,100*y_IRF_fin_fric(strmatch('byhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*emp_debt,'g');
hold off
axis([-inf inf -12 15]);        
plot_NBER_recessions([hh1;hh2]);     
title('Debt repurchase');
subplot(2,2,4)
hh1=plot(timeline,100*y_IRF_fin_fric(strmatch('dyhat',M_.endo_names,'exact'),:),'b-.'); 
hold on
hh2=plot(timeline,100*emp_equity,'g');
hold off
axis([-inf inf -12 15]);        
plot_NBER_recessions([hh1;hh2]);     
title('Equity payout');
equity_payout_filtered_model=bpf(100*y_IRF_both_fric(strmatch('dyhat',M_.endo_names,'exact'),:)',6,32,12);
fprintf('Std(Equity payout Model): %4.3f \n',nanstd(equity_payout_filtered_model))
equity_payout_filtered_data=bpf(100*emp_equity,6,32,12);
fprintf('Std(Equity payout Data): %4.3f \n',nanstd(equity_payout_filtered_data))
ff=figure('Name','Figure 5: Response to both shocks');
subplot(2,2,1)
hh1=plot(timeline,100*y_IRF_both_fric(strmatch('yhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*emp_GDP,'g');
hold off
ll=legend('Model','GDP');
set(ll,'Location','NorthWest');
axis([-inf inf -14 8]);
plot_NBER_recessions([hh1;hh2]);     
title('GDP');
subplot(2,2,2)
hh1=plot(timeline,100*y_IRF_both_fric(strmatch('nhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*emp_hours,'g');
hold off
axis([-inf inf -14 8]);        
plot_NBER_recessions([hh1;hh2]);     
title('Hours');
subplot(2,2,3)
hh1=plot(timeline,100*y_IRF_both_fric(strmatch('byhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*emp_debt,'g');
hold off
axis([-inf inf -12 15]);        
plot_NBER_recessions([hh1;hh2]);     
title('Debt repurchase');
subplot(2,2,4)
hh1=plot(timeline,100*y_IRF_both_fric(strmatch('dyhat',M_.endo_names,'exact'),:),'b-.');
hold on
hh2=plot(timeline,100*emp_equity,'g');
hold off
axis([-inf inf -12 15]);        
title('Equity payout');
plot_NBER_recessions([hh1;hh2]);     
fprintf('Std(Y): \t %3.2f \t %3.2f \t %3.2f \t %3.2f\n',100*std(emp_GDP), 100*std(y_IRF_prod_fric(strmatch('yhat',M_.endo_names,'exact'),:)),100*std(y_IRF_fin_fric(strmatch('yhat',M_.endo_names,'exact'),:)),100*std(y_IRF_both_fric(strmatch('yhat',M_.endo_names,'exact'),:)))
fprintf('Std(N): \t %3.2f \t %3.2f \t %3.2f \t %3.2f\n',100*std(emp_hours), 100*std(y_IRF_prod_fric(strmatch('nhat',M_.endo_names,'exact'),:)),100*std(y_IRF_fin_fric(strmatch('nhat',M_.endo_names,'exact'),:)),100*std(y_IRF_both_fric(strmatch('nhat',M_.endo_names,'exact'),:)))
save('Jermann_Quadrini_2012_RBC_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Jermann_Quadrini_2012_RBC_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Jermann_Quadrini_2012_RBC_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Jermann_Quadrini_2012_RBC_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Jermann_Quadrini_2012_RBC_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Jermann_Quadrini_2012_RBC_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Jermann_Quadrini_2012_RBC_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
