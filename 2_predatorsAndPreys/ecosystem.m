% y(1) -> population of predators - they die naturally (gamma1), but they can die less by feeding
% on the preys (-alpha1 * y(2))
% y(2) -> population of preys - they die naturally (gamma2) and by the killing of
% predators (alpha2 * y(1))
% lambda1, lambda2 are birth rates of respective species


function f = ecosystem(t,y)

lambda1 = 1;
lambda2 = 2;
gamma1 = 2;
gamma2 = 1;
alpha1 = 1;
alpha2 = 1;

%equations for predators and preys respectively
f = [
    (lambda1 - gamma1) * y(1) + alpha1 * y(2) * y(1); 
    (lambda2 - gamma2) * y(2) - alpha2 * y(1) * y(2)
];