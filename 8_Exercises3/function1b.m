function f = function1b(t,y)

%equations for predators and preys respectively
f = [
    y(2) - y(1) * abs(y(1)); 
    1 - y(1)
];