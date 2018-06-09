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
M_.fname = 'Ascari_Sbordone_2014';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Ascari_Sbordone_2014.log');
M_.exo_names = 'e_v';
M_.exo_names_tex = '{\varepsilon_\nu}';
M_.exo_names_long = 'monetary policy shock';
M_.exo_names = char(M_.exo_names, 'e_a');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_A}');
M_.exo_names_long = char(M_.exo_names_long, 'TFP shock');
M_.exo_names = char(M_.exo_names, 'e_zeta');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon_\zeta}');
M_.exo_names_long = char(M_.exo_names_long, 'preference shock');
M_.endo_names = 'y';
M_.endo_names_tex = 'y';
M_.endo_names_long = 'output';
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'interest rate');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, '\pi');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'N');
M_.endo_names_tex = char(M_.endo_names_tex, 'N');
M_.endo_names_long = char(M_.endo_names_long, 'hours worked');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names_long = char(M_.endo_names_long, 'real wage');
M_.endo_names = char(M_.endo_names, 'p_star');
M_.endo_names_tex = char(M_.endo_names_tex, '{p^*}');
M_.endo_names_long = char(M_.endo_names_long, 'target price');
M_.endo_names = char(M_.endo_names, 'psi');
M_.endo_names_tex = char(M_.endo_names_tex, '\psi');
M_.endo_names_long = char(M_.endo_names_long, 'recursive auxiliary variable 1 price setting');
M_.endo_names = char(M_.endo_names, 'phi');
M_.endo_names_tex = char(M_.endo_names_tex, '\phi');
M_.endo_names_long = char(M_.endo_names_long, 'recursive auxiliary variable 2 price setting');
M_.endo_names = char(M_.endo_names, 'A');
M_.endo_names_tex = char(M_.endo_names_tex, 'A');
M_.endo_names_long = char(M_.endo_names_long, 'TFP');
M_.endo_names = char(M_.endo_names, 'MC_real');
M_.endo_names_tex = char(M_.endo_names_tex, 'MC');
M_.endo_names_long = char(M_.endo_names_long, 'real marginal costs');
M_.endo_names = char(M_.endo_names, 'real_interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'real interest rate');
M_.endo_names = char(M_.endo_names, 'zeta');
M_.endo_names_tex = char(M_.endo_names_tex, '\zeta');
M_.endo_names_long = char(M_.endo_names_long, 'preference shock');
M_.endo_names = char(M_.endo_names, 's');
M_.endo_names_tex = char(M_.endo_names_tex, 's');
M_.endo_names_long = char(M_.endo_names_long, 'price dispersion term');
M_.endo_names = char(M_.endo_names, 'v');
M_.endo_names_tex = char(M_.endo_names_tex, '\nu');
M_.endo_names_long = char(M_.endo_names_long, 'monetary policy shock');
M_.endo_names = char(M_.endo_names, 'A_tilde');
M_.endo_names_tex = char(M_.endo_names_tex, '{\tilde A}');
M_.endo_names_long = char(M_.endo_names_long, 'effective aggregate productivity');
M_.endo_names = char(M_.endo_names, 'Utility');
M_.endo_names_tex = char(M_.endo_names_tex, 'U');
M_.endo_names_long = char(M_.endo_names_long, 'lifetime utility, recursively defined');
M_.endo_names = char(M_.endo_names, 'Average_markup');
M_.endo_names_tex = char(M_.endo_names_tex, 'Average\_markup');
M_.endo_names_long = char(M_.endo_names_long, 'Average_markup');
M_.endo_names = char(M_.endo_names, 'Marginal_markup');
M_.endo_names_tex = char(M_.endo_names_tex, 'Marginal\_markup');
M_.endo_names_long = char(M_.endo_names_long, 'Marginal_markup');
M_.endo_names = char(M_.endo_names, 'price_adjustment_gap');
M_.endo_names_tex = char(M_.endo_names_tex, 'price\_adjustment\_gap');
M_.endo_names_long = char(M_.endo_names_long, 'price_adjustment_gap');
M_.endo_partitions = struct();
M_.param_names = 'trend_inflation';
M_.param_names_tex = 'trend\_inflation';
M_.param_names_long = 'trend_inflation';
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, '\beta');
M_.param_names_long = char(M_.param_names_long, 'discount factor');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, '\alpha');
M_.param_names_long = char(M_.param_names_long, 'capital share');
M_.param_names = char(M_.param_names, 'phi_par');
M_.param_names_tex = char(M_.param_names_tex, '\varphi');
M_.param_names_long = char(M_.param_names_long, 'Frisch elasticity');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, '\theta');
M_.param_names_long = char(M_.param_names_long, 'Calvo parameter');
M_.param_names = char(M_.param_names, 'sigma');
M_.param_names_tex = char(M_.param_names_tex, '\sigma');
M_.param_names_long = char(M_.param_names_long, 'Risk aversion');
M_.param_names = char(M_.param_names, 'epsilon');
M_.param_names_tex = char(M_.param_names_tex, '\varepsilon');
M_.param_names_long = char(M_.param_names_long, 'Elasticity of substitution');
M_.param_names = char(M_.param_names, 'Pi_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar \pi}');
M_.param_names_long = char(M_.param_names_long, 'gross quarterly steady state inflation');
M_.param_names = char(M_.param_names, 'rho_v');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_\nu}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation of monetary shock');
M_.param_names = char(M_.param_names, 'rho_a');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_a}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation of technology shock');
M_.param_names = char(M_.param_names, 'rho_zeta');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_\zeta}');
M_.param_names_long = char(M_.param_names_long, 'autocorrelation of preference shock');
M_.param_names = char(M_.param_names, 'phi_pi');
M_.param_names_tex = char(M_.param_names_tex, '{\phi_\pi}');
M_.param_names_long = char(M_.param_names_long, 'Taylor rule feedback inflation');
M_.param_names = char(M_.param_names, 'phi_y');
M_.param_names_tex = char(M_.param_names_tex, '{\phi_y}');
M_.param_names_long = char(M_.param_names_long, 'Taylor rule output');
M_.param_names = char(M_.param_names, 'Y_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar Y}');
M_.param_names_long = char(M_.param_names_long, 'steady state output, set in steady state model block');
M_.param_names = char(M_.param_names, 'var_rho');
M_.param_names_tex = char(M_.param_names_tex, '{\varrho}');
M_.param_names_long = char(M_.param_names_long, 'degree of indexing');
M_.param_names = char(M_.param_names, 'i_bar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar i}');
M_.param_names_long = char(M_.param_names_long, 'steady state interest rate, set in steady state model block');
M_.param_names = char(M_.param_names, 'd_n');
M_.param_names_tex = char(M_.param_names_tex, '{d_n}');
M_.param_names_long = char(M_.param_names_long, 'labor disutility parameter');
M_.param_names = char(M_.param_names, 'rho_i');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_i}');
M_.param_names_long = char(M_.param_names_long, 'interest rate smoothing parameter');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 19;
M_.param_nbr = 18;
M_.orig_endo_nbr = 19;
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
erase_compiled_function('Ascari_Sbordone_2014_static');
erase_compiled_function('Ascari_Sbordone_2014_dynamic');
M_.orig_eq_nbr = 19;
M_.eq_nbr = 19;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 7 26;
 1 8 0;
 2 9 27;
 0 10 0;
 0 11 0;
 0 12 0;
 0 13 28;
 0 14 29;
 3 15 0;
 0 16 0;
 0 17 0;
 4 18 0;
 5 19 0;
 6 20 0;
 0 21 0;
 0 22 30;
 0 23 0;
 0 24 0;
 0 25 0;]';
