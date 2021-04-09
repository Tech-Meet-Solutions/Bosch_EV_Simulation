% Key parameters for bev_motor_cooling.slx
% Copyright 2021 The MathWorks, Inc.

bev.motor.Tmeas          = 50;     % degC
bev.motor.thermal_mass   = 8350/4;   % J/K
bev.motor.initT          = 90;    % degC

bev.motor.qcond.area     = 0.75/4;   % m^2
bev.motor.qcond.thick    = 0.135/2;  % m winding thickness
bev.motor.qcond.th_cond  = 392;    % W/(m*K)

bev.casing.qconv.area    = 0.75/4;   % m^2
bev.casing.qconv.th_conv = 1/(1/5 + 1/(240/0.07));     % W/(m^2 * K) convection + case in series
                                   
bev.casing.initT         = 90;    % degC
bev.casing.mass          = 150*0.9/7;   % kg
bev.casing.sp_heat       = 900;    % J/kg/K

bev.Tambient             = 45;    % degC