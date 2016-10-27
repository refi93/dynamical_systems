function f = tanks(t, y, tank1_area, tank2_area, outlet1_area, outlet2_area, p1, p2, gain, tau, u, tank1_max_height, tank2_max_height)

g = 981;

if (y(1) < 0.00001)
    y(1) = 0;
end

if (y(2) < 0.0001)
    y(2) = 0;
end

%differential equations for tank heights and flow
f = [
    (outlet2_area * sqrt(2 * g * y(2)^p2)) / tank1_area -  (outlet1_area * sqrt(2 * g * y(1)^p1)) / tank1_area; % tank height 1
    y(3) / tank2_area - (outlet2_area * sqrt(2 * g * y(2)^p2)) / tank2_area; % tank height 2
    (-y(3) + gain * u) / tau; % intake to second tank
];

% max tank height condition
f(1) = min(tank1_max_height - y(1), f(1));
f(2) = min(tank2_max_height - y(2), f(2));