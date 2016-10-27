function f = function1a(t,y)

%equations for predators and preys respectively
f = [
    y(2); 
    -y(1) + y(2) * (1 - y(2) * y(2))
];