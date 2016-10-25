function f = bloodToxicConcentration(t, y, toxic_concentration, elimination_coef)

%differential equation for fluid level
f = toxic_concentration - elimination_coef * y(1);