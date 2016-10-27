function f = function1b(t,y)

%equations for predators and preys respectively
f = [
    y(1) * (1 - y(2)); 
    y(2) * (y(1) - 1)
];