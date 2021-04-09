function bat_en_eff = get_bat_en_eff(i_bat_out)

i_exp = [3 5 10 15 20 25 30];
en_eff_exp = [0.95 0.94 0.91 0.88 0.85 0.81 0.76];

bat_en_eff = interp1(i_exp, en_eff_exp, i_bat_out, 'linear', 'extrap');

end