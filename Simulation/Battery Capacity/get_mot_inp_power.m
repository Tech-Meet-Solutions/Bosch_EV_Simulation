function P_mot_inst = get_mot_inp_power(tau, w, mot_eff)

P_inst = tau.*w;

eta = interp2(mot_eff.tau, mot_eff.w, mot_eff.eff, tau, w, 'linear', 1);

P_mot_inst = P_inst;

%zero_eff_ind = eta == 0;
non_zero_eff_ind = find(eta);
nan_eff_ind = isnan(eta);

%P_mot_inst(zero_eff_ind) = 0;

P_mot_inst(non_zero_eff_ind) = P_mot_inst(non_zero_eff_ind)./eta(non_zero_eff_ind);
%P_mot_inst(non_zero_eff_ind) = P_mot_inst(non_zero_eff_ind)/0.8;

P_mot_inst(nan_eff_ind) = P_inst(nan_eff_ind);

end