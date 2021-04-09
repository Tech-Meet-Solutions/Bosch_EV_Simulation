brake_front = (-200:-10:-300).*ones(11,11);
brake_rear = ((-50:-10:-150).*ones(11,11))';

for i=1:11
    for j=1:11
        brakef = brake_front(i,j);
        braker = brake_rear(i,j);
        output = sim('Model_1_Braking.slx', 'ReturnWorkspaceOutputs', 'on');
        braking_dist(i,j) = output.brake_dist;
    end
end