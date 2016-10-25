function f = bloodToxicConcentration(t, y, toxic_concentration, elimination_coef)

%differential equation for toxicity of blood
f = toxic_concentration - elimination_coef * y(1);