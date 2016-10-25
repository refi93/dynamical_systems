function f = fluidLevel(t,y)

u = 1; % assume constant inflow (m3/s)
g = 9.81; % gravitational constant (m/s2)
A = 1; % recipient cut size (m2)
a = 1 / sqrt(2*g); % recipient valve cut size (m2)

% outflow equation: q(t) = a * sqrt(2g) * sqrt(h(t))
% let's express the differential equation for the fluid level h(t) -> our y

%differential equation for fluid level
f =(-(a * sqrt(2*g)) / A) * sqrt(y(1)) + 1/A * u;