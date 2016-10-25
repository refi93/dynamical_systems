initial_level_1 = 0;
initial_level_2 = 2;

[t_1,y_1] = ode23(@fluidLevel,[0 10], initial_level_1);
[t_2,y_2] = ode23(@fluidLevel,[0 10], initial_level_2);

plot(t_1,y_1(:,1),'--',t_2,y_2(:,1),'-');
title('Flow system model with ODE23');
xlabel('Time t');
ylabel('Fluid level');
