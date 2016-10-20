function f = ecosystem(t,y)

lambda1 = 3;
lambda2 = 2;
gamma1 = 1;
gamma2 = 1;
delta1 = 1;
delta2 = 1;

f = [(lambda1 - gamma1) * y(1) - delta1 * (y(1) + y(2)) * y(1); (lambda2 - gamma2) * y(2) - delta2 * (y(1) + y(2)) * y(2)];