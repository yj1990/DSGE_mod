function[ys,check]=Ghironi_Melitz_2005_steadystate(ys,exo)    
% function[ys,check]=Ghironi_Melitz_2005_steadystate(ys,exo) 
% computes the steady state of the model of Ghironi and Melitz (2005)
% a numerical solver is used in order to compute the steady state
%% Inputs
%   - ys:  vector of initial values for the steady state of the endogenous
%          variables (useful when estimating the model)
%   - exo: vector of exogenous variables/parameters
%
%% Output:
%   - ys:    vector of steady state values of the endogenous variables
%   - check: scalar;  0 if steady state computation worked 
%                     1 if not

% Copyright (C) 2017 William Gatt
%               2018 Johannes Pfeifer and Lucas Radke
% 
%  This is free software: you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation, either version 3 of the License, or
%  (at your option) any later version.
% 
%  It is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
% 
%  For a copy of the GNU General Public License,
%  see <http://www.gnu.org/licenses/>.

%% Steady state model

global M_ options_

% assign name to parameters
nparams=M_.param_nbr;   %number of parameters
for i=1:nparams
    paramname=deblank(M_.param_names(i,:));
    eval([ paramname ' = M_.params(' int2str(i) ');']);
end

% initialise output for 'check'
check=0;

%%% STEADY STATE EQUATIONS 
    fx      =   fx_share*(1-betaa*(1-delta))/(betaa*(1-delta))*fe;
    fx_     =   fx_share*(1-betaa*(1-delta))/(betaa*(1-delta))*fe_;

    %   (based on the Appendix of Ghironi and Melitz (2005), available at https://scholar.harvard.edu/melitz/publications)

    Q           = 1;
    Qtilde      = 1;
    Z           = 1;
    Z_          = 1;
    
% solve for the steady state of ztildex and ztildex_    
    xi_1    =   ((tau*zmin)^(theta-1))*(k/(k-(theta-1)))^2;
    xi_2    =   (zmin^k)*((k/(k-(theta-1)))^(k/(theta-1)))*((theta-1)/(k-(theta-1)));
    xi_3    =   ((1-(1-delta)*betaa)/((1-delta)*betaa))*fe/fx;

    solv_options = optimoptions('fsolve','Display','None');  
    initval  = 0.5;

    if ~user_has_matlab_license('optimization_toolbox')
        [ztildexss,rc] = csolve(@(ztildex) xi_1*(ztildex^(1-theta))+xi_2*(ztildex^(-k))-xi_3,initval,[],1e-6,1000)
    else
        ztildexss = fsolve(@(ztildex) xi_1*(ztildex^(1-theta))+xi_2*(ztildex^(-k))-xi_3,...
              initval,solv_options);
    end
    if xi_1*(ztildexss^(1-theta))+xi_2*(ztildexss^(-k))-xi_3 < 1e-5
        ztildex_ss = ztildexss;
    else fprintf('Error - ztildex_ss not solved for!\n\n');
        ztildex_ss = NaN;
        check=1;
        return
    end
    
    
    ztildex     = ztildex_ss;
    ztildex_    = ztildex_ss;   %symmetry of the steady state ensures: ztildex_ss=ztildex_ss_
    vvv         = (k/(k-(theta-1)))^(1/(theta-1));
    K           = ((tau*vvv*zmin/ztildex)^(theta-1))+((zmin/ztildex)^k)*(((k/(k-(theta-1)))^(k/(theta-1))));
    K_          = ((tau*vvv*zmin_/ztildex_)^(theta-1))+((zmin_/ztildex_)^k)*(((k/(k-(theta-1)))^(k/(theta-1))));
    zx          = ztildex/vvv;
    zx_         = ztildex_/vvv;
    ztilded     = vvv*zmin;
    ztilded_    = vvv*zmin_;
    r           = (1/betaa)-1;
    r_          = (1/betaa)-1;
    rhotildex   = ((((theta*k)/(k-(theta-1)))*fx - K^(-1)*fe*((1-betaa)/((1-delta)*betaa)))/L)^(1/(1-theta));
    rhotildex_  = ((((theta*k)/(k-(theta-1)))*fx_ - K_^(-1)*fe_*((1-betaa)/((1-delta)*betaa)))/L_)^(1/(1-theta));
    rhotilded   = (ztildex/(tau*ztilded))*rhotildex;
    rhotilded_  = (ztildex_/(tau*ztilded_))*rhotildex_;
    w           = rhotildex*((theta-1)/(theta*tau))*ztildex;
    w_          = rhotildex_*((theta-1)/(theta*tau))*ztildex_;
    TOL         = (w_/Z_)/(w/Z);
    Nd          = K^(-1)*rhotildex^(theta-1);
    Nd_         = K_^(-1)*rhotildex_^(theta-1);
    Nx          = ((zmin/ztildex)^(k))*((k/(k-(theta-1)))^(k/(theta-1)))*Nd;
    Nx_         = ((zmin_/ztildex_)^(k))*((k/(k-(theta-1)))^(k/(theta-1)))*Nd_;
    Ne          = (delta/(1-delta))*Nd;
    Ne_         = (delta/(1-delta))*Nd_;
    vtilde      = w*fe;
    vtilde_     = w_*fe_;
    C           = w*(L + Nd*fe*((1-betaa)/((1-delta)*betaa)));
    C_          = w_*(L_ + Nd_*fe_*((1-betaa)/((1-delta)*betaa)));
    dtilded     = (1/theta)*(rhotilded^(1-theta))*C;
    dtilded_    = (1/theta)*(rhotilded_^(1-theta))*C_;
    dtildex     = (1/theta)*(rhotildex^(1-theta))*C - w*fx;
    dtildex_    = (1/theta)*(rhotildex_^(1-theta))*C_ - w_*fx_;
    dtilde      = dtilded + (Nx/Nd)*dtildex;
    dtilde_     = dtilded_ + (Nx_/Nd_)*dtildex_;
    
%%% end of steady state model equations

for iter = 1:length(M_.params) %update parameters set in the file
  eval([ 'M_.params(' num2str(iter) ') = ' M_.param_names(iter,:) ';' ])
end

NumberOfEndogenousVariables = M_.orig_endo_nbr; %auxiliary variables are set automatically
for ii = 1:NumberOfEndogenousVariables
  varname = deblank(M_.endo_names(ii,:));
  eval(['ys(' int2str(ii) ') = ' varname ';']);
end

    
end