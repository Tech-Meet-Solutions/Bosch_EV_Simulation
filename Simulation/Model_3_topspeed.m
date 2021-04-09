P = (5500:100:6500);
Tmax = 26;
topspeed = zeros(1,11);
GR = 6.5;

for i=1:11
   Pmax = P(i);
   output = sim('Model_3.slx', 'ReturnWorkspaceOutputs', 'on');
   topspeed(i) = (output.vx)*18/5;
end