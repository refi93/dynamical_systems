function f = cellCountVerhulst(t, y, r, k, a)

%differential equation for cellCount (Verhulst's model)
f = r * y(1) * (1 - 1/k * y(1));