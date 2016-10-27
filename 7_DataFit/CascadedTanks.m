x = linspace(0.1,100);
y = log(x);

p = polyfit(x,y,7);
p
y_fitted = polyval(p, x);

figure; hold on;
plot(x, y_fitted, 'red');
plot(x, y, 'blue');

title('sin(x) fitted by polynomial');
xlabel('x');
ylabel('y');
