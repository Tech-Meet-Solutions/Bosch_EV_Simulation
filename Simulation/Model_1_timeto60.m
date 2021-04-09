P = (5500:100:6500).*ones(11,11);
T = ((20:1:30).*ones(11,11))';
timeto60 = zeros(11,11);
GR = 6.5;
speed = 60;

for i=1:11
    for j=1:11
        Pmax = P(i,j);
        Tmax = T(i,j);
        output = sim('Model_1.slx', 'ReturnWorkspaceOutputs', 'on');
        timeto60(i,j) = output.tout(length(output.tout));
    end
end