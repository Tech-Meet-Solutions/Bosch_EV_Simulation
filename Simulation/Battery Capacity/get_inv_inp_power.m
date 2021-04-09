function P_inp_inst = get_inv_inp_power(tau, w, inv_eff, mot_eff)

P_inst = get_mot_inp_power(tau, w, mot_eff);

eta = interp1(inv_eff.w, inv_eff.eff, w, 'linear', 'extrap');
P_inp_inst = P_inst;

%zero_eff_ind = eta == 0;
non_zero_eff_ind = find(eta);

%P_inp_inst(zero_eff_ind) = 0;

P_inp_inst(non_zero_eff_ind) = P_inp_inst(non_zero_eff_ind)./eta(non_zero_eff_ind);

end
