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
M_.fname = 'Ghironi_Melitz_2005';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Ghironi_Melitz_2005.log');
M_.exo_names = 'eps_Z';
M_.exo_names_tex = '{\varepsilon_{Z}}';
M_.exo_names_long = 'Productivity shock - home economy';
M_.exo_names = char(M_.exo_names, 'eps_Z_');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon^{\star}_{Z}}');
M_.exo_names_long = char(M_.exo_names_long, 'Productivity shock - foreign economy');
M_.endo_names = 'ztilded';
M_.endo_names_tex = '{{}\tilde z_{D}}';
M_.endo_names_long = 'Average productivity level - home economy';
M_.endo_names = char(M_.endo_names, 'ztilded_');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde z^{\star}_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average productivity level - foreign economy');
M_.endo_names = char(M_.endo_names, 'ztildex');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde z_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average productivity level exporters - home economy');
M_.endo_names = char(M_.endo_names, 'ztildex_');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde z^{\star}_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average productivity level exporters - foreign economy');
M_.endo_names = char(M_.endo_names, 'zx');
M_.endo_names_tex = char(M_.endo_names_tex, '{z_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Productivity cutoff level - home economy');
M_.endo_names = char(M_.endo_names, 'zx_');
M_.endo_names_tex = char(M_.endo_names_tex, '{z^{\star}_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Productivity cutoff level - foreign economy');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, '{w}');
M_.endo_names_long = char(M_.endo_names_long, 'Real wage - home economy');
M_.endo_names = char(M_.endo_names, 'w_');
M_.endo_names_tex = char(M_.endo_names_tex, '{w^{\star}}');
M_.endo_names_long = char(M_.endo_names_long, 'Real wage - foreign economy');
M_.endo_names = char(M_.endo_names, 'rhotilded');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde \rho_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average relative prices of home producers in the home market');
M_.endo_names = char(M_.endo_names, 'rhotilded_');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde \rho^{\star}_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average relative prices of foreign producers in the foreign market');
M_.endo_names = char(M_.endo_names, 'rhotildex');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde \rho_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average relative prices of foreign exporters in the home market');
M_.endo_names = char(M_.endo_names, 'rhotildex_');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde \rho^{\star}_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average relative prices of home exporters in the foreign market');
M_.endo_names = char(M_.endo_names, 'dtilde');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde d}');
M_.endo_names_long = char(M_.endo_names_long, 'Average total profits of home and foreign firms - home economy');
M_.endo_names = char(M_.endo_names, 'dtilde_');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde d^{\star}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average total profits of home and foreign firms - foreign economy');
M_.endo_names = char(M_.endo_names, 'dtilded');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde d_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average firm profit earned from domestic sales for all home producers');
M_.endo_names = char(M_.endo_names, 'dtilded_');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde d^{\star}_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average firm profit earned from domestic sales for all foreign producers');
M_.endo_names = char(M_.endo_names, 'dtildex');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde d_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average firm export profits for all home exporters');
M_.endo_names = char(M_.endo_names, 'dtildex_');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde d^{\star}_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Average firm export profits for all foreign exporters');
M_.endo_names = char(M_.endo_names, 'Ne');
M_.endo_names_tex = char(M_.endo_names_tex, '{N_{E}}');
M_.endo_names_long = char(M_.endo_names_long, 'Mass of entrants - home economy');
M_.endo_names = char(M_.endo_names, 'Ne_');
M_.endo_names_tex = char(M_.endo_names_tex, '{N^{\star}_{E}}');
M_.endo_names_long = char(M_.endo_names_long, 'Mass of entrants - foreign economy');
M_.endo_names = char(M_.endo_names, 'Nd');
M_.endo_names_tex = char(M_.endo_names_tex, '{N_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'Number of home-producing firms - home economy');
M_.endo_names = char(M_.endo_names, 'Nd_');
M_.endo_names_tex = char(M_.endo_names_tex, '{N^{\star}_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'Number of home-producing firms - foreign economy');
M_.endo_names = char(M_.endo_names, 'Nx');
M_.endo_names_tex = char(M_.endo_names_tex, '{N_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Number of home firms exporting to foreign market');
M_.endo_names = char(M_.endo_names, 'Nx_');
M_.endo_names_tex = char(M_.endo_names_tex, '{N^{\star}_{X}}');
M_.endo_names_long = char(M_.endo_names_long, 'Number of foreign firms exporting to home market');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, '{r}');
M_.endo_names_long = char(M_.endo_names_long, 'Interest rate on holdings of bonds - home economy');
M_.endo_names = char(M_.endo_names, 'r_');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^{\star}}');
M_.endo_names_long = char(M_.endo_names_long, 'Interest rate on holdings of bonds - home economy');
M_.endo_names = char(M_.endo_names, 'vtilde');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde v}');
M_.endo_names_long = char(M_.endo_names_long, 'Present discounted value of home firms expected stream of profits');
M_.endo_names = char(M_.endo_names, 'vtilde_');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde v^{\star}}');
M_.endo_names_long = char(M_.endo_names_long, 'Present discounted value of home firms expected stream of profits');
M_.endo_names = char(M_.endo_names, 'C');
M_.endo_names_tex = char(M_.endo_names_tex, '{C}');
M_.endo_names_long = char(M_.endo_names_long, 'Consumption - home economy');
M_.endo_names = char(M_.endo_names, 'C_');
M_.endo_names_tex = char(M_.endo_names_tex, '{C^{\star}}');
M_.endo_names_long = char(M_.endo_names_long, 'Consumption - foreign economy');
M_.endo_names = char(M_.endo_names, 'Z');
M_.endo_names_tex = char(M_.endo_names_tex, '{Z}');
M_.endo_names_long = char(M_.endo_names_long, 'Aggregate labor productivity - home economy');
M_.endo_names = char(M_.endo_names, 'Z_');
M_.endo_names_tex = char(M_.endo_names_tex, '{Z^{\star}}');
M_.endo_names_long = char(M_.endo_names_long, 'Aggregate labor productivity - foreign economy');
M_.endo_names = char(M_.endo_names, 'Q');
M_.endo_names_tex = char(M_.endo_names_tex, '{Q}');
M_.endo_names_long = char(M_.endo_names_long, 'Real exchange rate - welfare based');
M_.endo_names = char(M_.endo_names, 'Qtilde');
M_.endo_names_tex = char(M_.endo_names_tex, '{{}\tilde Q}');
M_.endo_names_long = char(M_.endo_names_long, 'Real exchange rate - empirical');
M_.endo_names = char(M_.endo_names, 'TOL');
M_.endo_names_tex = char(M_.endo_names_tex, '{TOL}');
M_.endo_names_long = char(M_.endo_names_long, 'Terms of labor');
M_.endo_partitions = struct();
M_.param_names = 'theta';
M_.param_names_tex = '{\theta}';
M_.param_names_long = 'elasticity of subsitution across goods';
M_.param_names = char(M_.param_names, 'k');
M_.param_names_tex = char(M_.param_names_tex, '{k}');
M_.param_names_long = char(M_.param_names_long, 'shape parameter');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, '{\delta}');
M_.param_names_long = char(M_.param_names_long, 'exogenous exit rate');
M_.param_names = char(M_.param_names, 'gamma');
M_.param_names_tex = char(M_.param_names_tex, '{\gamma}');
M_.param_names_long = char(M_.param_names_long, 'relative risk aversion');
M_.param_names = char(M_.param_names, 'betaa');
M_.param_names_tex = char(M_.param_names_tex, '{\beta}');
M_.param_names_long = char(M_.param_names_long, 'discount factor');
M_.param_names = char(M_.param_names, 'tau');
M_.param_names_tex = char(M_.param_names_tex, '{\tau}');
M_.param_names_long = char(M_.param_names_long, 'iceberg cost');
M_.param_names = char(M_.param_names, 'zmin');
M_.param_names_tex = char(M_.param_names_tex, '{z_{min}}');
M_.param_names_long = char(M_.param_names_long, 'minimum relative prod - home');
M_.param_names = char(M_.param_names, 'zmin_');
M_.param_names_tex = char(M_.param_names_tex, '{z^{\star}_{min}}');
M_.param_names_long = char(M_.param_names_long, 'minimum relative prod - foreign');
M_.param_names = char(M_.param_names, 'fe');
M_.param_names_tex = char(M_.param_names_tex, '{f_{E}}');
M_.param_names_long = char(M_.param_names_long, 'entry cost - home');
M_.param_names = char(M_.param_names, 'fe_');
M_.param_names_tex = char(M_.param_names_tex, '{f^{\star}_{E}}');
M_.param_names_long = char(M_.param_names_long, 'entry cost - foreign');
M_.param_names = char(M_.param_names, 'fx');
M_.param_names_tex = char(M_.param_names_tex, '{f_{X}}');
M_.param_names_long = char(M_.param_names_long, 'fixed cost of exporting - home');
M_.param_names = char(M_.param_names, 'fx_');
M_.param_names_tex = char(M_.param_names_tex, '{f^{\star}_{X}}');
M_.param_names_long = char(M_.param_names_long, 'fixed cost of exporting - foreign');
M_.param_names = char(M_.param_names, 'L');
M_.param_names_tex = char(M_.param_names_tex, '{L}');
M_.param_names_long = char(M_.param_names_long, 'Labour supply - home');
M_.param_names = char(M_.param_names, 'L_');
M_.param_names_tex = char(M_.param_names_tex, '{L^{\star}}');
M_.param_names_long = char(M_.param_names_long, 'Labour supply - foreign');
M_.param_names = char(M_.param_names, 'rhoZ');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{Z}}');
M_.param_names_long = char(M_.param_names_long, 'Productivity AR process parameter - home');
M_.param_names = char(M_.param_names, 'rhoZ_');
M_.param_names_tex = char(M_.param_names_tex, '{\rho^{\star}_{Z}}');
M_.param_names_long = char(M_.param_names_long, 'Productivity AR process parameter - foreign');
M_.param_names = char(M_.param_names, 'fx_share');
M_.param_names_tex = char(M_.param_names_tex, '{FCshare}');
M_.param_names_long = char(M_.param_names_long, 'Share of fixed cost as share of flow value of entry cost');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 35;
M_.param_nbr = 17;
M_.orig_endo_nbr = 35;
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
erase_compiled_function('Ghironi_Melitz_2005_static');
erase_compiled_function('Ghironi_Melitz_2005_dynamic');
M_.orig_eq_nbr = 35;
M_.eq_nbr = 35;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 7 0;
 0 8 0;
 0 9 0;
 0 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 42;
 0 20 43;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 1 25 0;
 2 26 0;
 3 27 0;
 4 28 0;
 0 29 0;
 0 30 0;
 0 31 0;
 0 32 0;
 0 33 44;
 0 34 45;
 0 35 46;
 0 36 47;
 5 37 0;
 6 38 0;
 0 39 0;
 0 40 0;
 0 41 0;]';
