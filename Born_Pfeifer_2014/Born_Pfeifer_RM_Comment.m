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
M_.fname = 'Born_Pfeifer_RM_Comment';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Born_Pfeifer_RM_Comment.log');
M_.exo_names = 'u_x';
M_.exo_names_tex = 'u\_x';
M_.exo_names_long = 'u_x';
M_.exo_names = char(M_.exo_names, 'u_tb');
M_.exo_names_tex = char(M_.exo_names_tex, 'u\_tb');
M_.exo_names_long = char(M_.exo_names_long, 'u_tb');
M_.exo_names = char(M_.exo_names, 'u_r');
M_.exo_names_tex = char(M_.exo_names_tex, 'u\_r');
M_.exo_names_long = char(M_.exo_names_long, 'u_r');
M_.exo_names = char(M_.exo_names, 'u_sigma_tb');
M_.exo_names_tex = char(M_.exo_names_tex, 'u\_sigma\_tb');
M_.exo_names_long = char(M_.exo_names_long, 'u_sigma_tb');
M_.exo_names = char(M_.exo_names, 'u_sigma_r');
M_.exo_names_tex = char(M_.exo_names_tex, 'u\_sigma\_r');
M_.exo_names_long = char(M_.exo_names_long, 'u_sigma_r');
M_.endo_names = 'sigma_r';
M_.endo_names_tex = 'sigma\_r';
M_.endo_names_long = 'sigma_r';
M_.endo_names = char(M_.endo_names, 'sigma_tb');
M_.endo_names_tex = char(M_.endo_names_tex, 'sigma\_tb');
M_.endo_names_long = char(M_.endo_names_long, 'sigma_tb');
M_.endo_names = char(M_.endo_names, 'eps_r');
M_.endo_names_tex = char(M_.endo_names_tex, 'eps\_r');
M_.endo_names_long = char(M_.endo_names_long, 'eps_r');
M_.endo_names = char(M_.endo_names, 'eps_tb');
M_.endo_names_tex = char(M_.endo_names_tex, 'eps\_tb');
M_.endo_names_long = char(M_.endo_names_long, 'eps_tb');
M_.endo_names = char(M_.endo_names, 'X');
M_.endo_names_tex = char(M_.endo_names_tex, 'X');
M_.endo_names_long = char(M_.endo_names_long, 'X');
M_.endo_names = char(M_.endo_names, 'D');
M_.endo_names_tex = char(M_.endo_names_tex, 'D');
M_.endo_names_long = char(M_.endo_names_long, 'D');
M_.endo_names = char(M_.endo_names, 'K');
M_.endo_names_tex = char(M_.endo_names_tex, 'K');
M_.endo_names_long = char(M_.endo_names_long, 'K');
M_.endo_names = char(M_.endo_names, 'lambda');
M_.endo_names_tex = char(M_.endo_names_tex, 'lambda');
M_.endo_names_long = char(M_.endo_names_long, 'lambda');
M_.endo_names = char(M_.endo_names, 'C');
M_.endo_names_tex = char(M_.endo_names_tex, 'C');
M_.endo_names_long = char(M_.endo_names_long, 'C');
M_.endo_names = char(M_.endo_names, 'H');
M_.endo_names_tex = char(M_.endo_names_tex, 'H');
M_.endo_names_long = char(M_.endo_names_long, 'H');
M_.endo_names = char(M_.endo_names, 'Y');
M_.endo_names_tex = char(M_.endo_names_tex, 'Y');
M_.endo_names_long = char(M_.endo_names_long, 'Y');
M_.endo_names = char(M_.endo_names, 'I');
M_.endo_names_tex = char(M_.endo_names_tex, 'I');
M_.endo_names_long = char(M_.endo_names_long, 'I');
M_.endo_names = char(M_.endo_names, 'phi');
M_.endo_names_tex = char(M_.endo_names_tex, 'phi');
M_.endo_names_long = char(M_.endo_names_long, 'phi');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'NX');
M_.endo_names_tex = char(M_.endo_names_tex, 'NX');
M_.endo_names_long = char(M_.endo_names_long, 'NX');
M_.endo_names = char(M_.endo_names, 'NX_Y');
M_.endo_names_tex = char(M_.endo_names_tex, 'NX\_Y');
M_.endo_names_long = char(M_.endo_names_long, 'NX_Y');
M_.endo_names = char(M_.endo_names, 'CA');
M_.endo_names_tex = char(M_.endo_names_tex, 'CA');
M_.endo_names_long = char(M_.endo_names_long, 'CA');
M_.endo_names = char(M_.endo_names, 'CA_Y');
M_.endo_names_tex = char(M_.endo_names_tex, 'CA\_Y');
M_.endo_names_long = char(M_.endo_names_long, 'CA_Y');
M_.endo_names = char(M_.endo_names, 'NX_Y_quarterly');
M_.endo_names_tex = char(M_.endo_names_tex, 'NX\_Y\_quarterly');
M_.endo_names_long = char(M_.endo_names_long, 'NX_Y_quarterly');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_1');
M_.endo_partitions = struct();
M_.param_names = 'r_bar';
M_.param_names_tex = 'r\_bar';
M_.param_names_long = 'r_bar';
M_.param_names = char(M_.param_names, 'rho_eps_r');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_eps\_r');
M_.param_names_long = char(M_.param_names_long, 'rho_eps_r');
M_.param_names = char(M_.param_names, 'sigma_r_bar');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_r\_bar');
M_.param_names_long = char(M_.param_names_long, 'sigma_r_bar');
M_.param_names = char(M_.param_names, 'rho_sigma_r');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_sigma\_r');
M_.param_names_long = char(M_.param_names_long, 'rho_sigma_r');
M_.param_names = char(M_.param_names, 'eta_r');
M_.param_names_tex = char(M_.param_names_tex, 'eta\_r');
M_.param_names_long = char(M_.param_names_long, 'eta_r');
M_.param_names = char(M_.param_names, 'rho_eps_tb');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_eps\_tb');
M_.param_names_long = char(M_.param_names_long, 'rho_eps_tb');
M_.param_names = char(M_.param_names, 'sigma_tb_bar');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_tb\_bar');
M_.param_names_long = char(M_.param_names_long, 'sigma_tb_bar');
M_.param_names = char(M_.param_names, 'rho_sigma_tb');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_sigma\_tb');
M_.param_names_long = char(M_.param_names_long, 'rho_sigma_tb');
M_.param_names = char(M_.param_names, 'eta_tb');
M_.param_names_tex = char(M_.param_names_tex, 'eta\_tb');
M_.param_names_long = char(M_.param_names_long, 'eta_tb');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, 'delta');
M_.param_names_long = char(M_.param_names_long, 'delta');
M_.param_names = char(M_.param_names, 'alppha');
M_.param_names_tex = char(M_.param_names_tex, 'alppha');
M_.param_names_long = char(M_.param_names_long, 'alppha');
M_.param_names = char(M_.param_names, 'nu');
M_.param_names_tex = char(M_.param_names_tex, 'nu');
M_.param_names_long = char(M_.param_names_long, 'nu');
M_.param_names = char(M_.param_names, 'rho_x');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_x');
M_.param_names_long = char(M_.param_names_long, 'rho_x');
M_.param_names = char(M_.param_names, 'betta');
M_.param_names_tex = char(M_.param_names_tex, 'betta');
M_.param_names_long = char(M_.param_names_long, 'betta');
M_.param_names = char(M_.param_names, 'Phi');
M_.param_names_tex = char(M_.param_names_tex, 'Phi');
M_.param_names_long = char(M_.param_names_long, 'Phi');
M_.param_names = char(M_.param_names, 'phipar');
M_.param_names_tex = char(M_.param_names_tex, 'phipar');
M_.param_names_long = char(M_.param_names_long, 'phipar');
M_.param_names = char(M_.param_names, 'sigma_x');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_x');
M_.param_names_long = char(M_.param_names_long, 'sigma_x');
M_.param_names = char(M_.param_names, 'D_bar');
M_.param_names_tex = char(M_.param_names_tex, 'D\_bar');
M_.param_names_long = char(M_.param_names_long, 'D_bar');
M_.param_names = char(M_.param_names, 'thetheta');
M_.param_names_tex = char(M_.param_names_tex, 'thetheta');
M_.param_names_long = char(M_.param_names_long, 'thetheta');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, 'eta');
M_.param_names_long = char(M_.param_names_long, 'eta');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 21;
M_.param_nbr = 20;
M_.orig_endo_nbr = 19;
M_.aux_vars(1).endo_index = 20;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 15;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(2).endo_index = 21;
M_.aux_vars(2).type = 1;
M_.aux_vars(2).orig_index = 11;
M_.aux_vars(2).orig_lead_lag = -1;
M_.predetermined_variables = [ 6 7 ];
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 0;
erase_compiled_function('Born_Pfeifer_RM_Comment_static');
erase_compiled_function('Born_Pfeifer_RM_Comment_dynamic');
M_.orig_eq_nbr = 19;
M_.eq_nbr = 21;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 1 13 0;
 2 14 0;
 3 15 0;
 4 16 0;
 5 17 0;
 6 18 0;
 7 19 0;
 0 20 34;
 0 21 0;
 0 22 0;
 8 23 35;
 9 24 36;
 0 25 37;
 0 26 0;
 10 27 0;
 0 28 0;
 0 29 0;
 0 30 0;
 0 31 0;
 11 32 0;
 12 33 0;]';
