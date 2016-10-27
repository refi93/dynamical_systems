function f = tanks(t, y, tank_area1, tank_area2, outlet_area1, outlet_area2, p1, p2, gain, gamma, u)

g = 9.81;
    
%differential equations for tank heights and flow
f = [
    (outlet_area2 * sqrt(2 * g) * y(2)^p2) / tank_area1 -  (outlet_area1 * sqrt(2 * g) * y(1)^p1) / tank_area1; % tank height 1
    y(3) / tank_area2 - (outlet_area2 * sqrt(2 * g) * y(2)^p2) / tank_area2; % tank height 2
    (-y(3) + gain * u) / gamma; % intake to second tank    
];