M_.nstatic = 9;
M_.nfwrd   = 4;
M_.npred   = 5;
M_.nboth   = 1;
M_.nsfwrd   = 5;
M_.nspred   = 6;
M_.ndynamic   = 10;
M_.equations_tags = {
  1 , 'name' , '1. Euler equation' ;
  2 , 'name' , '2. Labor FOC' ;
  3 , 'name' , '3. Optimal price' ;
  4 , 'name' , '4. FOC price setting' ;
  5 , 'name' , '5. Recursive LOM price setting for psi' ;
  6 , 'name' , '6. Recursive LOM price setting for phi' ;
  7 , 'name' , '7. Aggregate production function' ;
  8 , 'name' , '8. LOM price dispersion' ;
  9 , 'name' , '9. Monetary policy rule; reflects FN69' ;
  10 , 'name' , '10. Definition real marginal costs' ;
  11 , 'name' , '11. Definition real interest rate' ;
  12 , 'name' , '12. Define utility, do not log it as it can be negative; this is the log case' ;
  13 , 'name' , '13. Monetary shock' ;
  14 , 'name' , '14. Technology shock' ;
  15 , 'name' , '15. Preference shock' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(19, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(18, 1);
M_.NNZDerivatives = [71; -1; -1];
beta_ss = 0.99;
alpha_ss = 0;
theta_ss = 0.75;
epsilon_ss = 10;
sigma_ss = 1; 
phi_par_ss=1;
var_rho_ss = 0;
trend_inflation_ss=0;
M_.params( 8 ) = 1;
Pi_bar = M_.params( 8 );
p_star_ss=((1-theta_ss*Pi_bar^((epsilon_ss-1)*(1-var_rho_ss)))/(1-theta_ss))^(1/(1-epsilon_ss));
s_ss=(1-theta_ss)/(1-theta_ss*Pi_bar^((epsilon_ss*(1-var_rho_ss))/(1-alpha_ss)))*p_star_ss^(-epsilon_ss/(1^-alpha_ss));
N_ss=1/3;
y_ss=(N_ss/s_ss)^(1-alpha_ss);
A_ss=1;
phi_ss=y_ss^(1-sigma_ss)/(1-theta_ss*beta_ss*Pi_bar^((epsilon_ss-1)*(1-var_rho_ss)));
psi_ss=p_star_ss^(1+epsilon_ss*alpha_ss/(1-alpha_ss))*phi_ss/(epsilon_ss/((epsilon_ss-1)*(1-alpha_ss)));
w_ss=psi_ss*(1-theta_ss*beta_ss*Pi_bar^((epsilon_ss*(1-var_rho_ss))/(1-alpha_ss)))/(A_ss^(-1/(1-alpha_ss))*y_ss^(1/(1-alpha_ss)-sigma_ss));
M_.params( 17 ) = w_ss/(N_ss^phi_par_ss*y_ss^sigma_ss);
d_n = M_.params( 17 );
M_.params( 1 ) = 0;
trend_inflation = M_.params( 1 );
M_.params( 2 ) = 0.99;
beta = M_.params( 2 );
M_.params( 3 ) = 0;
alpha = M_.params( 3 );
M_.params( 5 ) = 0.75;
theta = M_.params( 5 );
M_.params( 7 ) = 10;
epsilon = M_.params( 7 );
M_.params( 6 ) = 1;
sigma = M_.params( 6 );
M_.params( 9 ) = 0;
rho_v = M_.params( 9 );
M_.params( 10 ) = 0;
rho_a = M_.params( 10 );
M_.params( 11 ) = 0;
rho_zeta = M_.params( 11 );
M_.params( 4 ) = 1;
phi_par = M_.params( 4 );
M_.params( 12 ) = 2;
phi_pi = M_.params( 12 );
M_.params( 13 ) = 0.125;
phi_y = M_.params( 13 );
M_.params( 18 ) = 0.8;
rho_i = M_.params( 18 );
M_.params( 15 ) = 0;
var_rho = M_.params( 15 );
options_.qz_criterium = 1+1e-6; 
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (0)^2;
M_.Sigma_e(3, 3) = (0)^2;
set_param_value('trend_inflation',0)
options_.impulse_responses.plot_threshold = 0;
options_.irf = 7;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('y','pi','real_interest','s','i','v');
info = stoch_simul(var_list_);
irf_0_trend_infl=oo_.irfs;
set_param_value('trend_inflation',2)
options_.impulse_responses.plot_threshold = 0;
options_.irf = 7;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('y','pi','real_interest','s','i','v');
info = stoch_simul(var_list_);
irf_2_trend_infl=oo_.irfs;
set_param_value('trend_inflation',4)
options_.impulse_responses.plot_threshold = 0;
options_.irf = 7;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('y','pi','real_interest','s','i','v');
info = stoch_simul(var_list_);
irf_4_trend_infl=oo_.irfs;
set_param_value('trend_inflation',6)
options_.impulse_responses.plot_threshold = 0;
options_.irf = 7;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('y','pi','real_interest','s','i','v');
info = stoch_simul(var_list_);
irf_6_trend_infl=oo_.irfs;
figure('Name','Figure 14: Impulse Response Functions to a 1 Percent Positive Monetary Policy Shock ')
subplot(2,2,1)
plot(0:options_.irf,[0 irf_0_trend_infl.y_e_v],'k-',0:options_.irf,[0 irf_2_trend_infl.y_e_v],'b--',0:options_.irf,[0 irf_4_trend_infl.y_e_v],'r-.',0:options_.irf,[0 irf_6_trend_infl.y_e_v],'*-')
ylim([-2.5 0.5]); title('Output')
subplot(2,2,2)
plot(0:options_.irf,[0 irf_0_trend_infl.pi_e_v],'k-',0:options_.irf,[0 irf_2_trend_infl.pi_e_v],'b--',0:options_.irf,[0 irf_4_trend_infl.pi_e_v],'r-.',0:options_.irf,[0 irf_6_trend_infl.pi_e_v],'*-')
ylim([-0.80 0]); title('Inflation')
subplot(2,2,3)
plot(0:options_.irf,[0 irf_0_trend_infl.real_interest_e_v],'k-',0:options_.irf,[0 irf_2_trend_infl.real_interest_e_v],'b--',0:options_.irf,[0 irf_4_trend_infl.real_interest_e_v],'r-.',0:options_.irf,[0 irf_6_trend_infl.real_interest_e_v],'*-')
ylim([0 1.4]);title('Real Interest Rate')
subplot(2,2,4)
hh=plot(0:options_.irf,[0 irf_0_trend_infl.s_e_v],'k-',0:options_.irf,[0 irf_2_trend_infl.s_e_v],'b--',0:options_.irf,[0 irf_4_trend_infl.s_e_v],'r-.',0:options_.irf,[0 irf_6_trend_infl.s_e_v],'*-');
ylim([-0.8 0]);title('Price Dispersion')
leg_handle=legend(hh,'pi=0%','pi=2%','pi=4%','pi=6%');
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(2, 2) = 0.2025;
M_.Sigma_e(1, 1) = (0)^2;
M_.Sigma_e(3, 3) = (0)^2;
set_param_value('trend_inflation',0);
set_param_value('phi_par',1);
set_param_value('rho_a',0.95);
set_param_value('rho_i',0); 
set_param_value('phi_pi',1.5);
set_param_value('phi_y',0.5/4);
options_.irf = 0;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('y','pi');
info = stoch_simul(var_list_);
output_var_low_target=oo_.var(strmatch('y',var_list_,'exact'),strmatch('y',var_list_,'exact'));
inflation_var_low_target=oo_.var(strmatch('pi',var_list_,'exact'),strmatch('pi',var_list_,'exact'));
set_param_value('trend_inflation',4);
options_.irf = 0;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('y','pi');
info = stoch_simul(var_list_);
output_var_high_target=oo_.var(strmatch('y',var_list_,'exact'),strmatch('y',var_list_,'exact'));
inflation_var_high_target=oo_.var(strmatch('pi',var_list_,'exact'),strmatch('pi',var_list_,'exact'));
fprintf('Output Standard Deviation: \t %4.3f \t %4.3f\n',sqrt(output_var_low_target),sqrt(output_var_high_target));
fprintf('Inflation Standard Deviation: \t %4.3f \t %4.3f\n',sqrt(inflation_var_low_target),sqrt(inflation_var_high_target))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Generate Figure 7: The Cost of Price Dispersion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure('Name','The Cost of Price Dispersion')
    trend_inflation_vector=[2,4];
    theta_vector=linspace(0.5,0.87,50);
    output_loss=NaN(length(theta_vector),2);
    for trend_inflation_iter=1:2
        set_param_value('trend_inflation',trend_inflation_vector(trend_inflation_iter));
        for iter=1:length(theta_vector)
            set_param_value('theta',theta_vector(iter));
            steady;
            output_loss(iter,trend_inflation_iter)=oo_.steady_state(strmatch('A_tilde',M_.endo_names,'exact'))*100;
        end
    end    
    subplot(1,3,1)
    plot(theta_vector,output_loss(:,1)-output_loss(1,1),'-',theta_vector,output_loss(:,2)-output_loss(1,2),'--'); %normalize relative to first value
    xlabel('theta')
    
    set_param_value('theta',0.75);
    trend_inflation_vector=[2,4];
    epsilon_vector=linspace(1.01,14,50);
    output_loss=NaN(length(epsilon_vector),2);
    for trend_inflation_iter=1:2
        set_param_value('trend_inflation',trend_inflation_vector(trend_inflation_iter));
        for iter=1:length(epsilon_vector)
            set_param_value('epsilon',epsilon_vector(iter));
            steady;
            output_loss(iter,trend_inflation_iter)=oo_.steady_state(strmatch('A_tilde',M_.endo_names,'exact'))*100;%(1/exp(oo_.steady_state(strmatch('s',M_.endo_names,'exact')))-1)*100;
        end
    end    
    subplot(1,3,2)
    plot(epsilon_vector,output_loss(:,1)-output_loss(1,1),'-',epsilon_vector,output_loss(:,2)-output_loss(1,2),'--'); %normalize relative to first value
    xlabel('epsilon')
    
    set_param_value('theta',0.75); %reset to baseline
    set_param_value('epsilon',10); %reset to baseline
    trend_inflation_vector=0:0.5:8;
    output_loss=NaN(length(trend_inflation_vector),1);
    for iter=1:length(trend_inflation_vector)
        set_param_value('trend_inflation',trend_inflation_vector(iter));
        steady;
        output_loss(iter,1)=oo_.steady_state(strmatch('A_tilde',M_.endo_names,'exact'))*100;
    end
    subplot(1,3,3)
    plot(trend_inflation_vector,output_loss)
    xlabel('Trend Inflation')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Generate Figure 8: Trend Inflation and Steady State Variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
    figure('Name','Trend Inflation and Steady State Variables')
    trend_inflation_vector=0:0.5:8;
    utility=NaN(length(trend_inflation_vector),1);
    output=NaN(length(trend_inflation_vector),1);
    marg_markup=NaN(length(trend_inflation_vector),1);
    ave_markup=NaN(length(trend_inflation_vector),1);
    price_adjust_gap=NaN(length(trend_inflation_vector),1);
    for iter=1:length(trend_inflation_vector)
        set_param_value('trend_inflation',trend_inflation_vector(iter));
        steady;
        utility(iter,1)=oo_.steady_state(strmatch('Utility',M_.endo_names,'exact'));
        output(iter,1)=oo_.steady_state(strmatch('y',M_.endo_names,'exact'));
        marg_markup(iter,1)=oo_.steady_state(strmatch('Marginal_markup',M_.endo_names,'exact'));
        ave_markup(iter,1)=oo_.steady_state(strmatch('Average_markup',M_.endo_names,'exact'));
        marg_markup_eq_37(iter,1)=log(epsilon/(epsilon-1)*(1-beta*theta*(M_.params(strmatch('Pi_bar',M_.param_names,'exact')))^(epsilon-1))/(1-beta*theta*(M_.params(strmatch('Pi_bar',M_.param_names,'exact')))^(epsilon)));
        price_adjust_gap(iter,1)=oo_.steady_state(strmatch('price_adjustment_gap',M_.endo_names,'exact'));
    end
    if max(abs(marg_markup-marg_markup_eq_37))>1e-8
        error('Wrong results')
    end
    subplot(1,3,1)
    plot(trend_inflation_vector,(output-output(1,1))*100)
    xlabel('Trend Inflation')
    ylabel('Steady state output')
    subplot(1,3,2)
    plot(trend_inflation_vector,(ave_markup-ave_markup(1,1))*100,'-',trend_inflation_vector,(marg_markup-marg_markup(1,1))*100,'--',trend_inflation_vector,(price_adjust_gap-price_adjust_gap(1,1))*100,'.')
    xlabel('Trend Inflation')
    ylabel('SS price adj. gap, marg. and ave. markup')
    subplot(1,3,3)
    plot(trend_inflation_vector,(utility-utility(1,1))./abs(utility(1,1))*100)
    xlabel('Trend Inflation')
    ylabel('Steady state welfare')
    
set_param_value('phi_par',1); 
set_param_value('rho_i',0); 
set_param_value('theta',0.75); 
set_param_value('epsilon',10); 
phi_pi_vec=linspace(0,5,200);
phi_y_vec=linspace(-1,5,200);
[phi_pi_mat,phi_y_mat]=meshgrid(phi_pi_vec,phi_y_vec);
trend_inflation_vector=[0,2,4,6,8];
Z_plot_total=zeros(size(phi_pi_mat));
for trend_inflation_iter=1:length(trend_inflation_vector)
set_param_value('trend_inflation',trend_inflation_vector(trend_inflation_iter));
info_mat=NaN(size(phi_pi_mat));
for phi_pi_iter=1:length(phi_pi_vec)
for phi_y_iter=1:length(phi_y_vec)
set_param_value('phi_pi',phi_pi_mat(phi_pi_iter,phi_y_iter));
set_param_value('phi_y',phi_y_mat(phi_pi_iter,phi_y_iter));
[dr,info]=resol(0,M_,options_,oo_);
info_mat(phi_pi_iter,phi_y_iter)=info(1);
end
end
Z_plot=zeros(size(info_mat));
Z_plot(info_mat==0)=1;
figure
contourf(phi_pi_mat,phi_y_mat,Z_plot,1)
Z_plot_total(info_mat==0)=trend_inflation_iter;
xlabel('\phi_\pi')
ylabel('\phi_y')
title([num2str(trend_inflation_vector(trend_inflation_iter)) '%'])
end    
figure('Name','Figure 11: The Determinacy Region and Trend Inflation')
contourf(phi_pi_mat,phi_y_mat,Z_plot_total,5);
colormap(hot);
save('Ascari_Sbordone_2014_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Ascari_Sbordone_2014_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Ascari_Sbordone_2014_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Ascari_Sbordone_2014_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Ascari_Sbordone_2014_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Ascari_Sbordone_2014_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Ascari_Sbordone_2014_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
disp('Note: 16 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
