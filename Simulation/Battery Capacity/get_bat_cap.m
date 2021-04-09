function [bat_cap, en_req_1km] = get_bat_cap(tau, w, t, inv_eff, mot_eff)

P_inp = get_inv_inp_power(tau, w, inv_eff, mot_eff);

V_nom = 48*sqrt(3);

i_inp = P_inp/V_nom;

%n_bat_s = 23;
n_bat_p = 12;

P_bat_out = P_inp/n_bat_p;
i_bat_out = i_inp/n_bat_p;

bat_en_eff = get_bat_en_eff(i_bat_out);

%i_bat_cons = n_bat_p*i_bat_out./bat_en_eff(i_bat_out);

P_bat_cons = n_bat_p*P_bat_out./bat_en_eff;

en_req_1c = trapz(t, P_bat_cons);

range = 100;
c1_dist = 7.8;
nc = range/c1_dist;

bat_cap = nc*en_req_1c/(1000*3600);

en_req_1km = bat_cap*1000/range;

end