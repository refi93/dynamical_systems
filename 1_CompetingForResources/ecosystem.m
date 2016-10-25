% y(1) -> population of first specie - they die naturally (gamma1) and they die also
% depending on the overall populations, because they compete for resources
% between themselves and the other specie (delta1 * (y(1) + y(2)) * y(1))
% y(2) -> population of second specie - same as first specie

function f = ecosystem(t,y)

lambda1 = 3;
lambda2 = 2;
gamma1 = 1;
gamma2 = 1;
delta1 = 1;
delta2 = 1;

% equations for specie 1 and specie 2 respectively
f = [
    (lambda1 - gamma1) * y(1) - delta1 * (y(1) + y(2)) * y(1);
    (lambda2 - gamma2) * y(2) - delta2 * (y(1) + y(2)) * y(2)
];