M_.nstatic = 23;
M_.nfwrd   = 6;
M_.npred   = 6;
M_.nboth   = 0;
M_.nsfwrd   = 6;
M_.nspred   = 6;
M_.ndynamic   = 12;
M_.equations_tags = {
  1 , 'name' , 'Price indices - home economy' ;
  2 , 'name' , 'Price indices - foreign economy' ;
  3 , 'name' , 'Average real domestic price - home economy' ;
  4 , 'name' , 'Average real domestic price - foreign economy' ;
  5 , 'name' , 'Average real export price - home economy' ;
  6 , 'name' , 'Average real export price - foreign economy' ;
  7 , 'name' , 'Average total profits of home firms' ;
  8 , 'name' , 'Average total profits of foreign firms' ;
  9 , 'name' , 'Average profits earned from domestic sales - home economy' ;
  10 , 'name' , 'Average profits earned from domestic sales - foreign economy' ;
  11 , 'name' , 'Free entry condition - home economy' ;
  12 , 'name' , 'Free entry condition - foreign economy' ;
  13 , 'name' , 'Zero-profit export cutoffs - home economy' ;
  14 , 'name' , 'Zero-profit export cutoffs - foreign economy' ;
  15 , 'name' , 'Share of exporting firms - home economy' ;
  16 , 'name' , 'Share of exporting firms - foreign economy' ;
  17 , 'name' , 'Number of firms - home economy' ;
  18 , 'name' , 'Number of firms - home economy' ;
  19 , 'name' , 'Euler equation (bonds) - home economy' ;
  20 , 'name' , 'Euler equation (bonds) - foreign economy' ;
  21 , 'name' , 'Euler equation (shares) - home economy' ;
  22 , 'name' , 'Euler equation (shares) - foreign economy' ;
  23 , 'name' , 'Aggregate accounting - home economy' ;
  24 , 'name' , 'Aggregate accounting - foreign economy' ;
  25 , 'name' , 'Real exchange rate - welfare based' ;
  26 , 'name' , 'Definition terms of labor (eq. (4))' ;
  27 , 'name' , 'Link between empirical and theoretical exchange rate measures (p. 880)' ;
  28 , 'name' , 'Aggregate productivity - home economy' ;
  29 , 'name' , 'Aggregate productivity - foreign economy' ;
  30 , 'name' , 'Relation average and cutoff productivity - home economy' ;
  31 , 'name' , 'Relation average and cutoff productivity - foreign economy' ;
  32 , 'name' , 'Average productivity - home economy' ;
  33 , 'name' , 'Average productivity - foreign economy' ;
  34 , 'name' , 'Export cut-off productivities - home economy' ;
  35 , 'name' , 'Export cut-off productivities - foreign economy' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(35, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(17, 1);
M_.NNZDerivatives = [139; -1; -1];
M_.params( 5 ) = 0.99;
betaa = M_.params( 5 );
M_.params( 4 ) = 2.0;
gamma = M_.params( 4 );
M_.params( 3 ) = 0.025;
delta = M_.params( 3 );
M_.params( 1 ) = 3.8;
theta = M_.params( 1 );
M_.params( 2 ) = 3.4;
k = M_.params( 2 );
M_.params( 6 ) = 1.3;
tau = M_.params( 6 );
M_.params( 7 ) = 1.0;
zmin = M_.params( 7 );
M_.params( 8 ) = 1.0;
zmin_ = M_.params( 8 );
M_.params( 9 ) = 1.0;
fe = M_.params( 9 );
M_.params( 10 ) = 1.0;
fe_ = M_.params( 10 );
M_.params( 13 ) = 1.0;
L = M_.params( 13 );
M_.params( 14 ) = 1.0;
L_ = M_.params( 14 );
M_.params( 15 ) = 0.9;
rhoZ = M_.params( 15 );
M_.params( 16 ) = 0.9;
rhoZ_ = M_.params( 16 );
M_.params( 17 ) = 0.235;
fx_share = M_.params( 17 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.0001;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.hp_filter = 1600;
options_.irf = 100;
options_.loglinear = 1;
options_.nograph = 1;
options_.order = 1;
var_list_ = char('C','C_','Ne','Nd','zx','Nx','Ne_','Nd_','zx_','Nx_','TOL','Qtilde','Q','Z');
info = stoch_simul(var_list_);
figure('Name','Replication of Figure III');
Horizon = (1:length(oo_.irfs.C_eps_Z)+1)/4;
zeroline = (zeros(length(oo_.irfs.C_eps_Z)+1,1))';
subplot(4,4,1)
plot(Horizon,[0 ; (C_eps_Z)*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('C','Fontsize',12);
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([0 0.5])
subplot(4,4,2)
plot(Horizon,[0 ; (C__eps_Z)*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('C*','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.05 0.05]);
subplot(4,4,3)
plot(Horizon,[0 ; (Ne_eps_Z)*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('Ne','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.25 4]);
subplot(4,4,4)
plot(Horizon,[0 ; Nd_eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('Nd','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.05 0.55]); 
subplot(4,4,5)
plot(Horizon,[0 ; zx_eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('z_{x}','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.05 0.17]);
subplot(4,4,6)
plot(Horizon,[0 ; Nx_eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('Nx','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.1 0.2]);
subplot(4,4,7)
plot(Horizon,[0 ; Ne__eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('Ne*','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.05 0.05]);
subplot(4,4,8)
plot(Horizon,[0 ; Nd__eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('Nd*','Fontsize',12)    
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.05 0.05]); 
subplot(4,4,9)
plot(Horizon,[0 ; zx__eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('z_{x}*','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.05 0.05]);
subplot(4,4,10)
plot(Horizon,[0 ; Nx__eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('Nx*','Fontsize',12)        
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([0 0.15]);
subplot(4,4,11)
plot(Horizon,[0 ; TOL_eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('TOL','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.12 0.07]);
subplot(4,4,12)
plot(Horizon,[0 ; Qtilde_eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('Q~','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.12 0.05]);
subplot(4,4,13)
plot(Horizon,[0 ; Q_eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('Q','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([-0.05 0.055]);
subplot(4,4,14)
plot(Horizon,[0 ; Z_eps_Z*100],'Color','r','LineWidth',2.5,'LineStyle','-'); hold on
plot(Horizon,zeroline,'Color','k','LineWidth',1.0);
title('Z','Fontsize',12)
ylabel('% deviation from SS', 'FontSize', 8)
xlim([0 max(Horizon)])
ylim([0 1]);
save('Ghironi_Melitz_2005_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Ghironi_Melitz_2005_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Ghironi_Melitz_2005_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Ghironi_Melitz_2005_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Ghironi_Melitz_2005_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Ghironi_Melitz_2005_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Ghironi_Melitz_2005_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