M_.nstatic = 7;
M_.nfwrd   = 2;
M_.npred   = 10;
M_.nboth   = 2;
M_.nsfwrd   = 4;
M_.nspred   = 12;
M_.ndynamic   = 14;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:5];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(21, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(20, 1);
M_.NNZDerivatives = [78; 112; 296];
replications=10000;
estimation_replications=200;
end_save_string='replication';
M_.params( 6 ) = 0.95;
rho_eps_tb = M_.params( 6 );
M_.params( 7 ) = (-8.06);
sigma_tb_bar = M_.params( 7 );
M_.params( 8 ) = 0.94;
rho_sigma_tb = M_.params( 8 );
M_.params( 9 ) = 0.13;
eta_tb = M_.params( 9 );
M_.params( 12 ) = 5;
nu = M_.params( 12 );
M_.params( 20 ) = 1000;
eta = M_.params( 20 );
M_.params( 10 ) = 0.014;
delta = M_.params( 10 );
M_.params( 11 ) = 0.32;
alppha = M_.params( 11 );
M_.params( 13 ) = 0.95;
rho_x = M_.params( 13 );
country_string='Argentina';
M_.params( 2 ) = 0.97;
rho_eps_r = M_.params( 2 );
M_.params( 3 ) = (-5.71);
sigma_r_bar = M_.params( 3 );
M_.params( 4 ) = 0.94;
rho_sigma_r = M_.params( 4 );
M_.params( 5 ) = 0.46;
eta_r = M_.params( 5 );
M_.params( 1 ) = (-3.912023005428146);
r_bar = M_.params( 1 );
M_.params( 14 ) = 1/(1+exp(M_.params(1)));
betta = M_.params( 14 );
M_.params( 15 ) = 0.001;
Phi = M_.params( 15 );
M_.params( 18 ) = 4;
D_bar = M_.params( 18 );
M_.params( 16 ) = 95;
phipar = M_.params( 16 );
M_.params( 17 ) = (-4.199705077879927);
sigma_x = M_.params( 17 );
M_.params( 19 ) = 1;
thetheta = M_.params( 19 );
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 2 ) = M_.params(7);
oo_.steady_state( 1 ) = M_.params(3);
oo_.steady_state( 3 ) = 0;
oo_.steady_state( 4 ) = 0;
oo_.steady_state( 6 ) = M_.params(18);
oo_.steady_state( 9 ) = 0.8779486025329908;
oo_.steady_state( 7 ) = 3.293280327636415;
oo_.steady_state( 8 ) = (-4.389743012664954);
oo_.steady_state( 10 ) = (-0.0037203652717462993);
oo_.steady_state( 13 ) = (-4.389743012664954);
oo_.steady_state( 12 ) = (-0.9754176217303792);
oo_.steady_state( 11 ) = 1.0513198564588924;
oo_.steady_state( 14 ) = exp(M_.params(1));
oo_.steady_state( 15 ) = exp(oo_.steady_state(11))-exp(oo_.steady_state(9))-exp(oo_.steady_state(12));
oo_.steady_state( 16 ) = oo_.steady_state(15)/exp(oo_.steady_state(11));
oo_.steady_state( 19 ) = oo_.steady_state(16);
oo_.steady_state( 17 ) = 0;
oo_.steady_state( 18 ) = 0;
oo_.steady_state(20)=oo_.steady_state(15);
oo_.steady_state(21)=oo_.steady_state(11);
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (1)^2;
M_.Sigma_e(3, 3) = (1)^2;
M_.Sigma_e(4, 4) = (1)^2;
M_.Sigma_e(5, 5) = (1)^2;
options_.solve_tolf=1E-12;
options_.solve_algo = 3;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.k_order_solver = 1;
options_.irf = 0;
options_.nofunctions = 1;
options_.order = 3;
options_.periods = 0;
options_.pruning = 1;
var_list_ = char();
info = stoch_simul(var_list_);
npts=96;
burnin=4000; 
shocks_mat_with_zeros=zeros(burnin,M_.exo_nbr); 
out_noshock = simult_FGRU(oo_.dr.ys,oo_.dr,shocks_mat_with_zeros,options_.order,zeros(size(oo_.dr.ys)),zeros(M_.exo_nbr,1)); 
log_deviations_SS_noshock=out_noshock-oo_.dr.ys*ones(1,burnin+M_.maximum_lag); 
ergodicmean_no_shocks=out_noshock(:,end); 
nx_y_EMAS=ergodicmean_no_shocks(strmatch('NX_Y',M_.endo_names,'exact'),1); 
out_withshock=NaN(M_.endo_nbr,npts,replications);
winsorizing_dummy=1; 
[shock_mat]=generate_FGRU_shocks(replications,winsorizing_dummy);
skipline();
for ii=1:replications
if ii==1
[y_, y1st]= simult_FGRU(ergodicmean_no_shocks,oo_.dr,shock_mat(1:end-1,:,ii),options_.order,zeros(size(oo_.dr.ys)),zeros(M_.exo_nbr,1)); 
else
u_1_start=shock_mat(end,:,ii-1); 
[y_, y1st]= simult_FGRU(ergodicmean_no_shocks,oo_.dr,shock_mat(1:end-1,:,ii),options_.order,y1st(:,end),u_1_start');        
end
out_withshock(:,:,ii) =y_; 
if mod(ii,50)==0
fprintf('%d out of %d replications done.\n',ii,replications);
end    
end
moments_emp(1,1)=4.77; 
moments_emp(2,1)=1.31; 
moments_emp(3,1)=3.81; 
moments_emp(4,1)=39.33/100; 
moments_emp(5,1)=-0.76; 
moments_emp(6,1)=moments_emp(4,1);
moments_emp(7,1)=moments_emp(5,1);
moments_emp(8,1)=1.78; 
argentina = [2016.467561	2095.869247	2137.676896	2166.951094	2175.798117	2242.036534	2239.864023	2285.238574	2246.511413	2151.566347	2136.151074	2145.778626	2232.466727	2287.22935	2337.615837	2383.442625	2441.261108	2477.999896	2550.86982	2570.334379	2591.23162	2630.790938	2607.875573	2545.079724	2500.885579	2457.383581	2440.436286	2487.918125	2499.957636	2435.335604	2424.920743	2442.370239	2445.075581	2413.789978	2301.054384	2169.392728	2043.696194	2142.344359	2131.246469	2168.339259	2216.773348	2319.914265	2360.289715	2428.737136	2483.616853	2496.180543	2560.028872
1605.963844	1685.023459	1713.336044	1729.684839	1768.561576	1817.17525	1809.925398	1808.079891	1772.14507	1708.586507	1684.499721	1700.580324	1757.596683	1767.47444	1837.056912	1874.933674	1913.167457	1942.197719	2021.976158	2037.753747	2011.134508	2073.05066	2069.126142	2034.342373	2009.718836	2017.867655	1992.804511	2015.777775	2007.448208	1970.949082	1952.963029	1951.051781	1983.315394	1949.333817	1825.147839	1735.471017	1598.021139	1489.154227	1466.980897	1477.756631	1527.103842	1670.035294	1716.200903	1740.409184	1747.271476	1795.925268	1823.679464
440.401957	470.1074034	498.9707866	506.4000496	500.3671204	512.1548825	510.90428	536.5915389	510.0848211	426.5299916	460.499141	462.3868639	490.7800217	525.7711258	529.1684184	531.3441593	564.4102345	596.0305228	605.1044022	615.5751767	652.28283	638.1696163	617.2442759	576.7648241	533.2269932	494.9932933	503.8938121	512.8872207	517.1609677	500.2337674	484.6050151	485.5896064	482.025197	472.3574426	413.7977432	327.912866	186.8928758	307.9665196	248.4189732	294.745173	320.2710351	374.5377063	382.5689289	455.8055897	508.3327661	508.7994571	545.9706644
-25.53093131	-66.2630349	-68.60715319	-73.09687997	-88.05088558	-93.56859263	-75.11680056	-61.2627784	-33.8868488	8.666970808	-3.069221696	-14.06030091	-15.87221991	-17.3729521	-20.79617005	-16.81735279	-42.37149796	-67.6592032	-70.371787	-75.88774685	-82.21457327	-79.15282628	-76.33406291	-63.6779483	-50.27843905	-46.52274761	-59.62486371	-42.71847035	-27.96263341	-24.61147658	-21.62606656	2.287599415	-15.54782754	-0.025148149	54.26939716	103.9272826	247.9283239	359.1558529	412.1323747	397.6816383	354.1510176	291.8875888	259.1683081	230.8455176	210.5368151	214.8534078	186.8694046
2020.834869	2088.867827	2143.699678	2162.988008	2180.877811	2235.76154	2245.712878	2283.408651	2248.343042	2143.783469	2141.92964	2148.906887	2232.504485	2275.872614	2345.42916	2389.460481	2435.206193	2470.569039	2556.708774	2577.441177	2581.202765	2632.06745	2610.036355	2547.429249	2492.66739	2466.3382	2437.073459	2485.946525	2496.646542	2446.571373	2415.941978	2438.928987	2449.792763	2421.666111	2293.214979	2167.311166	2032.842339	2156.276599	2127.532245	2170.183443	2201.525895	2336.46059	2357.93814	2427.060292	2466.141057	2519.578133	2556.519533] ;
[yt,yd] = hpfilter(log(argentina(1,:)'),1600) ;
[nx_y_t,nx_y_d] = hpfilter((argentina(4,:)./(argentina(1,:)))',1600) ;
moments_emp(9,1)=std(nx_y_d)*100;
moments_emp(10,1)=corr(nx_y_d,yd);
FGRU_moments(1,1)=5.30;
FGRU_moments(2,1)=1.54;
FGRU_moments(3,1)=3.90;
FGRU_moments(4,1)=NaN;
FGRU_moments(5,1)=NaN;
FGRU_moments(6,1)=0.48;
FGRU_moments(7,1)=0.05;
FGRU_moments(8,1)=1.75;
FGRU_moments(9:10,1)=NaN;
[moments_short]=get_quarterly_moments(out_withshock(:,:,1:200),ergodicmean_no_shocks,M_,oo_);
[moments_long, row_names, column_names, std_nx]=get_quarterly_moments(out_withshock,ergodicmean_no_shocks,M_,oo_);
stdevs=cumsum(std_nx)./cumsum(ones(replications,3));
fprintf('%25s\n',['Moments Original ',end_save_string])
fprintf('%25s \t %10s \t %10s \t %10s \t %10s \t %10s \t %10s \n','','Data','FGRU','Sum(200)','Sum(10000)','Mean(200)','Mean(10000)')
for ii=1:size(row_names,1)
fprintf('%25s \t %10.2f \t %10.2f \t %10.2f \t %10.2f \t %10.2f \t %10.2f\n',row_names{ii,1},moments_emp(ii,1),FGRU_moments(ii,1),moments_short(ii,1),moments_long(ii,1),moments_short(ii,2),moments_long(ii,2))
end
shock_mat=zeros(npts,M_.exo_nbr); 
shock_mat(1,strmatch('u_sigma_r',M_.exo_names,'exact'))=1; 
shock_string=deblank(M_.exo_names(strmatch('u_sigma_r',M_.exo_names,'exact'),:)); 
out_withshock=simult_FGRU(ergodicmean_no_shocks,oo_.dr,shock_mat,options_.order,zeros(size(oo_.dr.ys)),shock_mat(1,:)'); 
IRFS = (out_withshock - ergodicmean_no_shocks*ones(1,1+npts))*100; 
IRFS(strmatch('eps_r',M_.endo_names,'exact'),:)=12*100*100*(out_withshock(strmatch('eps_r',M_.endo_names,'exact'),:)-ergodicmean_no_shocks(strmatch('eps_r',M_.endo_names,'exact'))); 
IRFS(strmatch('eps_tb',M_.endo_names,'exact'),:)=12*100*100*(out_withshock(strmatch('eps_tb',M_.endo_names,'exact'),:)-ergodicmean_no_shocks(strmatch('eps_tb',M_.endo_names,'exact'))); 
IRFS(strmatch('r',M_.endo_names,'exact'),:)=12*100*100*(out_withshock(strmatch('r',M_.endo_names,'exact'),:)-ergodicmean_no_shocks(strmatch('r',M_.endo_names,'exact'))); 
IRFS(strmatch('D',M_.endo_names,'exact'),:)=IRFS(strmatch('D',M_.endo_names,'exact'),:)/(ergodicmean_no_shocks(strmatch('D',M_.endo_names,'exact'))); 
plot_vars={'C';'I';'Y';'H';'eps_r';'D'};
plot_vars_heading={'Consumption';'Investment';'Output';'Hours';'Interest Rate Spread';'Debt'};
n_quarters=floor(npts/3);
for ii=1:n_quarters
IRFS_quarterly(:,ii)=mean(IRFS(:,1+(ii-1)*3+1:1+ii*3),2); 
IRFS_quarterly_FGRU(:,ii)=sum(IRFS(:,1+(ii-1)*3+1:1+ii*3),2); 
end
IRFS_quarterly_FGRU(strmatch('r',M_.endo_names,'exact'),:)=IRFS_quarterly_FGRU(strmatch('r',M_.endo_names,'exact'),:)/3;
IRFS_quarterly_FGRU(strmatch('eps_r',M_.endo_names,'exact'),:)=IRFS_quarterly_FGRU(strmatch('eps_r',M_.endo_names,'exact'),:)/3;
IRFS_quarterly_FGRU(strmatch('eps_tb',M_.endo_names,'exact'),:)=IRFS_quarterly_FGRU(strmatch('eps_tb',M_.endo_names,'exact'),:)/3;
IRFS_quarterly_FGRU(strmatch('D',M_.endo_names,'exact'),:)=IRFS_quarterly_FGRU(strmatch('D',M_.endo_names,'exact'),:)/3;
figure('name','Comparison FGRU IRFS')
for ii=1:6
subplot(3,2,ii)
IRF_plot=IRFS_quarterly(strmatch(plot_vars(ii,:),M_.endo_names,'exact'),:);
IRF_plot_FGRU=IRFS_quarterly_FGRU(strmatch(plot_vars(ii,:),M_.endo_names,'exact'),:);
if max(abs(IRF_plot)) >1e-10
plot(1:n_quarters,IRF_plot,'b-',1:n_quarters,IRF_plot_FGRU,'r--','LineWidth',1.5)
else
plot(1:n_quarters,zeros(1,n_quarters),'b-',1:n_quarters,zeros(1,n_quarters),'r--','LineWidth',1.5) 
end
if ii==5
legend('Correct Aggregation','FGRU Aggregation')
end
title(plot_vars_heading(ii,:))
axis tight
grid on
hold on
plot((1:n_quarters),zeros(n_quarters),'r')
end
eval(['print -depsc2 IRF_comparison_',country_string,end_save_string])
for ii=1:n_quarters
IRFS = (out_withshock - ergodicmean_no_shocks*ones(1,1+npts))*100;
D_IRF_quarterly(:,ii)=mean(out_withshock(strmatch('D',M_.endo_names,'exact'),(ii-1)*3+1:ii*3));
Y_IRF_quarterly(:,ii)=sum(exp(out_withshock(strmatch('Y',M_.endo_names,'exact'),(ii-1)*3+1:ii*3))); 
NX_IRF_quarterly(:,ii)=sum(out_withshock(strmatch('NX',M_.endo_names,'exact'),(ii-1)*3+1:ii*3)); 
CA_IRF_quarterly(:,ii)=sum(out_withshock(strmatch('CA',M_.endo_names,'exact'),(ii-1)*3+1:ii*3)); 
end
figure
subplot(3,1,1)
D_Y_quarterly_mean=ergodicmean_no_shocks(strmatch('D',M_.endo_names,'exact'),:)/(3*exp(ergodicmean_no_shocks(strmatch('Y',M_.endo_names,'exact'),:)))*100; 
D_Y_IRF=D_IRF_quarterly./Y_IRF_quarterly*100; 
plot(1:n_quarters,D_Y_IRF,'b-',1:n_quarters,D_Y_quarterly_mean*ones(1,n_quarters),'r--','LineWidth',1.5)
title('D/Y','FontSize',14)
axis tight
set(gca,'FontSize',12)
subplot(3,1,2)
CA_Y_IRF_quarterly=CA_IRF_quarterly./Y_IRF_quarterly*100;
plot(1:n_quarters,CA_Y_IRF_quarterly,1:n_quarters,zeros(1,n_quarters),'r--','LineWidth',1.5)
title('CA/Y','FontSize',14)
set(gca,'FontSize',12)
axis tight
subplot(3,1,3)
NX_Y_quarterly_mean=ergodicmean_no_shocks(strmatch('NX',M_.endo_names,'exact'),:)/exp(ergodicmean_no_shocks(strmatch('Y',M_.endo_names,'exact'),:))*100;
NX_Y_percent_IRF_quarterly=NX_IRF_quarterly./Y_IRF_quarterly*100-NX_Y_quarterly_mean;
plot(1:n_quarters,NX_Y_percent_IRF_quarterly,1:n_quarters,zeros(1,n_quarters),'r--','LineWidth',1.5)
title('NX/Y','FontSize',14)
axis tight
set(gca,'FontSize',12)
eval(['print -depsc2 Current_Account',country_string,end_save_string])
clear  out_withshock shock_mat out_noshock winsorizing temp log_deviations_SS_noshock; 
save([country_string,'_',end_save_string]); 
save('Born_Pfeifer_RM_Comment_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Born_Pfeifer_RM_Comment_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Born_Pfeifer_RM_Comment_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Born_Pfeifer_RM_Comment_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Born_Pfeifer_RM_Comment_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Born_Pfeifer_RM_Comment_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Born_Pfeifer_RM_Comment_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
