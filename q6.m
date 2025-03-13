%narmin aliyeva 2177269

circ = -2*pi; %clockwise
step = circ/50;
angles = [0:step:3*circ];
up = -angles;
sth = sin(angles);
cth = cos(angles);
r = 1; % length of rod
p = [r*cth' r*sth' up'];

% to show coord.s of end pt of the rod in the world frame
plot1 = plot2(p);
plot1.Color(4) = 0.7;

Cube = transl(0.95, 0, -0.05);
step_an = circ/20;
angles_an = [0:step_an:3*circ];
tw = Twist('R', [0 0 1], [0 0 0], -1);
tranimate( @(theta) tw.T(theta) * Cube, angles_an, ...
'length', 0.1, 'retain', 'rgb', 'notext');