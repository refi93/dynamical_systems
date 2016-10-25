N1_init = 0.1;
N2_init = 2;

%simulate the "competing for resources" ecosystem from year 1 to year 10 departing from
%initial populations N1_init and N2_init
[t,y] = ode23(@ecosystem,[0 10],[N1_init; N2_init]);

plot(t,y(:,1),'-o',t,y(:,2),'-o')
title('Ecosystem simulation with ODE23');
xlabel('Time t');
ylabel('Population in thousands');
legend('N1','N2')