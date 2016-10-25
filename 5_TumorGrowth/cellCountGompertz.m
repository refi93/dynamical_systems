function f = cellCountGompertz(t, y, r, k, a)

% differential equation for cellCount (Gompertz's model)
f = r * exp(1)^(-a * t) * y(1);